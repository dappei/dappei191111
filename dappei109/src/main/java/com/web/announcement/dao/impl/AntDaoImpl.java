package com.web.announcement.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.announcement.dao.AntDao;
import com.web.announcement.model.AntBean;

@Repository
public class AntDaoImpl implements AntDao {
	SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

//查詢多筆公告
	@SuppressWarnings("unchecked")
	@Override
	public List<AntBean> getAllAnnouncements() {
		String hql = "FROM AntBean";
		Session session = null;
		List<AntBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
//	@Override
//	public int getMaxAntId() {
//		String hql = "SELECT a.ANTID FROM AntBean a";
//		Session session = null;
//		int maxAntId = 0;
//		session = factory.getCurrentSession();
//		maxAntId = session.createQuery(hql).getMaxResults();
//		return maxAntId;
//	}
//查詢單筆公告
		@Transactional
		@Override
		public AntBean getAnnouncementById(int antid) {
		AntBean antbean = factory.getCurrentSession().get(AntBean.class, antid);
		return antbean;
		
		    }
	
//新增公告
    @Override
    public void  addAnnouncement(AntBean antbean){
//  Session session = factory.getCurrentSession();
//  session.save(antbean);
    factory.getCurrentSession().save(antbean);   	
    }
    
//刪除公告
    @Override
    public void removeAnnouncement(Integer antid){
    	AntBean antbean = (AntBean)factory.getCurrentSession().load(AntBean.class, antid);
    	if(null != antbean) {
    		factory.getCurrentSession().delete(antbean);
    	}
    }
	
//修改公告1
    @Override
    public void updateAnnouncement(AntBean antbean) {
    	 factory.getCurrentSession().update(antbean); 
    
    }
    
////修改公告2
//    @Override
//     public void updateAnnouncement(AntBean antbean) {
//    	AntBean ab = getAnnouncementById(antbean.getAntid());
//    	ab.setAnttime(antbean.getAnttime());
//    	ab.setAntcontent(antbean.getAntcontent());
//    	 factory.getCurrentSession().update(ab);
//    }
    
//儲存公告
    @Override
    public void updateAnt(AntBean antbean) {
    	 factory.getCurrentSession().update(antbean);
    }
    
    @SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories() {
		String hql = "SELECT DISTINCT b.category FROM AntBean b";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AntBean> getAntsByCategory(String category) {
		String hql = "FROM AntBean ab WHERE ab.category = :category";
		List<AntBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql)
					.setParameter("category", category)
					.getResultList();
		return list;
	}
//	
//	@Override
//	public List<BookBean> getAllProducts() {
//		String hql = "FROM BookBean";
//		Session session = null;
//		List<BookBean> list = new ArrayList<>();
//		session = factory.getCurrentSession();
//		list = session.createQuery(hql).getResultList();
//		return list;
//	}
//	
//	@SuppressWarnings("unused")
//	@Override
//	public void updateStock(int productId, int newQuantity) {
//		String hql = "UPDATE BookBean b SET b.stock = :stock WHERE bookId = :id";
//		Session session = factory.getCurrentSession();
//
//		int n = session.createQuery(hql).setParameter("stock", newQuantity).setParameter("id", productId)
//				.executeUpdate();
//	}
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<String> getAllCategories() {
//		String hql = "SELECT DISTINCT b.category FROM BookBean b";
//		Session session = factory.getCurrentSession();
//		List<String> list = new ArrayList<>();
//		list = session.createQuery(hql).getResultList();
//		return list;
//	}
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<BookBean> getProductsByCategory(String category) {
//		String hql = "FROM BookBean bb WHERE bb.category = :category";
//		List<BookBean> list = new ArrayList<>();
//		Session session = factory.getCurrentSession();
//		list = session.createQuery(hql).setParameter("category", category).getResultList();
//		return list;
//	}
//
//	@Override
//	public BookBean getProductById(int productId) {
//		Session session = factory.getCurrentSession();
//		BookBean bb = session.get(BookBean.class, productId);
//		if (bb == null)
//			throw new ProductNotFoundException("產品編號: " + productId + "找不到");
//		return bb;
//	}
//
//	@Override
//	public void addProduct(BookBean product) {
//		Session session = factory.getCurrentSession();
//		CompanyBean cb = getCompanyById(product.getCompanyId());
//		product.setCompanyBean(cb);
//		session.save(product);
//	}
//
//	@Override
//	public CompanyBean getCompanyById(int companyId) {
//		CompanyBean cb = null;
//		Session session = factory.getCurrentSession();
//		cb = session.get(CompanyBean.class, companyId);
//		return cb;
//	}
//
//	@Override
//	public List<CompanyBean> getCompanyList() {
//		String hql = "FROM CompanyBean";
//		Session session = factory.getCurrentSession();
//		List<CompanyBean> list = session.createQuery(hql).getResultList();
//		return list;
//	}

}
