package com.showyourself.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.showyourself.domain.ProductDTO;
import com.showyourself.service.ClassDetailService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class ClassDetailController {
	@Autowired
	ClassDetailService cs;
	@GetMapping("/show/class/offlineclass")
	public String offlineclass (int pno, Model model) {
		log.info(""+cs.classDetail(pno).toString()+"값존재"+cs.classDetail(pno).isEmpty());
		model.addAttribute("map", cs.classDetail(pno));
		return "/show/class/offlineclass";
	}
	
}
