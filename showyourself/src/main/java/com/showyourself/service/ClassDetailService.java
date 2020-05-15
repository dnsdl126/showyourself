package com.showyourself.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.showyourself.domain.ProductTestDTO;
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
	
	public ProductTestDTO classDetail(int pno) {
		return cDAO.classDetail(pno);
		
	}

}
