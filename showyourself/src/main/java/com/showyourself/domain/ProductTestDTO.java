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
@NoArgsConstructor
@AllArgsConstructor
public class ProductTestDTO {
	public int pno;
    public String title;
    public String classonoff;
    public String category;
    public String plevel;
    public String content;
    public int selprice;
    public int price;
    public String tag;
    public Date regdate;
}
