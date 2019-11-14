package com.web.announcement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.announcement.dao.AntDao;
import com.web.announcement.model.AntBean;
import com.web.announcement.service.AntService;



@Service
public class AntServiceImpl implements AntService {
	AntDao dao;
    
	@Autowired
	public void setDao(AntDao dao) {
		this.dao = dao;
	}
    
//查詢多筆公告
	@Transactional
	@Override
	public List<AntBean> getAllAnnouncements() {
		return dao.getAllAnnouncements();
	}
	
//	@Transactional
//	@Override
//	public int getMaxAntId() {		
//		return dao.getMaxAntId();
//	}
	
//查詢單筆公告
	@Transactional
	@Override
    public AntBean getAnnouncementById(int antid) {
        AntBean antbean = dao.getAnnouncementById(antid);
        return antbean;
    }
   
//新增公告
	@Transactional
	@Override
    public void addAnnouncement(AntBean antbean){
    dao.addAnnouncement(antbean);   	
    }
	
//刪除公告
	@Transactional
    @Override
    public void removeAnnouncement(Integer antid){
    	dao.removeAnnouncement(antid);
    }

//修改公告
	@Transactional
	@Override    
    public void updateAnnouncement(AntBean antbean) {
		 dao.updateAnnouncement(antbean);
    }
	
//儲存公告
	@Transactional
	@Override    
	public void updateAnt(AntBean antbean) {
		dao.updateAnt(antbean);
	}
	
	@Transactional
	@Override
    public List<String> getAllCategories(){
     	return dao.getAllCategories();
    }
    
	@Transactional
    @Override
    public List<AntBean> getAntsByCategory(String category){
    	return dao.getAntsByCategory(category);	   
    }
	
//	@Transactional
//	@Override
//	public List<BookBean> getAllProducts() {
//		return dao.getAllProducts();
//	}
//    
//    
//    @Transactional
//	@Override
//	public void updateAllStocks() {
//    	List<BookBean> allProducts = dao.getAllProducts();
//    	for(BookBean bb : allProducts) {
//    		if (bb.getStock() != null && bb.getStock() < 50) {
//    			dao.updateStock(bb.getBookId(), bb.getStock() + 50);
//    		}
//    	}
//	}
//    
//    @Transactional
//	@Override
//	public List<String> getAllCategories() {
//		return dao.getAllCategories();
//	}
//    
//    @Transactional
//	@Override
//	public List<BookBean> getProductsByCategory(String category) {
//		return dao.getProductsByCategory(category);
//	}
//    
//    @Transactional
//	@Override
//	public BookBean getProductById(int productId) {
//		return dao.getProductById(productId);
//	}
//    
//    @Transactional
//	@Override
//	public void addProduct(BookBean product) {
//		dao.addProduct(product);
//	}
//    
//    @Transactional
//	@Override
//	public CompanyBean getCompanyById(int companyId) {
//		return dao.getCompanyById(companyId);
//	}
//    
//    @Transactional
//	@Override
//	public List<CompanyBean> getCompanyList() {
//		return dao.getCompanyList();
//	}
//
//	@Override
//	public void addProduct(AntBean ant) {
//		// TODO Auto-generated method stub
//		
//	}

}