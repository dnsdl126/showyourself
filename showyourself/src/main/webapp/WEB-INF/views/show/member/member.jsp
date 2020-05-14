<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SHOWYOURSELF Member</title>
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
			margin-bottom: 3px;
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
	</style>
</head>
<body>
	<div class="wrap">
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
						<input class="profile-write" type="text" name="profile" placeholder="프로필을 입력해주세요">
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
							<input class="input-box" type="text" name="id">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPw input-group">
						<label class="commonlabel">비밀번호</label>
						<div class="input-wrap">
							<input class="input-box" type="password" name="pw">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPwCheck input-group">
						<label class="commonlabel">비밀번호 확인</label>
						<div class="input-wrap">
							<input class="input-box" type="password" name="pwcheck">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberEmail input-group">
						<label class="commonlabel">Email</label>
						<div class="input-wrap">
							<input class="input-box" type="text" name="email">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberName input-group">
						<label class="commonlabel">이름</label>
						<div class="input-wrap">
							<input  class="input-box"type="text" name="name">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberPhon input-group">
						<label class="commonlabel">휴대폰번호</label>
						<div class="input-wrap">
							<input  class="input-box"type="tel" name="phon">
						</div>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="memberAdress input-group input-addr">
						<label class="commonlabel">주소</label>
						<div class="input-wrap">		
							<div class="addr-group">
								<div class="postcode">
									<input class="input-postcode" type="text" id="sample6_postcode" class="int addr_only" placeholder="우편번호" readonly value="1234">
										<input class="btn-input" type="button" id=btn_post onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
								</div>
									<input class="input-box" type="text" id="sample6_address" class="int addr_only" placeholder="주소" readonly value="광주광역시 북구 중흥동">
									<input  class="input-box"type="text" id="sample6_detailAddress" class="int" placeholder="상세주소">
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
	 			 <button class="btn"> 취소 </button>
			</div>
			<div class="btn1 bs"> 
	 			 <button class="btn"> 확인 </button>
			</div>
		</div>
	</div>
</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = '';
                var extraAddr = '';

                if (data.userSelectedType === 'R') { 
                    addr = data.roadAddress;
                } else { 
                    addr = data.jibunAddress;
                }
                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</html>