package com.web.blog.dao;

import java.util.List;

import com.web.blog.model.CommentBean;
import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;

public interface ArticleDao {
	List<ArticleBean> getAllProducts();

	void updateArticle(ArticleBean update , int id);

	//抓取單一筆文章
	public ArticleBean getProductById(Integer id);

	void addArticle(ArticleBean product);

	CategoryBean getCompanyById(int companyId);

	List<CategoryBean> getCompanyList();
	
	List<ArticleBean> getArticleByCategory(Integer categoryId);
	
	List<String> getAllCategories();
	
	CategoryBean findByCategoryId(int id);


	public void addComment(CommentBean commentBean);
	
	List<CommentBean> getCommentById(Integer commentId);
	
	List<ArticleBean> getmyblog(int memrId);
	
	void setPageNo(int pageNo);
	
	int getPageNo();
	
	int getTotalPages();
	
	int getRecordsPerPage();
	
	void setRecordsPerPage(int recordsPerPage);
	
	long getRecordCounts();
}
