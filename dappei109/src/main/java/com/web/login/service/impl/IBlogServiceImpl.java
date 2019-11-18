package com.web.login.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.blog.model.ArticleBean;
import com.web.login.dao.IBlogDao;
import com.web.login.service.IBlogService;

@Transactional
@Service
public class IBlogServiceImpl implements IBlogService {
	IBlogDao dao;
	
	@Autowired
	public void setDao(IBlogDao dao) {
		this.dao = dao;
	}

	@Override
	public List<ArticleBean> getMyBlogs() {
		return dao.getMyBlogs();
	}

	



}
