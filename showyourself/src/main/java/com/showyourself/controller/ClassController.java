package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/show/class")
@Slf4j
@Controller
public class ClassController {
	@GetMapping("/curriculum")
	public String curriculum(){
		return "/show/class/curriculum";
	}
	@GetMapping("/classlist")
	public String viewClassList(){
		return "/show/class/classlist";
	}
	@GetMapping("/classupdate")
	public String classUpdateView() {
		log.info("CLASSUPDATE PAGE 출력");
		return "/show/class/classupdate";
	}
	
	
	@GetMapping("/schedule")
	public String scheduleView() {
		return "/show/class/schedule";
	}
	
	// 오프라인 클래스 상세 페이지 
	@GetMapping("/offlineclass")
	public String offlineclass () {
		return "/show/class/offlineclass";
	}
	
	// 온라인 클래스 상세 페이지 
		@GetMapping("/onlineclass")
		public String onlineclass () {
			return "/show/class/onlineclass";
		}
		
	// 내 모든 강의 리스트 페이지
		@GetMapping("/classdetail")
		public String classdetail () {
			return "/show/class/classdetail";
		}
}
