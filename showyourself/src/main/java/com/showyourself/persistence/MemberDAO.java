package com.showyourself.persistence;

import com.showyourself.domain.MemberDTO;

public interface MemberDAO {

	public int idOverCheck(String id);
	
	public int memInsert(MemberDTO mDto);
}
