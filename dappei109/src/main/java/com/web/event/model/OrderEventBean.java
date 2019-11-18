package com.web.event.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="EventOrder")
public class OrderEventBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderid;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_Event_Id", nullable = false) 	
	EventBean event;
	@Transient
	private Integer eventid;
	private String  name;
	private String  email;
	private String  phone;
	private String  birthday;
	private Integer quantity;
	private Integer totalprice;
	private Timestamp  orderdate;
	private Integer memberId;
	private Integer exist;

	public OrderEventBean() {}
	
	public OrderEventBean(Integer orderid, Integer eventid, String name, String email, String phone, String birthday,
			Integer quantity, Integer totalprice, Timestamp orderdate, Integer memberid) {
		super();
		this.orderid = orderid;
		this.eventid = eventid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.birthday = birthday;
		this.quantity = quantity;
		this.totalprice = totalprice;
		this.orderdate = orderdate;
		this.memberId = memberid;
	}
	
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public EventBean getEvent() {
		return event;
	}
	public void setEvent(EventBean event) {
		this.event = event;
	}
	public Integer getEventid() {
		return eventid;
	}
	public void setEventid(Integer eventid) {
		this.eventid = eventid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(Integer totalprice) {
		this.totalprice = totalprice;
	}
	public Timestamp getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Timestamp orderdate) {
		this.orderdate = orderdate;
	}
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public Integer getExist() {
		return exist;
	}
	public void setExist(Integer exist) {
		this.exist = exist;
	}
	
}
