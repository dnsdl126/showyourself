package com.showyourself.controller;

import java.util.ArrayList;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.showyourself.domain.CurriculumDTO;
import com.showyourself.service.showclass.ClassService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/show/class")
@Slf4j
@Controller
public class ClassController {
	
	@Autowired
	ClassService cService;
	
	
	@GetMapping("/curriculum")
	public String curriculum(){
		return "/show/class/curriculum";
	}
	
	
	@PostMapping("/curriculum")
	@ResponseBody
	public int addCurriculum(@RequestBody List<Map<String,Object>> list) {
		log.info(">>>>>SHOW POST 페이지 로딩!!!!!!!!!!!");
	ArrayList<CurriculumDTO> curriList = new ArrayList<CurriculumDTO>();

		
		for(Map<String, Object> c : list) {

			log.info("curriculum : " + c);

			CurriculumDTO curri = new CurriculumDTO();
			int cno = Integer.parseInt(c.get("cno").toString());
			
			curri.setCno(cno);
			curri.setCtitle(c.get("ctitle").toString());
			curri.setC_content(c.get("c_content").toString());
			
			curriList.add(curri);
	

		}
			

		return 1;

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
