package com.web._init.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index1() {	
		return "index";
	}

	@RequestMapping("back-end")
	public String backend() {		
		return "back-end";
	}
	@RequestMapping("dappeiwall")
	public String dappeiwall() {		
		return "dappeiwall";
	}
	@RequestMapping("contact")
	public String contact() {		
		return "contact";
	}
	@RequestMapping("dappeipage")
	public String dappeipage() {		
		return "dappeipage";
	}
	@RequestMapping("adddappeipage")
	public String adddappeipage() {		
		return "adddappeipage";
	}
	@RequestMapping("dappeiwall2")
	public String dappeiwall2() {		
		return "dappeiwall2";
	}
	@RequestMapping("r")
	public String receipt() {		
		return "event/EventReceipt";
	}
	@RequestMapping("dappeis1")
	public String dappeis1() {		
		return "dappeis1";
	}
	@RequestMapping("dappeis2")
	public String dappeis2() {		
		return "dappeis2";
	}
	@RequestMapping("dappeis3")
	public String dappeis3() {		
		return "dappeis3";
	}
	@RequestMapping("dappeis4")
	public String dappeis4() {		
		return "dappeis4";
	}
	@RequestMapping("dappeis5")
	public String dappeis5() {		
		return "dappeis5";
	}
	@RequestMapping("insertdappeipage")
	public String insertdappeipage() {		
		return "insertdappeipage";
	}
}

