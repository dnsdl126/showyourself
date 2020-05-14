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
public class MemberDTO {
	  private String id; // 아이디 
	    private String pw; // 비밀번호 
	    private String email; // 이메일 
	    private String name; // 이름
	    private String phone; // 연락처         
	    private String useyn; // 이메일 인증 완료 여부 
	    private String primaryon; // 개인정보 동의 
	    private String locon;  // 위치정보 동의
	    private String useon; // 개인정보 수집 동의
	    private Date regdate; 

}
