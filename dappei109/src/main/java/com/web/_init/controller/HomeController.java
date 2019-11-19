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
	public String backend() {		
		return "back-end";
	}
	@RequestMapping("deppeiwall")
	public String deppeiwall() {		
		return "deppeiwall";
	}
	@RequestMapping("contact")
	public String contact() {		
		return "contact";
	}
	@RequestMapping("deppeipage")
	public String deppeipage() {		
		return "deppeipage";
	}
	@RequestMapping("deppeiwall2")
	public String deppeiwall2() {		
		return "deppeiwall2";
	}
	@RequestMapping("r")
	public String receipt() {		
		return "event/EventReceipt";
	}
}
