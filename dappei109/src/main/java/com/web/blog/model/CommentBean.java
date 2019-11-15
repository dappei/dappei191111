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
	private Integer articleid;
	private Integer memberid;
	
	
	@ManyToOne
	@JoinColumn(name = "ARTICLEID")
	private ArticleBean articleBean;
	
	public CommentBean(Integer commentid,String commentName,String comment,
			Integer commentCreatedTime,Integer articleid,Integer memberid) {
		
		this.commentid = commentid;
		this.commentName = commentName;
		this.comment = comment;
		this.commentCreatedTime = commentCreatedTime;
		this.articleid= articleid;
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

	public Integer getArticleid() {
		return articleid;
	}

	public void setArticleid(Integer articleid) {
		this.articleid = articleid;
	}

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	
	
	
	
	
}
