package com.web.login.dao;

import java.util.List;

import com.web.blog.model.ArticleBean;

public interface IBlogDao {
	List<ArticleBean> getMyBlogs();
}
