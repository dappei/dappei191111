package com.web.store.service;

import java.util.List;

import com.web.store.model.StorecategoryBean;
import com.web.store.model.ProductBean;

public interface StoreService {
	//抓取所有產品
	List<ProductBean> getAllProducts();
		
	//查詢單筆產品
	public ProductBean getPrdouctById(int productId);
		
	//新增產品
	void addProduct(ProductBean product);
	StorecategoryBean getCategoryById(int companyId);
	List<StorecategoryBean> getCategoryList();
		
	//更新產品
	void updateProduct(ProductBean pbean);
		
	//產品上架、下架
	void openProduct(int productId);
	void closeProduct(int productId);
	List<ProductBean> getCloseProducts();
	
	//將資料儲存
	void saveProduct(ProductBean product);
}
