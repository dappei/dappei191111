package com.web.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.blog.dao.ArticleDao;
import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;
import com.web.blog.model.CommentBean;
import com.web.blog.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	ArticleDao dao;

	@Autowired
	public void setDao(ArticleDao dao) {
		this.dao = dao;
	}

	@Transactional
	@Override
	public List<ArticleBean> getAllProducts() {
		return dao.getAllProducts();
	}

	@Transactional
	@Override
	public ArticleBean getProductById(int id) {
		return dao.getProductById(id);
	}

	@Transactional
	@Override
	public void addArticle(ArticleBean product) {
		dao.addArticle(product);
	}

	@Transactional
	@Override
	public CategoryBean getCompanyById(int companyId) {
		return dao.getCompanyById(companyId);
	}

	@Transactional
	@Override
	public List<CategoryBean> getCompanyList() {
		return dao.getCompanyList();
	}
	@Transactional
	@Override
	public List<String> getAllCategories() {
		
		return dao.getAllCategories();
	}

	@Transactional
	@Override
	public CategoryBean findByCategoryId(int id) {
		return dao.findByCategoryId(id);
	
	
	}

	@Transactional
	@Override
	public void updateArticle(ArticleBean update, int id) {
		dao.updateArticle(update, id);
		
	}
	@Transactional
	@Override
	public List<ArticleBean> getArticleByCategory(Integer categoryId) {
		
		return dao.getArticleByCategory(categoryId);

	}
	@Transactional
	@Override
	public void addComment(CommentBean commentBean) {

		dao.addComment(commentBean);
	}
	@Transactional
	@Override
	public List<CommentBean> getCommentById(Integer commentId) {
		// TODO Auto-generated method stub
		return dao.getCommentById(commentId);
	}
	@Transactional
	@Override
	public List<ArticleBean> getmyblog(int memrId) {
		// TODO Auto-generated method stub
		return dao.getmyblog(memrId);
	}

	@Override
	public void setPageNo(int pageNo) {
		dao.setPageNo(pageNo);
	}

	@Override
	public int getPageNo() {
		return dao.getPageNo();
	}
	
	@Transactional
	@Override
	public int getTotalPages() {
		int n = 0;
		n=dao.getTotalPages();
		return n;
	}

	@Override
	public long getRecordCounts() {
		return dao.getRecordCounts();
	}

	@Override
	public int getRecordsPerPage() {
		return dao.getRecordsPerPage();
	}

	@Override
	public void setRecordsPerPage(int recordsPerPage) {
		dao.setRecordsPerPage(recordsPerPage);	
	}


}