package com.web.blog.model;

import java.io.Serializable;

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
	private String comment;
	private String commentName;
	private String commentEmail;
	private Integer commentCreatedTime;
	private Integer artid;
	private Integer memberid;
	
	
	@ManyToOne
	@JoinColumn(name = "ARTICLEID")
	private ArticleBean articleBean;
	
	public CommentBean(Integer commentid,String comment,String commentName,
					   String commentEmail,Integer commentCreatedTime,Integer articleid,
					   Integer memberid) {
		
		this.commentid = commentid;
		this.comment = comment;
		this.commentName = commentName;
		this.commentEmail = commentEmail;
		this.commentCreatedTime = commentCreatedTime;
		this.artid= articleid;
		this.memberid = memberid;		
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

	public String getCommentEmail() {
		return commentEmail;
	}

	public void setCommentEmail(String commentEmail) {
		this.commentEmail = commentEmail;
	}

	public Integer getCommentCreatedTime() {
		return commentCreatedTime;
	}

	public void setCommentCreatedTime(Integer commentCreatedTime) {
		this.commentCreatedTime = commentCreatedTime;
	}

	
	public Integer getArtid() {
		return artid;
	}

	public void setArtid(Integer articleid) {
		this.artid = articleid;
	}

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	
	
	
	
	
}
