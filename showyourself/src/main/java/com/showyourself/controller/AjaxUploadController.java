package com.showyourself.controller;

import javax.annotation.Resource;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AjaxUploadController {

	@Resource(name = "uploadPath")
	String uploadPath;	
	
	@ResponseBody // 페이지 이동을 안할때,  ajax를 쓸때 ResponseBody
	@RequestMapping(value = "/upload/uploadAjax", produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception {

		 log.info("POST: uploadAjax");
		return null;
	}
	
}
