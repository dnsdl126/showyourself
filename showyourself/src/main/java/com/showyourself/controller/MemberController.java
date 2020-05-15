package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.showyourself.domain.MemberDTO;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"memberDTO"})
@RequestMapping("/show/member")
@Slf4j
@Controller
public class MemberController {
	
	@ModelAttribute("memberDTO")
	public MemberDTO newMember() {
		return new MemberDTO();
	}
	
	
	@GetMapping("/contract")
	public String contractView() {
		log.info("MEMBER/CONTRACT PAGE 출력");
		return "/show/member/contract";
	}
	
	@GetMapping("/member")
	public String joinView(@ModelAttribute("memberDTO") MemberDTO mDto, @RequestParam(value="flag", defaultValue="0") String flag, Model model) {
		
		log.info("MEMBER/JOIN PAGE 출력");
		log.info(mDto.toString());
		
		if(!flag.equals("1")){
			return "member/contract";
		}		
		return "/show/member/member";		
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
	
	// 메세지페이지
	@GetMapping("/message")
	public String messageView() {
		log.info("MESSAGE PAGE 출력");
		return "/show/member/message";
	}
	
}
