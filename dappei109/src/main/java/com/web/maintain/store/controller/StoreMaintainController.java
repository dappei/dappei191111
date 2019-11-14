package com.web.maintain.store.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.store.model.ProductBean;
import com.web.store.service.StoreService;

@Controller
public class StoreMaintainController {
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
	
	
	//新增產品
	@RequestMapping(value = "/products/add", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		ProductBean pb = new ProductBean();
		model.addAttribute("productBean", pb);
		return "maintain/addProduct";
	}
	//使用者輸入完資料後，由此方法存進去
	@RequestMapping(value = "/products/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("productBean") ProductBean pb) {
		MultipartFile productImage =  pb.getProductFileImage();
		String originalFilename = productImage.getOriginalFilename();
		pb.setPfileName(originalFilename);
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty()) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				pb.setProductImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		service.saveProduct(pb);
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, pb.getProductId() + ext);
			productImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		return "redirect:/products";
	}
	
	//取出進行中的產品進行維護
	@RequestMapping("/products/maintain")
	public String getMaintainProductlist(Model model,HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setAttribute("pBean", service);
		Collection<ProductBean> collProduct = service.getAllProducts();
		model.addAttribute("products", collProduct);
		return "maintain/productsMaintainList";
	}
	
	//取出結束產品進行維護
	@RequestMapping("/products/pastproducts")
	public String getMaintainpastEventlist(Model model,HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setAttribute("pBean", service);
		Collection<ProductBean> collProduct = service.getCloseProducts();
		model.addAttribute("products", collProduct);
		return "maintain/productsCloseMaintainList";
	}
	//修改產品內容
	@RequestMapping(value="/products/updateProduct/{id}", method=RequestMethod.GET)
	public String editProductForm(Model model, @PathVariable Integer id) {
		ProductBean pb = service.getPrdouctById(id);
		model.addAttribute("productBean", pb);
		return "maintain/addProduct";
	}
	//接收修改過的產品資料寫入資料庫
	@RequestMapping(value="/products/updateProduct/{id}", method=RequestMethod.POST)
	public String editProduct(@ModelAttribute("productBean") ProductBean pb, @PathVariable Integer id, HttpServletRequest request) {		
		MultipartFile productImage =  pb.getProductFileImage();
		
		if (productImage.getSize() == 0) {
			// 表示使用者並未挑選圖片
			ProductBean original = service.getPrdouctById(id);
			pb.setProductImage(original.getProductImage());
		} else {
			String originalFilename = productImage.getOriginalFilename();
			if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
				pb.setPfileName(originalFilename);
			}
		
			// 建立Blob物件，交由 Hibernate 寫入資料庫
			if (productImage != null && !productImage.isEmpty()) {
				try {
					byte[] b = productImage.getBytes();
					Blob blob = new SerialBlob(b);
					pb.setProductImage(blob);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}
			}
		}
		service.updateProduct(pb);
		return "redirect:/products/maintain";
	}
	
	//上架產品
	@RequestMapping(value="/products/pastproducts/open/{id}",method=RequestMethod.GET)
	public String getProductOpen(@PathVariable Integer id) {
		service.openProduct(id);
		return "redirect:/products/maintain";
	}
	
	//下架產品
	@RequestMapping(value="/products/close/{id}",method=RequestMethod.GET)
	public String getProductClose(@PathVariable Integer id) {
		System.out.println(id);
		service.closeProduct(id);
		return "redirect:/products/maintain";
	}
	
}


