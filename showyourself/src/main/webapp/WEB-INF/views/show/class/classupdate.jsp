<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ClassUpdate 클래스 등록</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/3d124ab517.js" crossorigin="anonymous"></script>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Abel&family=Nanum+Gothic&display=swap');
		.classup-wrap {
			float: left;
			left: 20%;
			width: 1100px;
			padding-top: 40px;
			position: relative;
		}
		.gradient-bar {
			box-sizing: border-box;
			display: inline-block;
		    width: 1000px;
			border-style: solid;
			border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
			border-image-slice: 1;
		}
		.writer-breadcrumb {
			position: relative;
			background-color: transparent;
			padding: 15px 0;
			margin: 0;
			display: block;
			float: right;
			top: 15px;
			right: 123px;
		}
		ol, li {
			margin: 0;
			padding: 0;
		}
		ol, li {
			list-style: none;
		}
		.writer-breadcrumb li {
			float: left;
			line-height: 24px;
		}
		.writer-breadcrumb .breadcrumb-item.home:before {
			padding: 0 0 0 3px;
			color: #9b9da2;
			font-family: FontAwesome;
			font-size: 14px;
			vertical-align: baseline;
		}
		.writer-breadcrumb a {
			margin-left: 5px;
			margin-right: 5px;
			font-size: 12px !important;
			color: #222222;
			vertical-align: top;
		}
		.h2-container {
			padding: 0;
			position: relative;
			display: flex;
			right: -55px;
		}
		.h2-container h2 {
			color: #222222;
			font-size: 24px;
			font-weight: bold;
		}

		.class-txt {
			font-size: 20px;
			color: #222222;
			font-weight: 700;
			position: relative;
			display: flex;
			justify-content: flex-start;
		}
		.classContent {
			display: flex;
			flex-direction: column;
			margin-left: 60px;
		}
		.class-txt {
			padding-top: 10px;
			padding-bottom: 10px;
		}
		.input-txt {
			width: 913px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
			border: 1px solid #ccc;
			border-radius: 4px; 
			margin-bottom: 25px;
		 	outline: none;
		 	padding-left: 15px;
		}
		.selectBox {
			display: flex;
		}
		.allClassSelect {
			width: 200px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
		    border: 1px solid #ccc;
			border-radius: 4px;
			margin-right: 10px;
			margin-bottom: 25px;
		 	outline: none;
		 	padding-left: 10px;
		}
		.allTagSelect {
			width: 200px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
		    border: 1px solid #ccc;
			border-radius: 4px;
			margin-right: 10px;	
			margin-bottom: 25px;
		 	outline: none;
		 	padding-left: 10px;
		}
		.allDifficultySelect {
			width: 200px;
			height: 35px;	
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
		    border: 1px solid #ccc;
			border-radius: 4px;	
			outline: none;
			padding-left: 10px;
		}
		.inputBox {
			width: 913px;
			height: 394px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
		    border: 1px solid #ccc;
			border-radius: 4px;
			margin-bottom: 25px;
			outline: none;
			padding-left: 10px;
		}
		.input-vediotxt {
			width: 600px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
			border: 1px solid #ccc;
			border-radius: 4px; 
			margin-bottom: 25px;
			outline: none;
			padding-left: 10px;
		}
		.input-addrtxt {
			width: 377px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
			border: 1px solid #ccc;
			margin-right: 5px;
			border-radius: 4px; 
			margin-bottom: 25px;
			outline: none;
			padding-left: 10px;
		}
		.addr-wrap {
			display: flex;
		}
		.glassImg {
			width: 20px;
			height: 20px;
		}
		.addrBtn {
			width: 70px;
			height: 35px;
			padding-top: 5px;
    		padding-bottom: 5px;
			display: flex;
			align-items: center;
		}
		.addrbox{
			width: 451px;
		    height: 160px;
		    margin-top: -15px;
		    margin-bottom: 10px;
		}
		.addrView {
			width: 451px;
		}
		
		.priceBoard {
			display: flex;
			margin-bottom: 25px;
		}
		.inputgroup {
			display: inline-block;
		}
		.input-pricetxt {
			width: 300px;
			height: 35px;
			box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
			border: 1px solid #ccc;
			border-radius: 4px; 
			outline: none;
			padding-left: 10px;
		}
		.pricebox {
			padding-right: 50px;
			outline: none;
			padding-left: 10px;
		}

		.imgArea {
			display: flex;
		}
		.imgUpBtn {
			margin-right: 5px;
		}

		.board-txt {
			width: 913px;
			height: 200px;
			border: 2px dashed #D1C2FF;
			margin-top: 15px;
			margin-bottom: 10px;
			padding-left: 10px;
		}
		.imgCamera {
			width: 40px;
		    margin: 0 auto;
		    display: flex;
		    margin-top: 85px;
		    margin-left: 50%;
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
			margin-right: 30px;
    		margin-left: 30px;
		}
	</style>
</head>
<body>
	<div class="classup-wrap">
		<ol class="writer-breadcrumb group">
			<li class="breadcrumb-item home">
				<i class="fas fa-home"></i>
				<a href="#">작가페이지</a>
				<i class="fas fa-chevron-right"></i>
			</li>
			<li class="breadcrumb-item">
				<a href="#">클래스</a>
				<i class="fas fa-chevron-right"></i>
			</li>
			<li class="breadcrumb-item">
				<a href="#">클래스 등록</a>
			</li>
		</ol>

		<div class="h2-container">
			<h2>클래스 등록</h2>
		</div>

		<!-- gradient-bar -->
		<div class="gradient-bar"></div>

		<div class="group-box">
			<div class="classContent">
				<div class="class-txt">클래스 제목*</div>
				<input class="input-txt" type="text" name="" placeholder="클래스 제목을 입력해주세요">

				<div class="class-txt">카테고리 등록*</div>
					<div class="selectBox">
						<select class="allClassSelect" name="all">
							<option value="">카테고리</option>
							<option value="">온라인</option>
							<option value="">오프라인</option>
						</select>
						<select class="allTagSelect" name="all">
							<option value="">소분류</option>
							<option value="">인테리어</option>
							<option value="">디지털</option>
							<option value="">요리</option>
							<option value="">액세서리</option>
							<option value="">베이킹</option>
						</select>	
						<select class="allDifficultySelect" name="all">
							<option value="">난이도</option>
							<option value="">입문</option>
							<option value="">초급</option>
							<option value="">중급</option>
							<option value="">상급</option>
						</select>
					</div>

				<div class="class-txt">클래스 소개 입력*</div>
				<textarea class="inputBox" placeholder="클래스 소개를 자세히 입력해주세요"></textarea>

				<div class="class-txt">동영상 소개</div>
				<input class="input-vediotxt" type="text" name="" placeholder="동영상 URL을 입력해주세요">

				<div class="class-txt">위치정보*</div>
					<div class="addr-wrap">
					<input class="input-addrtxt" type="text" name="" placeholder="예)양화로 161">	
						<button type="submit" class="addrBtn btn"><img class="glassImg" src="${path}/resources/img/icons8-search-30.png">검색</button>
					</div>
					<input class="input-addrtxt addrbox" type="text" name="" placeholder="">
					<input class="input-addrtxt addrView" type="text" name="" placeholder="상세주소를 입력해주세요">

				<div id="map" style="width:500px;height:400px;"></div>
					

				<div class="priceBoard">
					<div class="inputgroup pricebox">
						<div class="class-txt">클래스 최종가격*</div>
						<input class="input-pricetxt" type="text" name="" placeholder="금액입력(원)">
					</div>
					<div class="inputgroup">
						<div class="class-txt">클래스 정가</div>
						<input class="input-pricetxt" type="text" name="" placeholder="금액입력(원)">
					</div>
				</div>
				<div class="class-txt">대표사진 등록*</div>
					<div class="imgArea">
						<button type="submit" class="imgUpBtn btn">사진 등록</button>
						<button type="submit" class="imgDelBtn btn">전체 삭제</button>
					</div>
				<div class="imgBoard">
					<div class="board-txt">
						<img class="imgCamera" src="${path}/resources/img/icons8-compact-camera-64.png">
					</div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>
</html>