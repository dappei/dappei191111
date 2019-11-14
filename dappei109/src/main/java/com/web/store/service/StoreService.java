package com.web.store.service;

import java.util.List;

import com.web.store.model.CategoryBean;
import com.web.store.model.ProductBean;

public interface StoreService {
	//抓取所有產品
	List<ProductBean> getAllProducts();
		
	//查詢單筆產品
	public ProductBean getPrdouctById(int productId);
		
	//新增產品
	void addProduct(ProductBean product);
	CategoryBean getCategoryById(int companyId);
	List<CategoryBean> getCategoryList();
		
	//更新產品
	void updateProduct(ProductBean pbean);
		
	//產品上架、下架
	void openProduct(int productId);
	void closeProduct(int productId);
	List<ProductBean> getCloseProducts();
}
