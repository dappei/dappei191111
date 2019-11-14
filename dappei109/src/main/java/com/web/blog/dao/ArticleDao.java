package com.web.blog.dao;

import java.util.List;

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
}
