package com.web.login.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

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
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
			model.addAttribute("error", "登入失敗");
			return "login/login";
		}
	}

}
