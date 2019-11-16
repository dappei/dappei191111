package com.web.blog.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Comment")
public class CommentBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer commentid;
	private String commentName;
	private String comment;
	private Integer commentCreatedTime;
	@Transient
	private Integer artId;
	

	public Integer getArtId() {
		return artId;
	}
	public void setArtId(Integer artId) {
		this.artId = artId;
	}

	private Integer memberid;
	
	
	@ManyToOne
	@JoinColumn(name = "ARTICLEID")
	private ArticleBean articleBean;
	
	public ArticleBean getArticleBean() {
		return articleBean;
	}
	public void setArticleBean(ArticleBean articleBean) {
		this.articleBean = articleBean;
	}
	public CommentBean(Integer commentid,String commentName,String comment,
			Integer commentCreatedTime,Integer artId,Integer memberid) {
		
		this.commentid = commentid;
		this.commentName = commentName;
		this.comment = comment;
		this.commentCreatedTime = commentCreatedTime;
		this.artId= artId;
		this.memberid = memberid;		
	}
	public CommentBean() {
	}
	public Integer getCommentid() {
		return commentid;
	}

	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCommentName() {
		return commentName;
	}

	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}

	public Integer getCommentCreatedTime() {
		return commentCreatedTime;
	}

	public void setCommentCreatedTime(Integer commentCreatedTime) {
		this.commentCreatedTime =  commentCreatedTime;
	}


	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	
	
	
}
