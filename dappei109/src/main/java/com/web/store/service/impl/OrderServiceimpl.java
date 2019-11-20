package com.web.store.service.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web._init.ude.ProductStockException;
import com.web.store.dao.OrderDao;
import com.web.store.model.OrderProductItem;
import com.web.store.model.ProductOrderBean;
import com.web.store.service.OrderService;


@Service
public class OrderServiceimpl implements OrderService {
	
	SessionFactory factory;
	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	private OrderDao odao;
	@Autowired
	public void setOdao(OrderDao odao) {
		this.odao = odao;
	}
	@Transactional
	@Override
	public List<ProductOrderBean> getAllOrders() {
		return odao.getAllOrders();
	}
	@Transactional
	@Override
	public List<ProductOrderBean> getMemberOrders(String memberId) {
		return odao.getMemberOrders(memberId);
	}
	@Transactional
	@Override
	public List<ProductOrderBean> getMemberCancelOrders(String memberId) {
		return odao.getMemberCancelOrders(memberId);
	}
	@Transactional
	@Override
	public ProductOrderBean getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}
	//將訂單存入資料庫
	@Transactional
	@Override
	public void persistOrder(ProductOrderBean pob) {
		checkStock(pob);
		odao.insertOrder(pob);
	}
	//確認庫存並更新庫存數
	public void checkStock(ProductOrderBean pob) {
		Set<OrderProductItem> items = pob.getItems();
		for (OrderProductItem opi : items) {         
		Integer stock = 0;
		Session session = factory.getCurrentSession();
		String hql0 = "SELECT stock FROM ProductBean WHERE productId = :productId";
		String hql1 = "UPDATE ProductBean SET stock = stock - :orderAmount WHERE productId = :productId";
		stock = (Integer) session.createQuery(hql0)
								 .setParameter("productId", opi.getProductId())
								 .uniqueResult();
		if (stock == null) {
			stock = 0;
		}
		int stockLeft = stock - opi.getQuantity();
		if (stockLeft < 0) {
			throw new ProductStockException(
					"庫存數量不足: BookId: " + opi.getProductId() + ", 在庫量: " + stock + ", 訂購量: " 
					+ opi.getQuantity());
		}
		 session.createQuery(hql1)
				.setParameter("productId", opi.getProductId())
				.setParameter("orderAmount", opi.getQuantity())
				.executeUpdate();
		}
	}

}
