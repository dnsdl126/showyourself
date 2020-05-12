package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardController {

	@GetMapping("/Board/boardwrite")
	public String boardwrite () {
		
		return "/Board/boardwrite";
	}
}
