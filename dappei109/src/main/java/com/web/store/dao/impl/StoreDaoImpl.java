package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.StoreDao;
import com.web.store.model.StorecategoryBean;
import com.web.store.model.ProductBean;

@Repository
public class StoreDaoImpl implements StoreDao {

	SessionFactory factory;
	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	//查詢所有產品並指顯示未下架產品
	@Override
	@SuppressWarnings("unchecked")
	public List<ProductBean> getAllProducts() {
		String hql = "FROM ProductBean WHERE shelf = 1";
		Session session = factory.getCurrentSession();
		List<ProductBean> plist = new ArrayList<>();
		plist = session.createQuery(hql).list();
		return plist;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public long getRecordCounts() {
		long count = 0; // 必須使用 long 型態
        String hql = "SELECT count(*) FROM ProductBean";
        Session session = factory.getCurrentSession();
        List<Long> list = session.createQuery(hql).list();
        if (list.size() > 0) {
            count = list.get(0);
        }
        return count;
	}
	
	//查詢單筆產品
	@Override
	public ProductBean getPrdouctById(int productId) {
		Session session = factory.getCurrentSession();
		ProductBean pb = session.get(ProductBean.class, productId);
		return pb;
	}

	@Override
	public void addProduct(ProductBean product) {
		Session session = factory.getCurrentSession();
//		StorecategoryBean cb = getCategoryById(product.getCategory().getCategoryid());
//		product.setCategory(cb);
		session.save(product);		
	}

	@Override
	public StorecategoryBean getCategoryById(int category) {
		StorecategoryBean cb = null;
		Session session = factory.getCurrentSession();
		cb = session.get(StorecategoryBean.class, category);
		return cb;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<StorecategoryBean> getCategoryList() {
		String hql = "FROM StorecategoryBean";
		Session session = factory.getCurrentSession();
		List<StorecategoryBean> list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void updateProduct(ProductBean pbean) {
		if (pbean != null && pbean.getProductId() != null) 	{
			Session session = factory.getCurrentSession();;
			session.update(pbean);
		}
	}

	@Override
	public void openProduct(int productId) {
		String hql="Update ProductBean SET shelf = 1 where productId=:id";
		Session session = factory.getCurrentSession();
		session.createQuery(hql)
               .setParameter("id", productId)
               .executeUpdate();
	}

	@Override
	public void closeProduct(int productId) {
		String hql="Update ProductBean SET shelf = 0 where productId=:id";
		Session session = factory.getCurrentSession();
		session.createQuery(hql)
               .setParameter("id", productId)
               .executeUpdate();
	}
	
	//關閉產品
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getCloseProducts() {
		List<ProductBean> list = new ArrayList<ProductBean>();
		String hql="FROM ProductBean where shelf = 0";
		Session session=factory.getCurrentSession();	
		list = session.createQuery(hql).list();
		return list;
	}
	
	//將資料儲存
	@Override
	public void saveProduct(ProductBean product) {
		Session session = factory.getCurrentSession();
		session.save(product);
	}

}
