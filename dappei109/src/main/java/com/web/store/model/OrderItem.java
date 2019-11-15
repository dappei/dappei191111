package com.web.store.model;

public class OrderItem {
	private String productname;
	private String color;
	private String size;
	private String companyName;
	private Integer qty = 0;
	private Integer productID = 0;
	private Double price = 0.0;
	private Double discount = 1.0;
	
	public OrderItem(int productID, int qty, double price, double discount, String productname, String color, String size,
			String companyName) {
		this.productID = productID;
		this.qty = qty;
		this.price = price;
		this.discount = discount;
		this.productname = productname;
		this.color = color;
		this.size = size;
		this.companyName = companyName;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Integer getQty() {
		return qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	public Integer getProductID() {
		return productID;
	}

	public void setProductID(Integer productID) {
		this.productID = productID;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	
	
}
