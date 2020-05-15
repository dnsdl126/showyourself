package com.showyourself.persistence;

import org.apache.ibatis.annotations.Param;

import com.showyourself.domain.ProductTestDTO;

public interface ClassDetailDAO {

	public ProductTestDTO classDetail(@Param("pno")int pno);

}
