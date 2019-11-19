package com.web.store.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.login.model.MemberBean;
import com.web.store.model.OrderItem;
import com.web.store.model.ProductBean;
import com.web.store.model.ShoppingCart;
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
	
	//取出所有已上架產品
	@RequestMapping("/products")
	public String list(Model model) {
		Collection<ProductBean> collProduct = service.getAllProducts();
		model.addAttribute("products", collProduct);
		return "store/products";
	}
	
	//取出單筆產品
	@RequestMapping("/product")
	public String getProductById(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("product", service.getPrdouctById(id));
		return "store/product";
	}
	
	//將產品放入購物車
	@RequestMapping(value = "/put/{id}", method = RequestMethod.GET)
	public String getAddToCart(@PathVariable Integer id,HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		ShoppingCart cart = (ShoppingCart)session.getAttribute("ShoppingCart");
		// 如果找不到ShoppingCart物件
		if (cart == null) {
			// 就新建ShoppingCart物件
			cart = new ShoppingCart();
			// 並將此新建ShoppingCart的物件放到session物件內，成為它的屬性物件
			session.setAttribute("ShoppingCart", cart);   
		}
		ProductBean p=service.getPrdouctById(id);
		OrderItem oi=new OrderItem();
		oi.setProductID(p.getProductId());
		oi.setProductname(p.getProductname());
		oi.setColor(p.getColor());
		oi.setSize(p.getSize());
		oi.setQty(1);
		oi.setPrice(p.getPrice());
		oi.setDiscount(p.getDiscount());
		cart.addToCart(oi.getProductID(), oi);
		cart.listCart();
		return "redirect:/stores/products";
	}
	//進入購物清單頁面
	@RequestMapping("/stores/cartlist")
	public String cartList() {
		return "store/cartContent";
	}
	//清空購物車
	@RequestMapping("/stores/empty")
	public String emptyCart(HttpServletRequest req) {
		HttpSession session = req.getSession();
        ShoppingCart cart = (ShoppingCart)session.getAttribute("ShoppingCart");
		if (cart != null) {
			//由session物件中移除ShoppingCart物件
			session.removeAttribute("ShoppingCart");
		}
		return"store/products";
	}
	//前往結帳頁面
	@RequestMapping("/stores/check")
	public String checkout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		//確認會員是否有登入
		MemberBean mb=(MemberBean)req.getSession().getAttribute("currentUser");
		if(mb==null) {
			return "redirect:/login";
		}
		//確認購物車是否有物品
		ShoppingCart cart = (ShoppingCart)session.getAttribute("ShoppingCart");
		if (cart == null) {
			return"store/products";
		}
		return"store/checkout";
	}
	
	//取出資料庫Blob物件
		@RequestMapping(value="/getProductPicture/{productId}",method=RequestMethod.GET)
		public ResponseEntity<byte[]> getProductPicture(HttpServletResponse resp,@PathVariable Integer productId){
			byte[] media = null;
			HttpHeaders headers = new HttpHeaders();
			String filename = "";
			int len = 0;
			ProductBean pbean = service.getPrdouctById(productId);
			if (pbean != null) {
				Blob blob = pbean.getProductImage();
				filename = pbean.getPfileName();
				if (blob != null) {
					try {
						len = (int) blob.length();
						media = blob.getBytes(1, len);
					} catch (SQLException e) {
						throw new RuntimeException("ProductController的getPicture()發生SQLException:" + e.getMessage());
					}
				}
			}
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(filename);
			MediaType mediaType = MediaType.valueOf(mimeType);
			System.out.println("mediaType=" + mediaType);
			headers.setContentType(mediaType);
			ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
			return responseEntity;
		}
		
}
