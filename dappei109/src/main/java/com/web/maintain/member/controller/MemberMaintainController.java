package com.web.maintain.member.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.login.model.MemberBean;
import com.web.login.service.MemberService;


@Controller
public class MemberMaintainController {
	MemberService service;

	@Autowired
	public void setService(MemberService service) {
		this.service = service;
	}

	ServletContext context;

	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}

	@RequestMapping("/members")
	public String getAllMembers(Model model) {
		List<MemberBean> members = service.getAllMembers();
		model.addAttribute("allMembers", members);
		return "maintain/member/showMembers";		
	}
	
	// URL為 /members, 搭配 GET方法可以傳回所有會員紀錄。
	// produces屬性說明產生之資料的格式: produces = "application/json"
	// 本方法可以JSON格式傳回所有Member紀錄
//	@RequestMapping(value = "/members", method = RequestMethod.GET, produces = "application/json")
//	public String queryAllMembersJSON(Model model, HttpServletRequest req) {
//		System.out.println("GET, application/json");
//		List<MemberBean> members = service.getAllMembers();
//		model.addAttribute("allMembers", members);
//		return "maintain/member/showMembers";
//	}

	// URL為 /members, 搭配 GET方法可以傳回所有會員紀錄。
	// produces屬性說明產生之資料的格式: produces = "application/xml"
	// 本方法可以XML格式傳回所有Member紀錄
//	@RequestMapping(value = "/members", method = RequestMethod.GET, produces = "application/xml")
//	public String queryAllMembersXml(Model model) {
//		List<MemberBean> members = service.getAllMembers();
//		Members mems = new Members(members);
//		model.addAttribute("allMembers", mems);
//		return "maintain/member/showMembers";
//	}
	
	// 以JSON格式顯示單筆Member資料
//		@RequestMapping(value = "members/{memberId}.json", method = RequestMethod.GET, 
//				produces = "application/json")
//		public String displayMemberJSON(@PathVariable Integer memberId, Model model) {
//			MemberBean mb = service.getMemberById(memberId);
//			model.addAttribute(mb);
//			return "maintain/member/displayMember";
//		}

		// 以XML格式顯示單筆Member資料
//		@RequestMapping(value = "members/{memberId}.xml", method = RequestMethod.GET, 
//				produces = "application/xml")
//		public String displayMemberXML(@PathVariable Integer memberId, Model model) {
//			MemberBean mb = service.getMemberById(memberId);
//			model.addAttribute(mb);
//			return "maintain/member/displayMember";
//		}
		
		// 修改單筆Member資料
//		@RequestMapping(value = "/members/{memberId}", method = RequestMethod.PUT)
//		public String updateMembers(@PathVariable Integer memberId, MemberBean mb, HttpServletRequest req) {
//			if (mb.getMemberId() == null) {
//				mb.setMemberId(memberId); 
//			}
//			service.update(mb);
//			return "redirect: " + req.getContextPath() + "/maintain/member/members";
//		}
}