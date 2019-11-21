package com.web.blog.model;

import java.io.Serializable;
import java.sql.Blob;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "Article")
public class ArticleBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer articleid;			   //文章
	private String title;				   //標題
	private String articlecontent;         //文章內容

	@Transient
	private String articleShortContent;	   //對文字的長短內容作限制
	private String author;				   //暱稱
	private Blob coverImage;  			   //照片
	private String fileName;			   //照片
	
	@ManyToOne
	@JoinColumn(name = "CATEGORYID")
	private CategoryBean categoryBean;
	@Transient
	private Integer categoryId;
	
	@OneToMany(mappedBy="articleBean",cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	private List<CommentBean> comments;

	private Integer memberId;              //會員ID

	public ArticleBean(Integer memberID, Integer articleidID, String title, String author, String articlecontent,
			String fileName, Blob coverImage) {
		this.memberId = memberID;
		this.articleid = articleidID;
		this.articlecontent = articlecontent;
		this.title = title;
		this.author = author;
		this.fileName = fileName;
		this.coverImage = coverImage;
	}

	@Transient
	private MultipartFile productImage;  	
	
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	public String getArticlecontent() {
		return articlecontent;
	}

	public void setArticlecontent(String articlecontent) {
		this.articlecontent = articlecontent;
	}

	public ArticleBean() {
	}

	public Integer getArticleid() {
		return articleid;
	}

	public void setArticleid(Integer articleid) {
		this.articleid = articleid;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public Blob getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(Blob coverImage) {
		this.coverImage = coverImage;
	}
	
	public String getArticleShortContent() {
		if (articlecontent.length() < 30) {
			articleShortContent = articlecontent;
		} else {
			articleShortContent = articlecontent.substring(0, 30);
		}
		return articleShortContent;
	}

	public void setArticleShortContent(String articleShortContent) {
			
		
		this.articleShortContent = articleShortContent;
	}

	public CategoryBean getcategoryBean() {
		return categoryBean;
	}

	public void setcategoryBean(CategoryBean categoryBean) {
		this.categoryBean = categoryBean;
	}
	
	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public List<CommentBean> getComments() {
		return comments;
	}

	public void setComments(List<CommentBean> comments) {
		this.comments = comments;
	}



}
	



