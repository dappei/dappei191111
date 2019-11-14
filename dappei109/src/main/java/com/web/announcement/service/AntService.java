package com.web.announcement.service;

import java.util.List;
import com.web.announcement.model.AntBean;

public interface AntService {
//查詢多筆公告
	List<AntBean> getAllAnnouncements();

//查詢單筆公告
	public AntBean getAnnouncementById(int antid);

//新增公告
	void addAnnouncement(AntBean antbean);

//刪除公告
	public void removeAnnouncement(Integer antid);

//修改公告
	public void updateAnnouncement(AntBean antbean);

//更新公告
	public void updateAnt(AntBean antbean);

	List<String> getAllCategories();

	List<AntBean> getAntsByCategory(String category);
	
//	List<BookBean>  getAllProducts();
//	
//	void updateAllStocks();
//	
//	List<String>  getAllCategories();
//
//	List<BookBean>  getProductsByCategory(String category);
//	
//	public BookBean getProductById(int productId);
//	
//	void  addProduct(BookBean product);
//	CompanyBean  getCompanyById(int companyId);
//	List<CompanyBean>  getCompanyList();
//	
////新增公告
//	void  addProduct(AntBean ant);
//
////	public int getMaxAntId();

}
