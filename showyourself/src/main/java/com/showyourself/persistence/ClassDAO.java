package com.showyourself.persistence;


import java.util.ArrayList;

import com.showyourself.domain.CurriculumDTO;


public interface ClassDAO {
	public int curriInsert(ArrayList<CurriculumDTO> curriList);
}
