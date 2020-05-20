package com.showyourself.domain;



import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class CurriculumDTO {
	private int cno;
	private String ctitle;
	private String c_content;
}
