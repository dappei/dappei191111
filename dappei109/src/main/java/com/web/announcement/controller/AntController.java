package com.web.announcement.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.announcement.model.AntBean;
import com.web.announcement.service.AntService;




@Controller
public class AntController {
	AntService service;

	@Autowired
	public void setService(AntService service) {
		this.service = service;
	}

	ServletContext context;
	private Object ants;

	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}


//新增公告
	@RequestMapping(value = "/ant/add", method = RequestMethod.GET)
	public String getAddAnt(Model model) {
		AntBean ab = new AntBean();
		List<String> list = service.getAllCategories();
		System.out.println(list);
		model.addAttribute("categoryList", list);
		List<String> list2 = service.getAllCategories();
		model.addAttribute("categoryList2", list2);
		model.addAttribute("AntBean", ab);
		return "maintain/announcement/addAnt";
		

	} 

	@RequestMapping(value = "/ant/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("AntBean") AntBean ab,
			   RedirectAttributes redirectAttributes) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		ab.setAnttime(sdf.format(date));
		
//新增圖片-------------------------------------------------------------------------------
		MultipartFile picture = ab.getProductImage();

		String originalFilename = picture.getOriginalFilename();
		
		if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
			ab.setFileName(originalFilename);
		}
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (picture != null && !picture.isEmpty()) {
			try {
				byte[] b = picture.getBytes();
				Blob blob = new SerialBlob(b);
				ab.setAntimage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
//-----------------------------------------------------------------------------------
		service.addAnnouncement(ab);
		return "redirect:/ant";
//		redirectAttributes.addFlashAttribute("AntBean",ab);
//		return "ant";
	}	

////新增公告2
//	@RequestMapping(value = "/add", method = RequestMethod.GET)
//	public String showEmptyForm(Model model) {
//		AntBean antbean = new AntBean();
//		model.addAttribute(antbean);
//		return "insertAnt";
//	}
//	
//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public String add(
//			@ModelAttribute("antbean") AntBean antbean, BindingResult result, Model model, HttpServletRequest request) {
//		
//		MultipartFile picture = antbean.getProductImage();
//		
//				String originalFilename = picture.getOriginalFilename();
//				
//				if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
//					antbean.setFileName(originalFilename);
//				}
//				// 建立Blob物件，交由 Hibernate 寫入資料庫
//				if (picture != null && !picture.isEmpty()) {
//					try {
//						byte[] b = picture.getBytes();
//						Blob blob = new SerialBlob(b);
//						antbean.setAntimage(blob);
//					} catch (Exception e) {
//						e.printStackTrace();
//						throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//					}
//				}
//		//-----------------------------------------------------------------------------------
//				service.addAnnouncement(antbean);
//				return "redirect:/ant";
////				redirectAttributes.addFlashAttribute("AntBean",ab);
////				return "ant";
//			}	
	
	

//查詢單筆公告
	@RequestMapping("/antsingle")
	public String getAnnouncementById(@RequestParam("antid") Integer antid, Model model) {
		model.addAttribute("ant", service.getAnnouncementById(antid));
		return "announcement/antsingle";
	}

//查詢所有公告
	@RequestMapping(value = "/ant", method = RequestMethod.GET)
	public String getAnt(Model model) {
		String title = "最新公告";
		List<AntBean> antList = service.getAllAnnouncements();
		int antid = 8;
		Object ant = service.getAnnouncementById(antid);
		List<String> list = service.getAllCategories();      //ant分類
		model.addAttribute("categoryList", list);
		model.addAttribute("title", title);
		model.addAttribute("antList", antList);
		model.addAttribute("ant", ant);
		return "maintain/announcement/ant";

	}

//查詢前台所有公告
	@RequestMapping(value = "/antfont", method = RequestMethod.GET)
	public String getAntFont(Model model) {
		String title = "最新公告";
		List<AntBean> antList = service.getAllAnnouncements();
		int antid = 8;
		Object ant = service.getAnnouncementById(antid);
		List<String> list2 = service.getAllCategories(); //antfont分類
		model.addAttribute("categoryList2", list2);
		model.addAttribute("title", title);
		model.addAttribute("antList", antList);
		model.addAttribute("ant", ant);

		return "announcement/antfont";

	}

//刪除公告
	@RequestMapping(value = "/deleteAnt", method = RequestMethod.GET)
	public String removeAnnouncement(HttpServletRequest request) {
		int antId = Integer.parseInt(request.getParameter("antid"));
		service.removeAnnouncement(antId);
		return "redirect:/ant";
	}

////首頁
//	@RequestMapping("/")
//	public String index() {
//		return "index";
//	}

////修改公告
//	@RequestMapping("/editAnt")
//	public ModelAndView editAnt(@RequestParam int antid) {
//		ModelAndView mav = new ModelAndView("editAnt");
//		AntBean antbean = service.getAnnouncementById(antid);
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = new Date();
//		antbean.setAnttime(sdf.format(date));
//
//		mav.addObject("antbean", antbean);
//
//		return mav;
//	}
//
////更新公告
//	@RequestMapping(value = "/update", method = RequestMethod.POST)
//	public String updateAnt(@ModelAttribute("antbean") AntBean antbean) {
//		service.updateAnt(antbean);
//		return "redirect:/ant";
//	}
	
//更新公告
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String showDataForm(@PathVariable Integer id, Model model) {
		AntBean antbean = service.getAnnouncementById(id);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		antbean.setAnttime(sdf.format(date));
		model.addAttribute("antBean",antbean);
		return "maintain/announcement/editAnt";
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String modify(
			@ModelAttribute("antBean") AntBean antbean,
			Model model,
			@PathVariable Integer id,
			HttpServletRequest request) {
		
		MultipartFile picture = antbean.getProductImage();
		
		if(picture.getSize() == 0) {
			AntBean original = service.getAnnouncementById(id);
			antbean.setAntimage(original.getAntimage());
		}else {
		
		String originalFilename = picture.getOriginalFilename();
		
		if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
			antbean.setFileName(originalFilename);
		}
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (picture != null && !picture.isEmpty()) {
			try {
				byte[] b = picture.getBytes();
				Blob blob = new SerialBlob(b);
				antbean.setAntimage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		}
//-----------------------------------------------------------------------------------
		service.updateAnt(antbean);
		return "redirect:/ant";
	}
			
	
	
//取得照片
	@RequestMapping(value = "/getAntPicture/{antid}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getAntPicture(@PathVariable("antid") Integer antid) {
		byte[] body = null;
		ResponseEntity<byte[]> re = null;
		MediaType mediaType = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());

		AntBean antbean = service.getAnnouncementById(antid);
		if (antbean == null) {
			return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
		}
		String filename = antbean.getFileName();
		if (filename != null) {
			mediaType = MediaType.valueOf(context.getMimeType(filename));
			headers.setContentType(mediaType);
		}
		Blob blob = antbean.getAntimage();
		if (blob != null) {
			body = blobToByteArray(blob);
		
		}
		re = new ResponseEntity<byte[]>(body, headers, HttpStatus.OK);

		return re;
	}
	
//圖轉碼
	public byte[] blobToByteArray(Blob blob) {
		byte[] result = null;
		try (InputStream is = blob.getBinaryStream(); ByteArrayOutputStream baos = new ByteArrayOutputStream();) {
			byte[] b = new byte[819200];
			int len = 0;
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
			result = baos.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	
//分類
	@RequestMapping("/queryAntByCategory")
	public String getAntCategoryList(Model model) {
		List<String> list = service.getAllCategories();   //這兩行加到查詢ant裡 就可在ant上呈現，就不會連到categoryFont(已經刪掉了)
		model.addAttribute("categoryList", list);
		return "announcement/categoryFont";
	}
	
	@RequestMapping(value="/ants/{category}")
	public String getAntsByCategory(@PathVariable("category") String category, Model model) {
		List<AntBean> ants = service.getAntsByCategory(category);
		System.out.println(ants.size());
		model.addAttribute("antList", ants);
		List<String> list = service.getAllCategories();      //ant分類
		model.addAttribute("categoryList", list);
		
		return "maintain/announcement/ant";
	}
	
	@RequestMapping("categoryList")
	public List<String> getCategoryList(){
		return service.getAllCategories();
	}
	
	
//前台分類
	@RequestMapping("/queryAntFFontByCategory")
	public String getAntFontCategoryList(Model model) {
		List<String> list2 = service.getAllCategories();
		model.addAttribute("categoryList2", list2);
		return "announcement/antfont";
	}
	
	@RequestMapping(value="/antFont/{category}")
	public String getAntFontByCategory(@PathVariable("category") String category, Model model) {
		List<AntBean> ants = service.getAntsByCategory(category);
		System.out.println(ants.size());
		model.addAttribute("antList", ants);
		List<String> list2 = service.getAllCategories();  //前台分類
		model.addAttribute("categoryList2", list2);
		return "announcement/antfont";
	}
	
	@RequestMapping("categoryList2")
	public List<String> getCategoryListFont(){
		return service.getAllCategories();
	}
	
	
////前台分類form:form方法
//	@RequestMapping(value="/queryAntFontByCategory", method = RequestMethod.GET)
//	public String getAntFontCategoryList(Model model, HttpServletRequest request) {
//		AntBean ab = new AntBean();
//		ab.setCategory("分類");
//		model.addAttribute("queryAntFontByCategory", ab);
//		return "announcement/categoryFont";
//	}
//	
//	@RequestMapping(value="/queryAntFontByCategory", method = RequestMethod.POST)
//	public String getAntFontByCategory(@ModelAttribute("getAntFontByCategory") AntBean antbean, Model model, RedirectAttributes redirectAttributes) {
//		List<AntBean> ants = service.getAntsByCategory(antbean.getCategory());
//	
//		model.addAttribute("antList", ants);
//		redirectAttributes.addFlashAttribute("antList", ants);
//		return "redirect:/antfont";
//	}
//	
//	@RequestMapping("SelectAntByCategory")
//	public String selectAntByCategoryView(Model model) {
//		return "announcement/antfont";
//	}
//	

}
