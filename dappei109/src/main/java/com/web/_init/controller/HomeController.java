package com.web._init.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index1() {		
		return "index";
	}
	
	@RequestMapping("/index")
	public String index2() {		
		return "index";
	}
	@RequestMapping("back-end")
	public String index3() {		
		return "back-end";
	}
	
}
