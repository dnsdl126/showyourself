package com.showyourself.persistence;

import org.apache.ibatis.annotations.Param;

import com.showyourself.domain.CurriculumDTO;
import com.showyourself.domain.ProductDTO;
import com.showyourself.domain.ScheduleDTO;

public interface ClassDetailDAO {

	public ProductDTO classDetail(@Param("pno")int pno);

	public ScheduleDTO classSchedule(@Param("pno")int pno);

	public CurriculumDTO classCurri(@Param("pno")int pno);

}
