<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SHOWYOURSELF 회원가입</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Abel&family=Nanum+Gothic&display=swap');
		.subject {
			height: 90px;
			text-align: center;
		}
		.Member-logo {
			width: 380px;
    		padding-top: 10px;
		}
		.gradient-bar {
			box-sizing: border-box;
			display: block;
		    width: 1000px;
			border-style: solid;
			border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
			border-image-slice: 1;
			margin: 0 auto;
			margin-top: 10px;
		}
		.group-box {
			width: 1000px;
			margin: 0 auto;
			display: flex;
		}
		.profile-box {
			width: 350px;
		}
		.profil-container {
			padding-top: 35px;
			padding-left: 35px;
		}
		.profile-img {
			border-radius: 50%;
			width: 210px;
			height: 200px;
		}

		/* 첨부파일 버튼*/
		.btn-file-area {
			padding-top: 10px;
		}
		.btn-file {
			width: 200px;
			height: 40px;
			background-color: #C2CDFF;
			border: none;
			color: white;
			font-size: 17px;
			font-weight: bold;
			border-radius: 6px;
			outline: none;
		}

		/* 프로필 쓰는 곳 */
		.profile-write-area {
			padding-top: 15px;
			margin-left: -5px;
		}
		.profile-write {
			width: 210px;
			height: 95px;
			border: 1px solid #d5d5d5;
			border-radius: 6px;
			outline: none;
		}

		/* 회원정보 기입란 */
		.contents-box {
			width: 70%;
		}
		.commonlabel {
			width: 50%;
		}
		.input-wrap {
			width: 50%;
			display: flex;
			justify-content: flex-start;
		}
		.checkGroup {
			width: 50%;
		}
		input {
			outline: none;
		}
		.input-group {
			display: flex;
			border-top: 1px solid #d5d5d5;
			height: 57px;
			align-items: center;
			justify-content: center;
			text-align: center;
		}
		.input-group:first-child {
			border-top: none;
		}
		.input-box {
			width: 250px;
			height: 28px;
			
		}
		.postcode {
		    display: flex;
			margin-bottom: 3px;
		}
		.input-addr {
			height: 122px;
		}
		.addr-group {
			display: flex;
			flex-direction: column;
		}
		.input-postcode {
			width: 150px;
			height: 28px;
			margin-right: 4px;
		}
		.btn-input {
			width: 96px;
			border: none;
			background-color: #C2CDFF;
			border: none;
			color: white;
			font-weight: bold;
			height: 28px;
		}
		.error_next_box {
			/*visibility: hidden;*/
			width: 50%;
			color: tomato;
			visibility: hidden;
		}

		/* 버튼 */
		.button-area {
			padding-top: 20px;
			width: 300px;
			margin: 0 auto; 
			display: flex;
			justify-content: center;
			align-items: center;
		}
		.bs {
			margin-right: 15px;
    		margin-left: 15px;
		}
		
		.btn_ok {
		cursor: no-drop;
		}
	</style>
</head>
<body>
	<div class="wrap">
	<form:form id="frm_member">
		<!-- Member -->
		<div class="subject">
			<img class="Member-logo" src="${path}/resources/img/memberjoin.png">
		</div>

		<!-- gradient-bar -->
		<div class="gradient-bar"></div>

		<!-- group box-->
		<div class="group-box">

			<!-- profile-box -->
			<div class="profile-box">
				<div class="profil-container">
					<img class="profile-img" src="${path}/resources/img/profile.png">

					<!-- 첨부파일 버튼 -->
					<div class="btn-file-area">
						<button class="btn-file">사진 올리기</button>
					</div>

					<!-- 프로필 소개란-->
					<div class="profile-write-area">
						<input class="profile-write" type="text" name="procoment" placeholder="프로필을 입력해주세요">
					</div>
				</div>	
			</div>

			<!-- contents-box-->
			<div class="contents-box">
				<div class="contents-container">
				<!-- 	<div class="memberCheck input-group">
						<label class="commonlabel">회원 구분</label>
						<div class="checkGroup">
							<input type="checkbox" id="cbox"><label>사업자</label>
							<input type="checkbox" id="cbox"><label>개인 회원</label>
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>
 -->
					<div class="memberId input-group">
						<label class="commonlabel">아이디</label>
						<div class="input-wrap">
							<input class="input-box" type="text" name="id" id="mid">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPw input-group">
						<label class="commonlabel">비밀번호</label>
						<div class="input-wrap">
							<input class="input-box" type="password" name="pw" id="mpw">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPwCheck input-group">
						<label class="commonlabel">비밀번호 확인</label>
						<div class="input-wrap">
							<input class="input-box" type="password" name="pwcheck" id="mpwchek">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberEmail input-group">
						<label class="commonlabel">Email</label>
						<div class="input-wrap">
							<input class="input-box" type="text" name="email" id="memail">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberName input-group">
						<label class="commonlabel">이름</label>
						<div class="input-wrap">
							<input  class="input-box"type="text" name="name" id="mname">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPhon input-group">
						<label class="commonlabel">휴대폰번호</label>
						<div class="input-wrap">
							<input  class="input-box"type="tel" name="phone" id="mphone" placeholder="-없이 입력 예)0101234567">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberAdress input-group input-addr">
						<label class="commonlabel">주소</label>
						<div class="input-wrap">		
							<div class="addr-group">
								<div class="postcode">
									<input class="input-postcode" type="text" id="sample6_postcode" class="int addr_only" placeholder="우편번호" id="postcode" >
										<input class="btn-input" type="button" id=btn_post onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
								</div>
									<input class="input-box" type="text" id="sample6_address" id="addr1" class="int addr_only" placeholder="주소" >
									<input  class="input-box"type="text" id="sample6_detailAddress" id="addr2"  class="int" placeholder="상세주소">
									<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
							</div>
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<!-- <div class="memberBNumber input-group">
						<label class="commonlabel">사업자번호</label>
						<div class="input-wrap">
							<input class="input-box" type="text" name="bnumber">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberMONumber input-group">
						<label class="commonlabel">통신판매번호</label>
						<div class="input-wrap">
							<input  class="input-box" type="text" name="monumber">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div> -->
				</div>
			</div>	
		</div>

		<!-- gradient-bar -->
		<div class="gradient-bar"></div>

		<!-- Button area -->
		<div class="button-area">
			<div class="btn1 bs"> 
	 			 <button  class="btn"> 취소 </button>
			</div>
			<div class="btn1 bs"> 
	 			 <button type=button id="input_agree" class="btn "> 확인 </button>
			</div>
		</div>
			</form:form>
	</div>

</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${path}/resources/js/daum_post.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">
$(function(){ 
	
	// 비밀번호가 유효한지 확인하는 flag
	var pwFlag = false;
	
	// 아이디, 비밀번호, 비밀번호체크, Email, 이름, 휴대폰번호, 주소 7개값을 모두 채워야 함 
	// 처음 접속시 값이 모두 입력이 안되어 있으므로 false 로 설정 
	var checkArr = new Array(7).fill(false);
	
	//유효성 체크 통과 불토오가 여부 확인 해주는 변수
	// 통과시 true로 변경 
	var checkAll = false;
	

	// 유효성 체크 결과
	// validate code와 desc를 받아 에러 메세지 및 div 테두리 변경하여 출력 
	function checktrue(code, desc, line, msg){
		if(code == 0 || code == 10) { // 통과 
			$('.input-box:eq('+line+')').css('border', '1px solid #A1E7FD');
			$('.error_next_box:eq('+msg+')').css('visibility','visible').text(desc).css('color','#A1E7FD');
			
			return true;
		} else {
			$('.input-box:eq('+line+')').css('border', '1px solid tomato');
			$('.error_next_box:eq('+msg+')').css('visibility','visible').text(desc).css('color','tomato');
			
			return false;
		}
		
	};
	
	
	
	//아이디 확인
	$('#mid').keyup(function(){
		//trim : 좌우 공백 제거 
		var id = $(this).val().trim();
		//console.log(id) 입력여부 확인 완료 
		
		var result = joinvalidate.checkid(id);
		console.log (result.code + "," + result.desc);
		
		if(result.code == 0) {
			checkArr[0] = true;
		} else {
			checkArr[0] = false;
		}
		printCheckArr(checkArr)
		checktrue(result.code, result.desc, 0, 0);
			
	});
	
	//비밀번호 확인 
	$('#mpw').keyup(function(){
		
		var pw = $(this).val().trim();
		var pwcheck = $('#mpwchek').val().trim();
		 
		var result = joinvalidate.checkpw("", pw, pwcheck);
		
		if (result.code == 0 || result.code == 10) {
	    	pwFlag = true;
	    	
	    	checktrue(result.code, result.desc, 1, 1);
	    } else if(result.code == 6){//입력한 비밀번호가 일치하지 않습니다.
	    	pwFlag = true;
	    	checktrue(result.code, result.desc, 1, 2);
	    } else {
	    	pwFlag = false;
	    	checktrue(result.code, result.desc, 1, 1);
	    } 
		
		
		if(result.code == 10){ // 비밀 번호 재확인 값과 일치
	    	checkArr[1] = true;		
		    $('.input-box:eq(1)').css('border','1px solid #A1E7FD');
	    } else {
	    	checkArr[1] = false; // 비밀 번호 재확인 값과 불일치 
	    } 
		
		
	});
	
	//비밀번호 재확인 체크 
	
	$('#mpwchek').keyup(function(){
		var pw = $('#mpw').val().trim();
		var pwcheck = $('#mpwchek').val().trim();
		
		var result = joinvalidate.checkRpw(pw, pwcheck, pwFlag);
		console.log(result.code+","+result.desc);

		if(result.code == 10){//입력한 비밀번호가 일치합니다.
			checkArr[1] = true;
			$('.input-box:eq(2)').css('border','1px solid #A1E7FD');
		} else if(result.code == 6){
			checkArr[1] = false;
			$('.input-box:eq(2)').css('border','1px solid tomato');
		}
		checktrue(result.code, result.desc, 2, 2);
		
		
	});
	
	// 이메일
	
	// 이메일 유효성 체크
		$('#memail').keyup(function(){
			//1.사용자가 입력한 값 받기
			var email = $.trim($(this).val());
			ckEmail(email)
		});
		
		function ckEmail(email) {
			var result = joinvalidate.checkEmail(email);
			checktrue(result.code, result.desc, 3, 3);
			if(result.code == 0){
					checkArr[2] = true;
			}else {
					checkArr[2] = false;
			}
			
			printCheckArr(checkArr)
		}	
	
	// 이름
	$('#mname').keyup(function(){
		var name = $(this).val().trim()
		console.log(name);//출력확인
		
		var result = joinvalidate.checkName(name);
		 console.log("이름코드" + result.code);
			if(result.code == 0){
				checkArr[3] = true;
			} else {
				checkArr[3] = false;
			}
			printCheckArr(checkArr)
			checktrue(result.code, result.desc, 4,4);
		
		
	});
	
	// 전화번호 
	$('#mphone').keyup(function(){
		var phone = $.trim($('#mphone').val());
		console.log(phone); 
		$('.input-box').text(phone.lengh);
		ckPhone(phone);

	});
	
	function ckPhone(phone) {
		var result = joinvalidate.checkPhone(phone);
		checktrue(result.code, result.desc, 5, 5);
		
		if(result.code == 0){
			checkArr[4] = true;
		} else {
			checkArr[4] = false;
		}
		printCheckArr(checkArr);
		
	}
	
	
	
	// 주소 확인
	$('.input-postcode').click(function(){
		// 사용자가 주소 직접 입력하는 것 방지
		// 우편번호 div input 진행시 자동으로 우편번호 찾기 버튼 클릭 진행 
		$('.btn-input').click();
	});
	
	// 주소를 적지않고 상세주소를 적으러 왔을때 먼저 주소를 적게 하기위해 우편번호찾기 버튼을 누르게함
	$('#sample6_detailAddress').focus(function(){
		var addrPost = $('#sample6_postcode').val();
		if(addrPost == '' || addrPost == 0){
		  $('#btn_post').click();
		}
	});
	

	//주소 유효성 체크
	$('#sample6_detailAddress').keyup(function(){ //keyup : 키보드로 입력할때 마다 
		var addr2 = $.trim($(this).val());
		var postcode = $('#sample6_postcode').val();
		ckAddr(postcode, addr2)
		
	});
	
	function ckAddr(postcode, addr2) {
		var result = joinvalidate.checkAddr(addr2, postcode); // 유효성 체크 	
		if(result.code == 3){ // 우편번호&주소x
			checkArr[5] = false;
			checktrue(result.code, result.desc, 6,6);
		} else if(result.code == 0){ // 성공
			checkArr[5] = true;
			checktrue(result.code, result.desc, 6,6);
			checktrue(result.code, result.desc, 7,6);
		} else { // 상세주소 통과x한 모든경우
			checkArr[5] = false;
			checktrue(result.code, result.desc, 7,6);
		}
		printCheckArr(checkArr);
	}
	
	
	//버튼 활성화!
	$('.input-box').keyup(function(){
	
		ckColorBtn();
		
	});
	
	function ckColorBtn() {
		
		var checkAll = true;
		
		
		
		for(var i = 0; i < checkArr.length; i++){
			if(!checkArr[i]){
				checkAll = false;
				
			}
		}
		
		printCheckArr(checkArr);
		if(checkAll){
			// 아이디가 input_agree인 곳에 클래스 btn_ok 더해라 
			$('#input_agree').addClass('.btn_ok');
			$('#input_agree').css('cursor','pointer');
		} else{
			$('#input_agree').removeClass('.btn_ok');
			$('#input_agree').css('cursor','no-drop');
		}
	
	}
	
	$('#input_agree').click(function(){
		var invalidAll = true;
		for(var i=0; i < checkArr.length; i++){
			if(!checkArr[i]){
				invalidAll = false;
				$('.input-box:eq('+i+')').css('border', '1px solid tomato').css('visibility','visible');
				$('.error_next_box:eq('+i+')').css('visibility','visible').css('color','tomato');
							  
			} 
		}
		printCheckArr(checkArr);
		if(invalidAll){
			
			alert('회원가입 성공');
			console.log(invalidAll);
			
			
			FunLoadingBarStart(); //로딩바 생성
		
		} else{
			console.log(invalidAll);
			alert('값을 모두 입력해주세요.');
			
		}
	});
	
	
	// 개발시 사용 : 유효성 체크 전체 여부를  출력해주는 함수 (true, false)
	 function printCheckArr(checkArr) {
	 	for(var i=0; i < checkArr.length; i++) {
		 	console.log(i+'번지: ' + checkArr[i]); 
		 }
	 }
	
	// 로딩바 출력
	 function FunLoadingBarStart() {
	 	var loadingBarImage = ''; // 가운데 띄워 줄 이미지
	 	loadingBarImage += "<div id='back'>";
	 	loadingBarImage += "<div id='loadingBar'>";
	 	loadingBarImage += "<i class='fas fa-spinner loading_img'></i>";
	 	loadingBarImage += "</div></div>";
	 	$('body').append(loadingBarImage);
	 	$('#back').css('display', 'flex');
	 	$('#loadingImg').show();
	 }
	
});	

  
  
</script>
</html>