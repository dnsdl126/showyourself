package com.showyourself.service.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.showyourself.domain.MemberDTO;
import com.showyourself.persistence.MemberDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberServiceImpl implements MemberService {
	@Autowired
	SqlSession sqlsession;
	MemberDAO mDao;
	@Autowired
	public void newmDao() {
		mDao = sqlsession.getMapper(MemberDAO.class);
	}
	
	
	public int idOverCheck(String id) {
		
		return mDao.idOverCheck(id);
	}


	@Override
	public int memInsert(MemberDTO mDto) {
		// TODO Auto-generated method stub
		return mDao.memInsert(mDto);
	}



}
