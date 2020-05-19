package com.showyourself.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.showyourself.domain.CurriculumDTO;
import com.showyourself.domain.ProductDTO;
import com.showyourself.domain.ScheduleDTO;
import com.showyourself.persistence.ClassDetailDAO;

@Service
public class ClassDetailService {
	@Autowired
	SqlSession sqlsession;
	ClassDetailDAO cDAO;
	@Autowired
	public void newcDAO() {
		cDAO = sqlsession.getMapper(ClassDetailDAO.class);
	}
	
	public HashMap<String,Object> classDetail(int pno) {
		HashMap<String, Object> map = new HashMap<String, Object>();		
		ProductDTO pDto=cDAO.classDetail(pno);
		map.put("pDto", pDto);		
		ScheduleDTO sDto=cDAO.classSchedule(pno);
		map.put("sDto",sDto);
		CurriculumDTO cDto =cDAO.classCurri(pno);
		map.put("cDto",cDto);
		return map; 		
	}

}
