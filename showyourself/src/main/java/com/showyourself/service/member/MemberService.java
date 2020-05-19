package com.showyourself.service.member;

import com.showyourself.domain.MemberDTO;

public interface MemberService {

	public int idOverCheck(String id);
	
	public int memInsert (MemberDTO mDto);
}
