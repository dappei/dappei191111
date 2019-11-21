package com.web.store.dao;

import java.util.List;

import com.web.store.model.ProductOrderBean;

public interface OrderDao {
	List<ProductOrderBean> getAllOrders();
	
	List<ProductOrderBean> getMemberOrders(int memberId);
	
	List<ProductOrderBean> getMemberCancelOrders(int memberId);
	
	ProductOrderBean getOrder(int orderNo);
	
	void insertOrder(ProductOrderBean pob);

	void cancelProductOrder(Integer id);

}
