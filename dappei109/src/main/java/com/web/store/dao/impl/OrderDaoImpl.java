package com.web.store.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.OrderDao;
import com.web.store.model.ProductOrderBean;
@Repository
public class OrderDaoImpl implements OrderDao {
	
	SessionFactory factory;
	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductOrderBean> getAllOrders() {
		List<ProductOrderBean> list = null;
        String hql = "FROM ProductOrderBean";
        Session session = factory.getCurrentSession();
		
        list = session.createQuery(hql).list();
        return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductOrderBean> getMemberOrders(int memberId) {
		List<ProductOrderBean> list = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductOrderBean ob WHERE ob.memberId = :mid and cancelTag=1";
		list = session.createQuery(hql).setParameter("mid", memberId).list();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductOrderBean> getMemberCancelOrders(int memberId) {
		List<ProductOrderBean> list = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductOrderBean ob WHERE ob.memberId = :mid and cancelTag=0";
		list = session.createQuery(hql).setParameter("mid", memberId).list();
		return list;
	}

	@Override
	public ProductOrderBean getOrder(int orderNo) {
		ProductOrderBean pob = null;
        Session session = factory.getCurrentSession();
        pob = session.get(ProductOrderBean.class, orderNo);
        return pob;
	}

	@Override
	public void insertOrder(ProductOrderBean pob) {
		Session session = factory.getCurrentSession();
        session.save(pob);
	}
	

}
