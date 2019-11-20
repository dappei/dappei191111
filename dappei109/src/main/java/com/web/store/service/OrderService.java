package com.web.store.service;

import java.util.List;

import com.web.store.model.ProductOrderBean;

public interface OrderService {
	List<ProductOrderBean> getAllOrders();
	
	List<ProductOrderBean> getMemberOrders(String memberId);
	
	List<ProductOrderBean> getMemberCancelOrders(String memberId);
	
	ProductOrderBean getOrder(int orderNo);
	
	void persistOrder(ProductOrderBean pob);
}
