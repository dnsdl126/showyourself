package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ClassController {
	@GetMapping("/class/curriculum")
	public String curriculum(){
		return "class/curriculum";
	}
}
