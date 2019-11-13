package com.web.login.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.web.login.model.MemberBean;
import com.web.login.service.MemberService;

@Controller
@SessionAttributes({ "currentUser", "email" })
public class UserController {
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

	// 會員登入
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLogin(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("memberBean2", mb);
		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, @ModelAttribute("memberBean2") MemberBean mb) {
		// member會自己註入session中
		// 將account放入session作用域中，這樣轉發頁面也可以取到這個數據。
		MemberBean checkId = service.checkIDPassword(mb.getEmail(), mb.getPassword());
		if (checkId != null) {
			model.addAttribute("currentUser", checkId);
			return "redirect:/";
		} else {
			model.addAttribute("loginerror", "登入失敗，請重新輸入");
			return "login/login";
		}
	}

	@RequestMapping("logout")
	public String outLogin(HttpSession session, SessionStatus sessionStatus) {
		session.removeAttribute("currentUser");// 我這裡是先取出httpsession中的user屬性
		session.invalidate(); // 然後是讓httpsession失效
		sessionStatus.setComplete();// 最後是呼叫sessionStatus方法
		return "redirect:/";
	}
}
