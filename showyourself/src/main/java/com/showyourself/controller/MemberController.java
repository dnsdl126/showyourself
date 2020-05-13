package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class MemberController {
	
	
	
	@GetMapping("/member/contract")
	public String contractView() {
		log.info("MEMBER/CONTRACT PAGE 출력");
		return "member/contract";
	}
	
	@GetMapping("/member/myclass")
	public String myclassView() {
		return "member/myclass";
	}
	
	
}
