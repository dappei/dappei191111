package com.web.blog.service;

import java.util.List;

import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;

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


}