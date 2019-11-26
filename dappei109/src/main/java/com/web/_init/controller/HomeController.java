package com.web._init.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.login.model.MemberBean;

@Controller

public class HomeController {
	@RequestMapping("/")
	public String index1(Model model) {

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
	
	@RequestMapping("dappelpage")
	public String dappelpage() {
		return "dappelpage";
	}

	@RequestMapping("adddappeipage")
	public String adddappeipage() {
		return "adddappeipage";
	}

	@RequestMapping("dappeiwall2")
	public String dappeiwall2() {
		return "dappeiwall2";
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

	@RequestMapping("dappelwall")
	public String dappelwall() {
		return "dappelwall";
	}
}
