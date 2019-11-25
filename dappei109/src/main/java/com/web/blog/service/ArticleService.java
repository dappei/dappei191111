package com.web.blog.service;

import java.util.List;

import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;
import com.web.blog.model.CommentBean;

public interface ArticleService {
	List<ArticleBean> getAllProducts();


	public ArticleBean getProductById(int id);

	void addArticle(ArticleBean product);

	CategoryBean getCompanyById(int companyId);

	List<CategoryBean> getCompanyList();

	List<ArticleBean> getArticleByCategory(Integer categoryId);
	
	List<String> getAllCategories();

	CategoryBean findByCategoryId(int id);
	
	void updateArticle(ArticleBean update , int id);
	
	public void addComment(CommentBean commentBean);
	
	List<CommentBean> getCommentById(Integer commentId);

	List<ArticleBean> getmyblog(int memrId);
	
	void setPageNo(int pageNo);
	
	int getPageNo();
	
	int getTotalPages();
	
	long getRecordCounts();
	
	int getRecordsPerPage();
	
	void setRecordsPerPage(int recordsPerPage);
}
