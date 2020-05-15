package com.showyourself.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.showyourself.domain.MemberDTO;
import com.showyourself.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"memberDTO"})
@RequestMapping("/show/member")
@Slf4j
@Controller
public class MemberController {
	
	
	@Autowired
	MemberService mService;
	
	@ModelAttribute("memberDTO")
	public MemberDTO newMember() {
		return new MemberDTO();
	}
	
	// 회원 정보동의 페이지 출력
	@GetMapping("/contract")
	public String contractView() {
		log.info("MEMBER/CONTRACT PAGE 출력");
		return "/show/member/contract";
	}
	
	// 회원가입 정보 입력 페이지
	@GetMapping("/member")
	public String joinView(@ModelAttribute("memberDTO") MemberDTO mDto, @RequestParam(value="flag", defaultValue="0") String flag, Model model) {
		
		log.info("MEMBER/JOIN PAGE 출력");
		log.info(mDto.toString());
		
		if(!flag.equals("1")){
			return "member/contract";
		}		
		return "/show/member/member";		
	}
	
	// 아이디 중복 체크 
	@ResponseBody
	@PostMapping("/idoverlap")
	public String idoverlap(String id) {
		log.info("idoverLap 출력 ");
		log.info("아이디 =" +  id);
		int cnt = mService.idOverCheck(id); // 검색 값이 있을 경우 1이 반환
		log.info("cnt" + cnt);
		
		String flag ="1";
		if(cnt == 0) {
			flag = "0";
		}
		
		return flag;
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
