package com.web.event.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.event.model.EventBean;
import com.web.event.model.OrderEventBean;
import com.web.event.service.EventService;
import com.web.login.model.MemberBean;

@Controller
public class EventController {
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
	
	//取出正在進行活動資料
	@RequestMapping("/events")
	public String getEventlist(Model model,HttpServletRequest req) 
			throws ServletException, IOException{
		HttpSession session = req.getSession(false);
		String pageNoStr = req.getParameter("pageNo");    //接收客戶端傳遞的要顯示頁數
	    int pageNo = 1;    //要顯示的頁數
	   			
		// 如果讀不到，直接點選主功能表的『購物』就不會送 pageNo給後端伺服器
		if (pageNoStr == null) {  
			pageNo = 1;
		} else { try { pageNo = Integer.parseInt(pageNoStr.trim());
			} catch (NumberFormatException e) { pageNo = 1;
			}
		}

		service.setPageNo(pageNo);
		service.setRecordsPerPage(6);
		Collection<EventBean> coll=service.getPageEvents();
		session.setAttribute("pageNo", String.valueOf(pageNo));
		model.addAttribute("totalPages", service.getTotalPages());
		model.addAttribute("events", coll);

		return "event/events";
	}
	//取出單筆活動資料
	@RequestMapping("/event")
	public String getEventsById(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("event",service.getEventById(id));	
		return "event/event";
	}
	//取出資料庫Blob物件
	@RequestMapping(value="/getEventPicture/{eventId}",method=RequestMethod.GET)
	public ResponseEntity<byte[]> getEventPicture(HttpServletResponse resp,@PathVariable Integer eventId){
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		EventBean bean = service.getEventById(eventId);
		if (bean != null) {
			Blob blob = bean.getEventPic();
			filename = bean.getFileName();
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
	//購買活動
	@RequestMapping(value="/buy{id}", method=RequestMethod.GET)
	public String orderEventForm(Model model, @PathVariable Integer id,HttpServletRequest req) {
		int amt=Integer.parseInt(req.getParameter("qty"));
		//確認會員是否有登入
		MemberBean mb=(MemberBean)req.getSession().getAttribute("currentUser");
		//沒有登入mb值會是null，轉跳回登入畫面做登入
		if(mb==null) {
			return "redirect:/login";
		}	
		model.addAttribute("memberBean", mb);	
		EventBean eb = service.getEventById(id);
		model.addAttribute("eventBean", eb);
		int price=eb.getPrice();
		OrderEventBean oeb=new OrderEventBean();
		oeb.setQuantity(amt);
		oeb.setTotalprice(amt*price);
		model.addAttribute("orderEventBean", oeb);
		return "event/buyEvent";
	}
	//使用者輸入完資料後，由此方法存進訂單
	@RequestMapping(value = "/buy{id}", method = RequestMethod.POST)
	public String processOrderEventForm(@ModelAttribute("orderEventBean") OrderEventBean oeb,HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		Timestamp adminTime = new Timestamp(System.currentTimeMillis());
		EventBean eb=service.getEventById(oeb.getEventid());
		int originamt=eb.getMaxPeople();
		int orderamt=oeb.getQuantity();
		int leftamt=originamt-orderamt;
		eb.setMaxPeople(leftamt);
		oeb.setOrderdate(adminTime);
		oeb.setEvent(eb);
		try{
			service.saveOrderEvent(oeb);
			service.updateEvent(eb);
			session.setAttribute("oevent", oeb);
			return "redirect:/eventReceipt";
		}catch(RuntimeException ex) {
			String message = ex.getMessage();
			String shortMsg = "" ;   
			shortMsg =  message.substring(message.indexOf(":") + 1);
			System.out.println(shortMsg);
			session.setAttribute("OrderErrorMessage", "處理訂單時發生異常: " + shortMsg  + "，請調正訂單內容" );
			return "/";
		}
	}
	//訂購單跳轉到此頁面
	@RequestMapping("eventReceipt")
	public String eventReceipt() {		
		return "event/EventReceipt";
	}
	//取消訂購單
	@RequestMapping("cansel")
	public String canselBuy() {		
		return "redirect:/events";
	}
	
	//取出訂購單
	@RequestMapping(value = "/eventOderedRec", method = RequestMethod.GET)
	public String getorderedlist(Model model,HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		String pageNoStr = req.getParameter("pageNo");    //接收客戶端傳遞的要顯示頁數
	    int pageNo = 1;    //要顯示的頁數
		MemberBean mb=(MemberBean)req.getSession().getAttribute("currentUser");
		//沒有登入mb值會是null，轉跳回登入畫面做登入
		if(mb==null) {
			return "redirect:/login";
		}	
		// 如果讀不到，直接點選主功能表的『購物』就不會送 pageNo給後端伺服器
		if (pageNoStr == null) {  
			pageNo = 1;
		} else { try { pageNo = Integer.parseInt(pageNoStr.trim());
			} catch (NumberFormatException e) { pageNo = 1;
			}
		}
		service.setPageNo(pageNo);
		service.setRecordsPerPage(10);
		Collection<OrderEventBean> coll1=service.getOrderEventById(mb.getMemberId());
		System.out.println("size:"+coll1.size());
		Collection<OrderEventBean> coll2=service.getCancelOrderEventById(mb.getMemberId());
		session.setAttribute("pageNo", String.valueOf(pageNo));
		model.addAttribute("totalPages", service.getTotalPages());
		model.addAttribute("orderEvents", coll1);
		model.addAttribute("cOrderEvents", coll2);
		return "login/myEvent";
	}
	//取出訂購單收據
	@RequestMapping(value="eventReceipt{id}",method=RequestMethod.GET)
	public String getEventReceipt(Model model,@PathVariable Integer id) {	
		model.addAttribute("oevent",service.getOrderEventByOrderId(id));
		return "event/EventReceipt";
	}
	//取消已訂購活動
	@RequestMapping("canselEOrder{id}")
	public String canselEOrder(@PathVariable Integer id) {
		service.cancelEventOrder(id);
		return "redirect:/eventOderedRec";
	}
	
}


