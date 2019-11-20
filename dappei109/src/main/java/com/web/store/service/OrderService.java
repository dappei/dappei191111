package com.web.store.service;

import java.util.List;

import com.web.store.model.ProductOrderBean;

public interface OrderService {
	List<ProductOrderBean> getAllOrders();
	
	List<ProductOrderBean> getMemberOrders(int memberId);
	
	List<ProductOrderBean> getMemberCancelOrders(int memberId);
	
	ProductOrderBean getOrder(int orderNo);
	
	void persistOrder(ProductOrderBean pob);
}
