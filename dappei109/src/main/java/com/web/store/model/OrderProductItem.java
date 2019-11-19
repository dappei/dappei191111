package com.web.store.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderItems")
public class OrderProductItem {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer seqno;
	private Integer orderNo;
	private Integer productId;
	private String description;
	private Integer quantity;
	private Double unitPrice;
	private Double discount;
	@ManyToOne
	@JoinColumn(name = "FK_ProductOrderBean_orderNo")
    private ProductOrderBean orderBean;

	public OrderProductItem(Integer seqno, Integer orderNo, Integer productId, String description, Integer quantity,
			Double unitPrice, Double discount) {
		super();
		this.seqno = seqno;
		this.orderNo = orderNo;
		this.productId = productId;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
	}

	public OrderProductItem(Integer orderNo, Integer productId, String description, Integer quantity, Double unitPrice,
			Double discount) {
		super();

		this.orderNo = orderNo;
		this.productId = productId;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
	}

	public OrderProductItem() { }
	
	public Integer getSeqno() {
		return seqno;
	}
	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public ProductOrderBean getOrderBean() {
		return orderBean;
	}
	public void setOrderBean(ProductOrderBean orderBean) {
		this.orderBean = orderBean;
	}
}