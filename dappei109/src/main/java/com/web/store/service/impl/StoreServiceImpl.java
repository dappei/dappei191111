package com.web.store.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.dao.StoreDao;
import com.web.store.model.ProductBean;
import com.web.store.model.StorecategoryBean;
import com.web.store.service.StoreService;
@Service
public class StoreServiceImpl implements StoreService {

	StoreDao dao;
	@Autowired
	public void setDao(StoreDao dao) {
		this.dao = dao;
	}
	
	@Transactional
	@Override
	public List<ProductBean> getAllProducts() {
		return dao.getAllProducts();
	}

	@Transactional
	@Override
	public ProductBean getPrdouctById(int productId) {
		return dao.getPrdouctById(productId);
	}

	@Transactional
	@Override
	public void addProduct(ProductBean product) {
		dao.addProduct(product);
	}

	@Transactional
	@Override
	public StorecategoryBean getCategoryById(int companyId) {
		return dao.getCategoryById(companyId);
	}

	@Transactional
	@Override
	public List<StorecategoryBean> getCategoryList() {
		return dao.getCategoryList();
	}

	@Transactional
	@Override
	public void updateProduct(ProductBean pbean) {
		dao.addProduct(pbean);
	}

	@Transactional
	@Override
	public void openProduct(int productId) {
		dao.openProduct(productId);
	}

	@Transactional
	@Override
	public void closeProduct(int productId) {
		dao.closeProduct(productId);
	}

	@Transactional
	@Override
	public List<ProductBean> getCloseProducts() {
		List<ProductBean> list = null;
		list = dao.getCloseProducts();
		return list;
	}

	@Transactional
	@Override
	public void saveProduct(ProductBean product) {
		dao.saveProduct(product);
	}

	@Transactional
	@Override
	public List<String> getStoreCategories() {
		return dao.getStoreCategories();
	}

	@Transactional
	@Override
	public List<ProductBean> getStoreByCategory(Integer storecategory) {
		return dao.getStoreByCategory(storecategory);
	}

	

}
