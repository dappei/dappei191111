package com.web.store.dao;

import java.util.List;

import com.web.store.model.ProductOrderBean;

public interface OrderDao {
	List<ProductOrderBean> getAllOrders();
	
	List<ProductOrderBean> getMemberOrders(String memberId);
	
	List<ProductOrderBean> getMemberCancelOrders(String memberId);
	
	ProductOrderBean getOrder(int orderNo);
	
	void insertOrder(ProductOrderBean pob);

}
