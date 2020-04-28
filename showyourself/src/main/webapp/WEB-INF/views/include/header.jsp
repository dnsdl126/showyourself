<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include.jsp" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SHOWYOURSELF header</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/3d124ab517.js" crossorigin="anonymous"></script>
	<style type="text/css">
	    * {box-sizing: border-box;}
		body {
			background-color: white;			
			margin: 0;
			padding: 0;
			font-size: 14px;
			color: #222222;		
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
		  	width: 243px;
		  	background: url(${path}/resources/img/showyourself.png);
		  	height:59px;
		  	background-size: cover;
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
			margin-top: 22px;
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
			outline: none; /* input íê·¸ focusì íëíëë¦¬*/
		}
		.header_content_search_btn {
			border-color: transparent;
			background-color: transparent;
			width: 45px;
			height: 45px;
			cursor: pointer;
			color: #222222;
			outline: none;
			text-align: center;
			line-height: 43px;
		}
		.header_content_search_btn:hover {
			color: rgba(240,172,242);
		}
		
		.header_content_member {
			display: flex;
			float: right;
			justify-content: space-between;
			width: 345px;
			margin-top: 7px;
		}
		/* Signin/Login img.button */
		a { 
			display: inline-block;
			text-decoration: none; 
			color: #222222;
		}
		.icon {
			width: 35px;
			height: 35px;	
		}
		.header_btn  {
			display: flex;
			font-weight: bold;
			color: #222222;
		}
		.header_btn a {
			display: flex;
			flex-direction: column;
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
					
				</div>

				
				<!-- SearchBox -->
				<div class="header_content_search">
					<form name="fre_search" action="" method="GET">
						<div class="header_content_search_group">
							<input type="text" placeholder="검색어를 입력하세요" name="keyword" class="header_content_search_input">
							<a class="header_content_search_btn"><i class="fas fa-search"  style="padding:15px;"></i></a>
						</div>
					</form>
				</div>


				<!--  header_content_member -->
				<div class="header_content_member">
					<!-- profile_img -->
					<div class="header_profile">
						<div class="profile_img"></div>
					</div>
					<!-- Signin/Login img.button -->
					<div class="header_btn">
						<div class="btn_Signin">
							<a href="#">
								<img class="icon" src="${path}/resources/img/icons8-task-completed-64.png">
								<span>Signin</span>
							</a>
						</div>
						<div class="btn_Login">
							<a href="#">
								<img class="icon" src="${path}/resources/img/icons8-enter-64.png">
								<span>Login</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

</body>
</html>