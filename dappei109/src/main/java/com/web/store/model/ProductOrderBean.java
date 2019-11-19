package com.web.store.model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

// 本類別存放訂單資料
@Entity
@Table(name="Orders")
public class ProductOrderBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderNo;
	private String memberId;
	private String name;
	private String phone;
	private Double totalAmount;
	private String shippingAddress;
	private Timestamp  orderDate;
	private Date shippingDate;
	private String cancelTag;
	@OneToMany(mappedBy="ProductOrderBean", cascade=CascadeType.ALL)
	private Set<OrderProductItem> items = new LinkedHashSet<>();

	public ProductOrderBean() { }

	public ProductOrderBean(Integer no, String memberId, Double totalAmount, String shippingAddress, Timestamp orderDate, 
			Date shippingDate, Set<OrderProductItem> items) {
		super();
		this.orderNo = no;
		this.memberId = memberId;
		this.totalAmount = totalAmount;
		this.shippingAddress = shippingAddress;
		this.orderDate = orderDate;
		this.shippingDate = shippingDate;
		this.items = items;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	// 說明多方表格的orderBean欄位為外鍵欄位，對照的主鍵為一方表格的orderno欄
	public Set<OrderProductItem> getItems() {
		return items;
	}

	public void setItems(Set<OrderProductItem> items) {
		this.items = items;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public Date getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}

	public String getCancelTag() {
		return cancelTag;
	}

	public void setCancelTag(String cancelTag) {
		this.cancelTag = cancelTag;
	}

}
