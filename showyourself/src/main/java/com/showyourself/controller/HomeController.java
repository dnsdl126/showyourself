package com.showyourself.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class HomeController {
	
	@GetMapping("/show/")
	public String viewSIndex(Locale locale, Model model) {
		log.info(">>>>>SHOW MAIN 페이지 출력");
		
		return "/show/sIndex";
	}
	
	@GetMapping("/yourself/")
	public String viewYIndex(Locale locale, Model model) {
		log.info(">>>>>>YOURSELF MAIN 페이지 출력");
		
		return "/yourself/index";
	}
	
	
	@GetMapping("/")
	public String viewMainIndex(Locale locale, Model model) {
		log.info(">>>>>>showyourself MAIN 페이지 출력");
		
		return "/intro";
	}
	
}
