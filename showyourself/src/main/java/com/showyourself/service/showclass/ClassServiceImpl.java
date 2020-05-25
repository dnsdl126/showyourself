package com.showyourself.service.showclass;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.showyourself.domain.CurriculumDTO;
import com.showyourself.persistence.ClassDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ClassServiceImpl implements ClassService {
	
	@Autowired
	SqlSession sqlsession;
	ClassDAO cDao;
	@Autowired
	public void newClassDao() {
		cDao = sqlsession.getMapper(ClassDAO.class);
	}
	
	@Transactional
	@Override
	public int curriInsert(ArrayList<CurriculumDTO> curriList) {
		int result = cDao.curriInsert(curriList);
		
		return result;
	}
	
}
