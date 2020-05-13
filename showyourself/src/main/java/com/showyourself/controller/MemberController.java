package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"memberDTO"})
@RequestMapping("/show/member")
@Slf4j
@Controller
public class MemberController {
	
	
	
	@GetMapping("/contract")
	public String contractView() {
		log.info("MEMBER/CONTRACT PAGE 출력");
		return "/show/member/contract";
	}
	
	
	@GetMapping("/msgbox")
	public String msgboxView() {
		return "/show/member/msgbox";
	}
	
	
	@GetMapping("/myclass")
	public String myclassView() {
		return "/show/member/myclass";
	}
	
	@GetMapping("/login")
	public String loginView() {
		log.info("Login PAGE 출력");
		return "/show/member/login";
	}
	
	
}
