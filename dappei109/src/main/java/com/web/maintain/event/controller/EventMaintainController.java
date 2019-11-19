package com.web.maintain.event.controller;

import java.io.IOException;
import java.sql.Blob;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.event.model.EventBean;
import com.web.event.service.EventService;

@Controller
public class EventMaintainController {
	EventService service;	
	@Autowired
	public void setService(EventService service) {
		this.service = service;
	}
	
	ServletContext context;
	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}
	
	//新增活動,送出空白表單給使用者輸入資料
	@RequestMapping(value = "/eventsAdd", method = RequestMethod.GET)
	public String getAddNewEventForm(Model model) {
		EventBean eb = new EventBean();
		model.addAttribute("eventBean", eb);
		return "maintain/event/addEvent";
	}
	//使用者輸入完資料後，由此方法存進去
	@RequestMapping(value = "/eventsAdd", method = RequestMethod.POST)
	public String processAddNewEventForm(@ModelAttribute("eventBean") EventBean eb) {
		MultipartFile eventImage =  eb.getEventImage();
		String originalFilename = eventImage.getOriginalFilename();
		eb.setFileName(originalFilename);
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (eventImage != null && !eventImage.isEmpty()) {
			try {
				byte[] b = eventImage.getBytes();
				Blob blob = new SerialBlob(b);
				eb.setEventPic(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		service.saveEvent(eb);
		
		return "redirect:/eventsMaintain";
	}
	
	//取出進行中活動進行維護
	@RequestMapping("/eventsMaintain")
	public String getMaintainEventlist(Model model,HttpServletRequest req) 
			throws ServletException, IOException{
		int pageNo = 1;
		HttpSession session = req.getSession(false);
		
		String pageNoStr = req.getParameter("pageNo");
		// 如果讀不到，直接點選主功能表的『購物』就不會送 pageNo給後端伺服器
		if (pageNoStr == null) {  
			pageNo = 1;
			} else { try { pageNo = Integer.parseInt(pageNoStr.trim());
			} catch (NumberFormatException e) { pageNo = 1;
			}
		}

		service.setPageNo(pageNo);
		service.setRecordsPerPage(10);
		Collection<EventBean> coll=service.getPageEvents();
		session.setAttribute("pageNo", String.valueOf(pageNo));
		model.addAttribute("totalPages", service.getTotalPages());
		model.addAttribute("events", coll);

		return "maintain/event/eventsMaintainList";
	}
	//取出結束活動進行維護
	@RequestMapping("/eventsPastevents")
	public String getMaintainpastEventlist(Model model,HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		int pageNo = 1;
		HttpSession session = request.getSession(false);
		
		String pageNoStr = request.getParameter("pageNo");
		// 如果讀不到，直接點選主功能表的『購物』就不會送 pageNo給後端伺服器
		if (pageNoStr == null) {  
			pageNo = 1;
			} else { try { pageNo = Integer.parseInt(pageNoStr.trim());
			} catch (NumberFormatException e) { pageNo = 1;
			}
		}
		request.setAttribute("baBean", service);
		service.setPageNo(pageNo);
		service.setRecordsPerPage(10);
		Collection<EventBean> coll=service.getCloseEvents();
		session.setAttribute("pageNo", String.valueOf(pageNo));
		model.addAttribute("totalPages", service.getTotalPages());
		model.addAttribute("events", coll);

		return "maintain/event/pastEventsMaintainList";
	}
	//修正活動,用此方法送回含有活動資料的表單，讓使用者進行修改
	@RequestMapping(value="/eventUpdate/{id}", method=RequestMethod.GET)
	public String editEventForm(Model model, @PathVariable Integer id) {
		EventBean eb = service.getEventById(id);
		model.addAttribute("eventBean", eb);
		return "maintain/event/addEvent";
	}
	//接收修改過的活動資料寫入資料庫
	@RequestMapping(value="/eventUpdate/{id}", method=RequestMethod.POST)
	public String edit(@ModelAttribute("eventBean") EventBean eb, @PathVariable Integer id) {		
		MultipartFile eventImage =  eb.getEventImage();
		
		if (eventImage.getSize() == 0) {
			// 表示使用者並未挑選圖片
			EventBean original = service.getEventById(id);
			eb.setEventPic(original.getEventPic());
		} else {
			String originalFilename = eventImage.getOriginalFilename();
			if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
				eb.setFileName(originalFilename);
			}
		
			// 建立Blob物件，交由 Hibernate 寫入資料庫
			if (eventImage != null && !eventImage.isEmpty()) {
				try {
					byte[] b = eventImage.getBytes();
					Blob blob = new SerialBlob(b);
					eb.setEventPic(blob);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}
			}
		}
		service.updateEvent(eb);
		return "redirect:/eventsMaintain";
	}
	//常駐資料
	@ModelAttribute
	public void commonData(Model model) {
		Map<String, String> typeMap = new HashMap<>();
		typeMap.put("娛樂", "娛樂   ");
		typeMap.put("時尚", "時尚   ");
		typeMap.put("學習", "學習   ");
		typeMap.put("其他", "其他   ");		
		model.addAttribute("typeMap", typeMap);
	}
	//開啟活動
	@RequestMapping(value="/eventOpen/{id}",method=RequestMethod.GET)
	public String getEventOpen(@PathVariable Integer id) {
		service.openEvent(id);
		return "redirect:/eventsMaintain";
	}
	//關閉活動
	@RequestMapping(value="/eventClose/{id}",method=RequestMethod.GET)
	public String getEventClose(@PathVariable Integer id) {
		System.out.println(id);
		service.closeEvent(id);
		return "redirect:/eventsPastevents";
	}
	
}


