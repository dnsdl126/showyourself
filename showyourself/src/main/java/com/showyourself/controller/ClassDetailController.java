package com.showyourself.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.showyourself.service.ClassDetailService;

@Controller
public class ClassDetailController {
	@Autowired
	ClassDetailService cs;
	@GetMapping("/show/class/offlineclass")
	public String offlineclass (int pno, Model model) {
		model.addAttribute("pDto",cs.classDetail(pno));
		return "/show/class/offlineclass";
	}
	
}
