package com.showyourself.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ScheduleDTO {
	private int pno;
    private String startdate;
    private String enddate;
    private String day;
    private String starttime;
    private String endtime;
    private int avalmincnt;  
    private int avalmaxcnt;
    private int deadlinetime;   
}
