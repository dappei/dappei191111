package com.web.store.model;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Category")
public class CategoryBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer categoryid ;
	private String  categoryname;
	@OneToMany(mappedBy="companyBean")
	private Set<ProductBean> products = new LinkedHashSet<>();
	
	public CategoryBean(Integer categoryid, String categoryname) {
		this.categoryid = categoryid;
		this.categoryname = categoryname;
	}
	public CategoryBean() {
	}
	
	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}
	
	public Set<ProductBean> getProducts() {
		return products;
	}
	public void setProducts(Set<ProductBean> products) {
		this.products = products;
	}
	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
}