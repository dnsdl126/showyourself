<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> SHOW YOURSELF </title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<link rel="icon" type="image/png" href="${path}/resources/img/icons8-ruby64.png">
	<script src="https://kit.fontawesome.com/3d124ab517.js" crossorigin="anonymous"></script>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Abel&family=Nanum+Gothic&display=swap');
	    * {box-sizing: border-box;}
		body {
			background-color: white;
			font-family: 'Abel', sans-serif;
			font-family: 'Nanum Gothic', sans-serif;
			margin: 0;
			padding: 0;
			font-size: 14px;
			color: rgba(0,0,0,0.7);
		}
		.header_wrap {
			width: 100%;
			box-shadow: 0 0 5px 5px rgba(20,23,28,0.03), 0 3px 1px 0 rgba(20,23,28,0.03);
			z-index: 999;
		}
		.header_content {
			width: 1200px;
			height: 75px;
			margin: 0 auto;
			box-sizing: border-box;
			border-left: 1px;
			border-right: 1px;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}

		/* Mirror */
		.mirror{
		  	display: inline-flex;
		  	width: 280px;
		}
		
		.mirror_Text_show{
		width:104px;
		height: 65px;
		
		
		}
		
		.mirror_Text_yourself{
		width:176px;
		height: 65px;
		
		}
		
		.Show{
			font-size: 30px;
			line-height: 121px;
			position: relative;
			float: left;
			margin-right: 5px;
			text-transform: uppercase;
			color: #A1E7FD;
		}
		.Show::after {
			position: absolute;
			z-index: 1;
			right: 0;
			bottom: -26px;
			left: 0;
			display: block;
			content: 'SHOW';
			transform: scaleY(-1);
			opacity: 0.3;
		}
		.Yourself{
			font-size: 30px;
			line-height: 121px;
			position: relative;
			float: right;
			text-transform: uppercase;
			color: #F0ACF2;
		}
		.Yourself::after {
			position: absolute;
			z-index: 1;
			right: 0;
			bottom: -26px;
			left: 0;
			display: block;
			content: 'YOURESELF';
			transform: scaleY(-1);
			opacity: 0.3;
		}

		/* SearchBox */
		.header_content_search {
			display: flex;
		}
		.header_content_search_group {
			display: flex;
			align-items: center;
			border: 1px solid rgba(20,23,28,.1);
			margin-top: 15px;
			
		}
		.header_content_search_group:hover {
			border: 1px solid rgba(20,23,28,.1);
			border-style: solid;
			border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
			border-image-slice: 1;
		}
		.header_content_search_input {
			background-color: transparent;
			border-color: transparent;
			width: 350px;
			height: 40px;
			margin-bottom: -2px;
			font-size: 13px;
			border-radius: 2px;
			padding: 10px 12px;
			outline: none; /* input 태그 focus시 파란테두리*/
		}
		.header_content_search_btn {
			border-color: transparent;
			background-color: transparent;
			width: 45px;
			cursor: pointer;
			color: rgba(0,0,0,0.7);
			outline: none;
			text-align: center;
			line-height: 43px;
		}
		.header_content_search_btn:hover {
			color: rgba(240,172,242);
		}
		.iconWrap {
			display: flex;
			align-items: center;
		}
		
		.header_content_member {
			display: flex;
			float: left;
		}
		/* Signin/Login img.button */
		a { 
			display: inline-block;
			text-decoration: none; 
			color: rgba(0,0,0,0.7);
		}
		.img-icon {
			width: 35px;
			height: 35px;	
		}

		/* profile_img */
		.profile_img {
			background-image: url('${path}/resources/img/profile.png');
		    background-repeat: no-repeat;
		    background-size: cover;
		    border-radius: 50%;
		    width: 40px;
		    height: 40px;
		    margin-right: 30px;
		}
		.header_profile {
			padding-right: 30px;
		}
		.header_btn  {
			display: flex;
			font-weight: 550;
			font-size: 13px;
			color: rgba(0,0,0,0.7);
			margin-right: 30px;
		}
		.header_btn a {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}
		.btn_Signin {
			padding-right: 30px;
		}
		.btn_Message {
			padding-right: 30px;
		}
		.header_btn a:hover {
			color: rgba(240,172,242);
		}
	</style>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="header_content">
				
				<!-- Mirror -->
				<div class="mirror">
					
					<div class="header_log" style="display: flex">						
						<a href="${path}/show/"><img class="mirror_Text_show" src="${path}/resources/img/showlog.png"></a>
						<a href="${path}/yourself/"><img class="mirror_Text_yourself" src="${path}/resources/img/yourselflog.png"></a>
						
					
				    </div>
				</div>

				
				<!-- SearchBox -->
				<div class="header_content_search">
					<form name="fre_search" action="" method="GET">
						<div class="header_content_search_group">
							<input type="text" placeholder="검색해주세요" name="keyword" class="header_content_search_input">
							<a class="header_content_search_btn"><i class="fas fa-search" ></i></a>
						</div>
					</form>
				</div>

				<div class="iconWrap">
						<!-- profile_img -->
						<a href="${path}/yourself/board/mygallery"><div class="profile_img"></div></a>						
						<!-- MyPage/Message/Logout img.button -->
						<div class="header_btn">
							<div class="btn_Message">
								<a href="${path}/show/member/message">
									<img class="img-icon" src="${path}/resources/img/icons8-envelope-64.png">
									<span>Message</span>
								</a>
							</div>
							<div class="btn_mypage">
								<a href="${path}/show/member/myclass">
									<img class="img-icon" src="${path}/resources/img/icons8-imac-64.png">
									<span>My Class</span>
								</a>	
							</div>
						</div>


						<!-- Signin/Login img.button -->
						<div class="header_btn">
							<div class="btn_Signin">
								<a href="${path}/show/member/contract">
									<img class="img-icon" src="${path}/resources/img/icons8-task-completed-64.png">
									<span>Signin</span>
								</a>
							</div>
							<div class="btn_Login">
								<a href="${path}/show/member/login">
									<img class="img-icon" src="${path}/resources/img/icons8-enter-64.png">
									<span>Login</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

</body>
</html>