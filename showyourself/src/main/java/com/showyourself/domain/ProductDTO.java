package com.showyourself.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {
	    private int pno; 			// 상품번호
	    private String title;		// 제목
	    private String classonoff;	// 온,오프라인
	    private String category;	// 카테고리(소분류)
	    private String plevel;		// 난이도
	    private String content;		// 소개
	    private int selprice;		// 할인가
	    private int price;			// 정가
	    private String tag;			// 태그
	    private Date regdate;		

}
