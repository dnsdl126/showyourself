package com.showyourself.persistence;

import org.apache.ibatis.annotations.Param;

import com.showyourself.domain.ProductDTO;

public interface ClassDetailDAO {

	public ProductDTO classDetail(@Param("pno")int pno);

}
