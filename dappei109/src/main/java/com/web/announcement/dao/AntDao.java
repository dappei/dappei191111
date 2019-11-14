package com.web.announcement.dao;

import java.util.List;


import com.web.announcement.model.AntBean;


public interface AntDao {
	
//查詢多筆公告
	public List<AntBean>  getAllAnnouncements(); 
//	public int getMaxAntId();
	
//查詢單筆公告
	public AntBean getAnnouncementById(int antid);
	
//新增公告
	void  addAnnouncement(AntBean antbean);
	
//刪除公告
    public void removeAnnouncement(Integer antid);

//修改公告
    public void updateAnnouncement(AntBean antbean);
    
//儲存公告
    public void updateAnt(AntBean antbean);
    
    List<String> getAllCategories();
    
    List<AntBean> getAntsByCategory(String category);
	
//	List<BookBean>  getAllProducts();
//
//	void updateStock(int productId, int newQuantity);
//
//	List<String>  getAllCategories();
//	List<BookBean>  getProductsByCategory(String category);
//	
//	public BookBean getProductById(int productId);
//	
//	void  addProduct(BookBean product);
//	
//	CompanyBean  getCompanyById(int companyId);
//	
//	List<CompanyBean>  getCompanyList();

	
	
	

	
}
