<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SHOWYOURSELF header</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
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
			/*box-shadow: 0 0 2px 2px rgba(20,23,28,.1), 0 4px 3px 0 rgba(20,23,28,.1);*/
			box-shadow: 0 0 1px 1px #d5d5d5, 0 3px 1px 0 #d5d5d5;
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
		input {
			outline: none;
			line-height: 48px;
			text-align: center;
		}

		/* Mirror */
		.mirror{
		  	display: inline-flex;
		}
		.mirror_Text {
			width: 280px;
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
			border-radius: 4px;
			margin-top: 14px;
		}
		.header_content_search_input {
			background-color: transparent;
			border-color: transparent;
			width: 350px;
			height: 40px;
			margin-bottom: -2px;
			font-size: 13px;
			border-radius: 2px;
			border-right: 1px solid #d5d5d5;
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
		    width: 45px;
		    height: 45px;
		}
		.header_profile {
			padding-right: 30px;
		}
		.header_btn  {
			display: flex;
			font-weight: bold;
			color: rgba(0,0,0,0.7);
			padding-right: 30px;
		}
		.header_btn a {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		.btn_Signin {
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
					<a href="#">
						<img class="mirror_Text" src="${path}/resources/img/showyourself.png">
					</a>
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
					<!--  header_content_member -->
					<div class="header_content_member">
						<!-- profile_img -->
						<div class="header_profile">
							<div class="profile_img"></div>
						</div>
						<!-- MyPage/Message/Logout img.button -->
						<div class="header_btn">
							<div class="btn_mypage">
								<a href="${path}/show/member/myclass">
									<img class="img-icon" src="${path}/resources/img/icons8-imac-64.png">
									<span>My Class</span>
								</a>	
							</div>
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