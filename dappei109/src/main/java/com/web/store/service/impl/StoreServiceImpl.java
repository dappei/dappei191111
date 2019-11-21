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
		List<ProductBean> list= null;
		list = dao.getAllProducts();
		return list;
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
	public StorecategoryBean getCategoryById(int categoryId) {
		return dao.getCategoryById(categoryId);
	}

	@Transactional
	@Override
	public List<StorecategoryBean> getCategoryList() {
		return dao.getCategoryList();
	}

	@Transactional
	@Override
	public void updateProduct(ProductBean pbean) {
		dao.updateProduct(pbean);
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

	@Override
	public void setPageNo(int pageNo) {
		dao.setPageNo(pageNo);
		
	}

	@Override
	public int getPageNo() {
		return dao.getPageNo();
	}
	
	@Transactional
	@Override
	public int getTotalPages() {
		int n = 0;
		n=dao.getTotalPages();
		return n;
	}

	@Override
	public long getRecordCounts() {
		return dao.getRecordCounts();
	}

	@Override
	public int getRecordsPerPage() {
		return dao.getRecordsPerPage();
	}

	@Override
	public void setRecordsPerPage(int recordsPerPage) {
		dao.setRecordsPerPage(recordsPerPage);	
	}

}
