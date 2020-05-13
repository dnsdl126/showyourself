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
}
