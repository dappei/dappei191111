package com.web.login.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.web.blog.model.ArticleBean;
import com.web.login.model.MemberBean;
import com.web.login.service.IBlogService;
import com.web.login.service.MemberService;

@Controller
public class PersonalController {
	MemberService service;
	IBlogService iblogservice;

	@Autowired
	public void setIblogservice(IBlogService iblogservice) {
		this.iblogservice = iblogservice;
	}

	@Autowired
	public void setService(MemberService service) {
		this.service = service;
	}

	ServletContext context;

	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}
	
	@RequestMapping("/myevent")
	public String getMemberById( Model model,HttpServletRequest req) {
		return "login/myEvent";
	}
	
	@RequestMapping("/myblog")
	public String getMyBlog(Model model, HttpServletRequest req) {
		List<ArticleBean> myBlogs = iblogservice.getMyBlogs();
		model.addAttribute("myBlogs", myBlogs);
		return "login/myBlog";		
	}
}
