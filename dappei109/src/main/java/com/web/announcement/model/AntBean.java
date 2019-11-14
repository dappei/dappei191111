package com.web.announcement.model;



import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="Announcement")

public class AntBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int antid;
	private String anttitle;	
	private String anttime;
	private String antcontent;
	
	private String category;
	private Blob antimage;
	private String fileName;
	
	@Transient
	private MultipartFile productImage;
	
	public AntBean() {
		super();
	}
	
	public int getAntid() {
		return antid;
	}

	public void setAntid(int antid) {
		this.antid = antid;
	}

	public String getAnttitle() {
		return anttitle;
	}

	public void setAnttitle(String anttitle) {
		this.anttitle = anttitle;
	}

	public String getAnttime() {
		return anttime;
	}

	public void setAnttime(String anttime) {
		this.anttime = anttime;
	}

	public String getAntcontent() {
		return antcontent;
	}

	public void setAntcontent(String antcontent) {
		this.antcontent = antcontent;
	}

	public Blob getAntimage() {
		return antimage;
	}

	public void setAntimage(Blob antimage) {
		this.antimage = antimage;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}
	
	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "AntBean [antid=" + antid + ", anttitle=" + anttitle + ", anttime=" + anttime + ", antcontent="
				+ antcontent + ", category=" + category + ", antimage=" + antimage + ", fileName=" + fileName
				+ ", productImage=" + productImage + "]";
	}
	



	

	
	
	
}
