package com.web.blog.dao.impl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.blog.dao.ArticleDao;
import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;
import com.web.blog.model.CommentBean;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	SessionFactory factory;
	private int pageNo = 0;		// 存放目前顯示之頁面的編號
	private int recordsPerPage = 6; // 預設值：每頁三筆
	private int totalPages = -1;


	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	//抓出所有資料
	@Override
	@SuppressWarnings("unchecked")
	public List<ArticleBean> getAllProducts() {
		String hql = "FROM ArticleBean";
		int startRecordNo = (pageNo - 1) * recordsPerPage;
		Session session = null;
		List<ArticleBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setFirstResult(startRecordNo)
                .setMaxResults(recordsPerPage).getResultList();
		return list;
	}

	@Override
	public void addArticle(ArticleBean articleBean) {
		Session session = factory.getCurrentSession();
		String title = articleBean.getTitle();
		try {
			articleBean.setTitle(new String(title.getBytes("UTF-8"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
//		System.out.println(product.getCompanyId());
//		CompanyBean cb = getCompanyById(product.getCompanyId());
//		product.setCompanyBean(cb);
		session.save(articleBean);
	}

	@Override
	public void updateArticle(ArticleBean articleBean , int id) {
		Session session = factory.getCurrentSession();
		//id 回傳值
		ArticleBean db = session.get(ArticleBean.class, id);
		db.setArticlecontent(articleBean.getArticlecontent());
		db.setAuthor(articleBean.getAuthor());
		db.setTitle(articleBean.getTitle());
		
		session.update(db);
	}

	@Override
	public CategoryBean getCompanyById(int companyId) {
		CategoryBean cb = null;
		Session session = factory.getCurrentSession();
		cb = session.get(CategoryBean.class, companyId);
		return cb;
	}

	@Override
	public List<CategoryBean> getCompanyList() {
		String hql = "FROM CategoryBean";
		Session session = factory.getCurrentSession();
		List<CategoryBean> list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public ArticleBean getProductById(Integer id) {
		Session session = factory.getCurrentSession();
		ArticleBean bb = session.get(ArticleBean.class, id);
		return bb;
	}

	@Override
	public CategoryBean findByCategoryId(int id) {
		Session session = factory.getCurrentSession();
		CategoryBean categoryBean = session.get(CategoryBean.class, id);
		return categoryBean;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories() {
		String hql = "FROM CategoryBean";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<ArticleBean> getArticleByCategory(Integer categoryId) {
		String hql = "FROM ArticleBean WHERE categoryBean.categoryId = :category";
		List<ArticleBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("category", categoryId).getResultList();
		
		
		return list;
	}

	
	@Override 
	public void addComment(CommentBean commentBean) {
		
		Session session = factory.getCurrentSession();
		System.out.println(commentBean);
		System.out.println("------" + commentBean.getArtId());
		int articleId = commentBean.getArtId();
		ArticleBean articleBean = getProductById(articleId);
		commentBean.setArticleBean(articleBean);
		session.save(commentBean);
//		String hql = "FROM CommentBean rb WHERE rb.articleid = :articleid ";
//		Session session = null;
//		List<CommentBean> list = new ArrayList<>();
//		session = factory.getCurrentSession();
//		list = session.createQuery(hql).setParameter("commentBean", commentBean).getResultList();
//		return list;
//		return (List<CommentBean>) factory.getCurrentSession().createQuery(hql).setParameter(0, id);
		

	}
	@SuppressWarnings("unchecked")
	@Override
	public List<CommentBean> getCommentById(Integer commentId) {
		
		String ol = "FROM CommentBean ol WHERE ol.articleid = :articleid";
		Session session = null;
		List<CommentBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(ol).setParameter("articleid",commentId).list();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ArticleBean> getmyblog(int memrId) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ArticleBean WHERE memberid=:id";
		
		List<ArticleBean> list = session.createQuery(hql)
									.setParameter("id", memrId).list();
		
		return list;
	}

	@Override
	public void setPageNo(int pageNo) {
		this.pageNo=pageNo;
		
	}

	@Override
	public int getPageNo() {
		// TODO Auto-generated method stub
		return pageNo;
	}

	@Override
	public int getTotalPages() {
		totalPages = (int) (Math.ceil(getRecordCounts() / (double) recordsPerPage));
		return totalPages;
	}

	@Override
	public int getRecordsPerPage() {
		return recordsPerPage;
	}

	@Override
	public void setRecordsPerPage(int recordsPerPage) {
		this.recordsPerPage = recordsPerPage;
		
	}

	@Override
	@SuppressWarnings("unchecked")
	public long getRecordCounts() {
		long count = 0; // 必須使用 long 型態
        String hql = "SELECT count(*) FROM ArticleBean";
        Session session = factory.getCurrentSession();
        List<Long> list = session.createQuery(hql).list();
        if (list.size() > 0) {
            count = list.get(0);
        }
        return count;
	}


	
}
