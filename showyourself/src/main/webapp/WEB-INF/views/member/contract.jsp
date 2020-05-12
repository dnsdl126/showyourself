<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contract 이용약관</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Abel&family=Nanum+Gothic&display=swap');
		.subject {
			height: 90px;
			text-align: center;			
		}
		.Contract-logo {
			width: 380px;
    		padding-top: 10px;
		}
		/* gradient-bar */
		.gradient-bar {
		    box-sizing: border-box;
		    display: inline-block;
		    width: 1000px;
		    border-style: solid;
		    border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
		    border-image-slice: 1;
		}

		.group-box {
			width: 1000px;
			margin: 0 auto;
			display: flex;
		}
		.contract-wrap {
			width: 950px;
    		margin: 0 auto;
		}
		.contract-wrap {
			width: 950px;
			margin: 0 auto;
			padding-top: 10px;
		}
		.terms-box1 {
			 position: relative;
			 overflow: auto;
			 width: 950px;
			 height: 200px;
			 margin-top: 8px;
			 margin-bottom: 8px;
			 padding: 12px;
		     border: 1px solid #222222;
			 background: #fff;
			 box-sizing: border-box;
		}
		.article:first-child {
			margin-top: 0;
		}
		.article {
			font-size: 15px;
			line-height: 16px;
   			color: #666;
		}
		.article-title {
			font-size: 15px;
		    font-weight: 700;
		    line-height: 16px;
		}
		p {
			margin: 0;
    		padding: 0; 
		}
		.input-chk {
		    display: block;
		    box-sizing: border-box;
		}
		.input-chk input {
			position: relative;
		    display: inline-block;
		    width: 18px;
		    height: 18px;
		    top: 8px;
		    left: 1px;
		    outline: 0;
		}
		.input-chk label {
			position: relative;
		    font-weight: 700;
		    line-height: 29px;
		    cursor: pointer;
		    color: #333;
		    box-sizing: border-box;
		    top: 3px;
		}
		.listbox {
    		justify-content: space-between;
    		padding-bottom: 10px;
		}
		.terms-box2 {
			 position: relative;
			 overflow: auto;
			 width: 950px;
			 height: 200px;
			 margin-top: 8px;
			 margin-bottom: 8px;
			 padding: 12px;
		     border: 1px solid #222222;
			 background: #fff;
			 box-sizing: border-box;
		}
		.input-chk2 {
		    display: block;
		    box-sizing: border-box;
		}
		.input-chk2 input {
			position: relative;
		    display: inline-block;
		    width: 18px;
		    height: 18px;
		    top: 8px;
		    left: 1px;
		    outline: 0;
		}
		.input-chk2 label {
			position: relative;
		    font-weight: 700;
		    line-height: 29px;
		    cursor: pointer;
		    color: #333;
		    box-sizing: border-box;
		    top: 3px;
		}
		.terms-box3 {
			 position: relative;
			 overflow: auto;
			 width: 950px;
			 height: 200px;
			 margin-top: 8px;
			 margin-bottom: 8px;
			 padding: 12px;
		     border: 1px solid #222222;
			 background: #fff;
			 box-sizing: border-box;
		}
		.input-chk3 {
		    display: block;
		    box-sizing: border-box;
		}
		.input-chk3 input {
			position: relative;
		    display: inline-block;
		    width: 18px;
		    height: 18px;
		    top: 8px;
		    left: 1px;
		    outline: 0;
		}
		.input-chk3 label {
			position: relative;
		    font-weight: 700;
		    line-height: 29px;
		    cursor: pointer;
		    color: #333;
		    box-sizing: border-box;
		    top: 3px;
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
		.span_only {
			color: tomato;
			font-weight: bold;
			position: relative;
    		top: 2px;
		}

	</style>
</head>
<body>
	<div class="wrap">
		<!-- Contract Logo -->
		<div class="subject">
			<img class="Contract-logo" src="${path}/resources/img/constract.png">
		</div>
	
		<!-- gradient-bar -->
		<div class="gradient-bar"></div>

		<!-- group box-->
		<div class="group-box">
			<div class="contract-wrap">
				<div class="terms-box1">
					<!-- 이용약관 동의 -->
					<div class="article">
					<h3 class="article-title">여러분을 환영합니다.</h3>
					<p class="article-text">
						네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를<br> 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,<br> 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.<br>
						네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.<br>
						여러분을 환영합니다.
						네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.<br>
						여러분의 개인정보를 소중히 보호합니다.
						네이버는 서비스의 원활한 제공을 위하여 회원이 동의한 목적과 범위 내에서만 개인정보를 수집∙이용하며, 개인정보 보호 관련 법령에 따라 안전하게 관리합니다. 네이버가 이용자 및 회원에 대해 관련 개인정보를 안전하게 처리하기 위하여 기울이는 노력이나 기타 상세한 사항은 개인정보 처리방침에서 확인하실 수 있습니다.<br>
						네이버는 여러분이 서비스를 이용하기 위해 일정 기간 동안 로그인 혹은 접속한 기록이 없는 경우, 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 사전에 안내해 드린 후 여러분의 정보를 파기하거나 분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인 정보가 부족해질 경우 부득이 관련 서비스 이용계약을 해지할 수 있습니다.
					</p>
					</div>
				</div>
					<!-- input-chk -->
					<div class="input-chk">
						<input type="checkbox" class="chk" id="tremsService" name="">
							<label class="tremsService">이용약관 동의</label>
							<span class="span_only">(필수)</span>
					</div>
				<div class="listbox">
					<div class="terms-box2">
						<!-- 이용약관 동의 -->
						<div class="article">
						<!-- <h3 class="article-title">여러분을 환영합니다.</h3> -->
						<p class="article-text">
							네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를<br> 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,<br> 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
						</p>
						</div>
					</div>
						<!-- input-chk -->
						<div class="input-chk2">
							<input type="checkbox" class="chk" id="tremsService" name="">
								<label class="tremsService">개인정보 수집 및 이용에 대한 안내</label>
								<span class="span_only">(필수)</span>
						</div>
					<div class="terms-box3">
						<!-- 이용약관 동의 -->
						<div class="article">
						<!-- <h3 class="article-title">여러분을 환영합니다.</h3> -->
						<p class="article-text">
							위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
							제 1 조 (목적)
							이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
						</p>
						</div>
					</div>
						<!-- input-chk -->
						<div class="input-chk3">
							<input type="checkbox" class="chk" id="tremsService" name="">
							<label class="tremsService">위치정보 이용약관 동의</label>
							<span class="span_only">(필수)</span>
						</div>
				</div>
			</div>
		</div>

		<!-- gradient-bar -->
		<div class="gradient-bar"></div>

		<!-- Button area -->
		<div class="button-area">
			<div class="btn1"> 
	 			 <button class="btn"> 취소 </button>
			</div>
			<div class="btn1"> 
	 			 <button class="btn"> 확인 </button>
			</div>
		</div>
</body>
</html>