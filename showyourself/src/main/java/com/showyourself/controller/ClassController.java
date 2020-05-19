package com.showyourself.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/show/class")
@Slf4j
@Controller
public class ClassController {
	@GetMapping("/curriculum")
	public String curriculum(){
		return "/show/class/curriculum";
	}
	
	@ResponseBody
	@PostMapping("/curriculum")
	public String addCurriculum(@RequestParam Map<String, Object> parameters) {
		log.info(">>>>>SHOW POST 페이지 로딩!!!!!!!!!!!");
		String json = parameters.get("jsonData").toString();
		
		log.info(json);
		
		return "redirect:/show/class/classlist";
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
//	@GetMapping("/offlineclass")
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
