package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
// 本類別封裝單筆產品資料
@Entity
@Table(name="Product")
public class ProductBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	
	private Integer 	productId;
	private String  	productname;
	private String  	color;
	private String  	size;
	private Double  	price;
	@Transient
	private String  	priceStr = null;
	private Double  	discount;
	private Blob    	productImage;	
	private String  	pfileName;
	private String  	productNo;
	@Transient
	private String  	discountStr;
	private Integer  	stock;
	private Integer 	shelf;
	@Transient
	private Integer  	companyId;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="FK_CompanyBean_Id") 	
    private StorecategoryBean companyBean;
	
	//檔案(圖片)上傳
	@Transient
	private MultipartFile productFileImage;
	public MultipartFile getProductFileImage() {
		return productFileImage;
	}
	
	public void setProductFileImage(MultipartFile productFileImage) {
		this.productFileImage = productFileImage;
	}
	
	public ProductBean(Integer productID, String productname, String color, String size,
			double price, double discount, String pfileName, 
			String productNo, Blob productImage, int companyId) {
		this.productId = productID;
		this.productname = productname;
		this.color = color;
		this.size = size;
		this.price = price;
		this.discount = discount;
		this.pfileName = pfileName;
		this.productNo = productNo;
		this.productImage = productImage;
		this.companyId = companyId;
		this.stock = 0;
	}
	
	public ProductBean(Integer productID, String productname, String color, String size,
			Double price, Double discount, String pfileName, 
			String productNo, Blob productImage, Integer stock, StorecategoryBean companyBean) {
		this.productId = productID;
		this.productname = productname;
		this.color = color;
		this.size = size;
		this.price = price;
		this.discount = discount;
		this.pfileName = pfileName;
		this.productNo = productNo;
		this.productImage = productImage;
		this.companyBean = companyBean;
		this.stock = stock;
	}
	
	public ProductBean() {
	}
	
	public Integer getProductId() {   // bookId
		return productId;
	}
	public void setProductId(Integer productID) {
		this.productId = productID;
	}
	
	public StorecategoryBean getCompanyBean() {
		return companyBean;
	}

	public void setCompanyBean(StorecategoryBean companyBean) {
		this.companyBean = companyBean;
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

	public String getPriceStr() {
		return priceStr;
	}

	public void setPriceStr(String priceStr) {
		this.priceStr = priceStr;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
		if (priceStr == null) {
			priceStr = String.valueOf(price);
		}
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {   //0.8, 0.75
		if (discount  == null) {
			this.discount = 1.0;
			discountStr = "";
			return;
		}
		this.discount = discount;
		
		if (discount == 1) {
			discountStr = "";
		} else {
			int dnt = (int)(discount * 100);
			if (dnt % 10 == 0) {
				discountStr = (dnt / 10) + "折";
			} else {
				discountStr = " "  + dnt + "折";
			} 
			
		}
	}
	public String getPfileName() {
		return pfileName;
	}
	public void setPfileName(String pfileName) {
		this.pfileName = pfileName;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	
	public String getDiscountStr() {
		return discountStr;
	}	
	public Blob getProductImage() {
		return productImage;
	}
	public void setProductImage(Blob productImage) {
		this.productImage = productImage;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getShelf() {
		return shelf;
	}

	public void setShelf(Integer shelf) {
		this.shelf = shelf;
	}
	
}
