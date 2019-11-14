package com.web.store.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ProductBean;
import com.web.store.service.StoreService;

@Controller
public class StoreController {
	StoreService service;
	@Autowired
	public void setService(StoreService service) {
		this.service = service;
	}
	
	ServletContext context;	
	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}
	
	//購物商城後台
	@RequestMapping("/productbackend")
	public String productbackend() {
		return "store/productbackend";
	}
	
	//查詢所有產品
	@RequestMapping("/products")
	public String list(Model model) {
		List<ProductBean> list = service.getAllProducts();
		model.addAttribute("products", list);
		return "store/products";
	}
	
	//查詢單筆產品
	@RequestMapping("/product")
	public String getProductById(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("product", service.getPrdouctById(id));
		return "store/product";
	}
}
