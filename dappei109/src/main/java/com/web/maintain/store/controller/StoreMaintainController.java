package com.web.maintain.store.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.store.model.ProductBean;
import com.web.store.model.StorecategoryBean;
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
	
	
	//新增產品,送出空白表單給使用者輸入資料
	@RequestMapping(value = "/storesAdd", method = RequestMethod.GET)
	public String getAddNewEventForm(Model model) {
		ProductBean pb = new ProductBean();
		model.addAttribute("storeadd", pb);
		return "maintain/store/addProduct";
	}
	
	//使用者輸入完資料後，由此方法存進去
	@RequestMapping(value = "/storesAdd", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("storeadd") ProductBean pb,BindingResult result) {
		//類型加入此行可新增至資料庫
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		MultipartFile productFileImage = pb.getProductFileImage();
		String originalFilename = productFileImage.getOriginalFilename();
		pb.setPfileName(originalFilename);
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productFileImage != null && !productFileImage.isEmpty()) {
			try {
				byte[] b = productFileImage.getBytes();
				Blob blob = new SerialBlob(b);
				pb.setProductImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		service.addProduct(pb);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, pb.getProductId() + ext);
			productFileImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		return "redirect:/products";
	}

	@ModelAttribute("companyList")
	public Map<Integer, String> getCompanyList() {
		Map<Integer, String> companyMap = new HashMap<>();
		List<StorecategoryBean> list = service.getCategoryList();
		for (StorecategoryBean cb : list) {
			companyMap.put(cb.getCategoryid(), cb.getCategoryname());
		}
		return companyMap;
	}
	
	//取出進行中的產品進行維護
	@RequestMapping("/storesMaintain")
	public String getMaintainProductlist(Model model,HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setAttribute("pBean", service);
		Collection<ProductBean> collProduct = service.getAllProducts();
		model.addAttribute("stores", collProduct);
		return "maintain/store/storesMaintainList";
	}
	
	//取出結束產品進行維護
	@RequestMapping("/storesPastproducts")
	public String getMaintainpastProductlist(Model model,HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setAttribute("pBean", service);
		Collection<ProductBean> collProduct = service.getCloseProducts();
		model.addAttribute("products", collProduct);
		return "maintain/store/storesCloseMaintainList";
	}
	
	//修改產品內容
	@RequestMapping(value="/productUpdate/{id}", method=RequestMethod.GET)
	public String editProductForm(Model model, @PathVariable Integer id) {
		ProductBean pb = service.getPrdouctById(id);
		model.addAttribute("storeadd", pb);
		return "maintain/store/addProduct";
	}
	//接收修改過的產品資料寫入資料庫
	@RequestMapping(value="/productUpdate/{id}", method=RequestMethod.POST)
	public String editProduct(@ModelAttribute("storeadd") ProductBean pb, @PathVariable Integer id, HttpServletRequest request,BindingResult result) {		
		//類型加入此行可新增至資料庫
		String[] suppressedFields = result.getSuppressedFields();
			if (suppressedFields.length > 0) {
				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
			}
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
		return "redirect:/storesMaintain";
	}
	

	//上架產品
	@RequestMapping(value="/open/{id}",method=RequestMethod.GET)
	public String getProductOpen(@PathVariable Integer id) {
		service.openProduct(id);
		return "redirect:/storesPastproducts";
	}
	
	//下架產品
		@RequestMapping(value="/close/{id}",method=RequestMethod.GET)
		public String getProductClose(@PathVariable Integer id) {
			service.closeProduct(id);;
			return "redirect:/storesMaintain";
		}
	
}


