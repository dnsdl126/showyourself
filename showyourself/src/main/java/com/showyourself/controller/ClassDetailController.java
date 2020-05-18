package com.showyourself.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.showyourself.domain.ProductDTO;
import com.showyourself.service.ClassDetailService;

@Controller
public class ClassDetailController {
	@Autowired
	ClassDetailService cs;
	@GetMapping("/show/class/offlineclass")
	public String offlineclass (int pno, Model model) {
		ProductDTO pDto = cs.classDetail(pno);
		model.addAttribute("pDto", pDto);
		int discount = (int)(100-pDto.getSelprice()*100/pDto.getPrice());
		model.addAttribute("discount",discount);
		
		return "/show/class/offlineclass";
	}
	
}
