package com.showyourself.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/yourself/board")
@Slf4j
@Controller
public class BoardController {

	@GetMapping("/boardwrite")
	public String boardwrite () {
		
		return "/yourself/board/boardwrite";
	}
}
