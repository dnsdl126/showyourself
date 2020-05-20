<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
			width: 1000px;
			padding-top: 15px;
			position: relative;
			margin: 0 auto;
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
			color: rgba(0,0,0,0.7);;
			vertical-align: top;
		}
		.text-danger {
			color: tomato;
		}
		.h2-container {
			padding: 0;
			position: relative;
			display: flex;
			right: -55px;
		}
		.h2-container h2 {
			color: rgba(0,0,0,0.7);;
			font-size: 24px;
			font-weight: bold;
		}

		.class-txt {
			font-size: 20px;
			color: rgba(0,0,0,0.7);;
			font-weight: 700;
			position: relative;
			display: flex;
			justify-content: flex-start;
		}
		.classContent {
			display: flex;
			flex-direction: column;
			margin-left: 50px;
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
			width: 452px;
		    height: 35px;
		    margin-top: -15px;
		    margin-bottom: 10px;
		}
		.addrView {
			width: 452px;
		}
		
		.priceBoard {
			display: flex;
			margin-top: 25px;
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
		}

		.imgArea {
			display: flex;
		}
		.imgUpBtn {
			margin-right: 10px;
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
			margin-right: 15px;
    		margin-left: 15px;
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
	<form:form id="frm_class"> 
		<div class="group-box">
			<div class="classContent">
				<div class="class-txt">클래스 제목<span class="text-danger">*</span></div>
				<input class="input-txt" type="text" name="" placeholder="클래스 제목을 입력해주세요">

				<div class="class-txt">카테고리 등록<span class="text-danger">*</span></div>
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
					
				<div class="class-txt">대표사진 등록<span class="text-danger">*</span></div>
					<div class="imgArea">
						<button type="submit" class="imgUpBtn btn">사진 등록</button>
						<button type="submit" class="imgDelBtn btn">전체 삭제</button>
					</div>
				<div class="imgBoard">
					<div class="board-txt">
						<img class="imgCamera" src="${path}/resources/img/icons8-compact-camera-64.png">
					</div>
				</div>

				<div class="class-txt">클래스 소개 입력<span class="text-danger">*</span></div>
				<script type="text/javascript" src="${path}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
				<textarea id="board_content" class="inputBox" placeholder="클래스 소개를 자세히 입력해주세요">${one.content}</textarea>

				<div class="class-txt">동영상 소개</div>
				<input class="input-vediotxt" type="text" name="" placeholder="동영상 URL을 입력해주세요">

				<div class="class-txt">위치정보<span class="text-danger">*</span></div>
				
					<div class="addr-wrap ps_box">
						<input type="text" class="input-addrtxt addr_only" id="sample6_postcode" name="postcode" readonly placeholder="우편번호" value="${user.postcode}">	
						<button type="button" class="addrBtn btn" id="btn_post" onclick="sample6_execDaumPostcode()" value="검색"><img class="glassImg" src="${path}/resources/img/icons8-search-30.png">검색</button>
					</div>
					<div class="ps_box">
						<input type="text" class="input-addrtxt addrbox addr_only" id="sample6_address" name="addr1"  readonly placeholder="주소" value="${user.addr1}" >
						<input type="text"  class="input-addrtxt addrView" id="sample6_detailAddress" name="addr2" placeholder="상세주소를 입력해주세요" value="${user.addr2}">
						<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					</div>
					
					<div id="map" style="width:913px; height:400px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b4faa49f7f1a458092ece2c22ecde06"></script>
					<script>
					var container = document.getElementById('map');
					var options = {
						center: new kakao.maps.LatLng(33.450701, 126.570667),
						level: 3
					};
			
					var map = new kakao.maps.Map(container, options);
					</script>

				<div class="priceBoard">
					<div class="inputgroup pricebox">
						<div class="class-txt">클래스 최종가격<span class="text-danger">*</span></div>
						<input class="input-pricetxt" type="text" name="" placeholder="금액입력(원)">
					</div>
					<div class="inputgroup">
						<div class="class-txt">클래스 정가<span class="text-danger">*</span></div>
						<input class="input-pricetxt" type="text" name="" placeholder="금액입력(원)">
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
		</form:form>
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
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">
		$('.addr_only').click(function(){
			// 사용자가 우편번호 또는 주소 input을 클릭했을 때!
		$('#btn_post').click();
		});

		// 상세주소를 클릭하면
		$('#sample6_detailAddress').click(function(){
			var addrPost = $('#sample6_postcode').val();
			if(addrPost == '' || addrPost.length == 0) {
			}
		});

	$(function() {
		
		// 에러메세지 출력
		function ckDesign(code, desc, line, msg) {
			if (code == 0 || code == 10) { // 통과 o
				$('.ps_box:eq('+line+')').css('border', '2px solid #3885ca');
				$('.error_next_box:eq('+msg+')').css('visibility', 'visible')
									   .text(desc).css('color', '#3885ca');
				return true;
	
			} else { // 통과 x
				$('.ps_box:eq('+line+')').css('border', '2px solid #f46665');
				$('.error_next_box:eq('+msg+')').css('visibility', 'visible')
									   .text(desc).css('color', 'tomato');
				return false; 
				}
			}


	});
</script>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "board_content",
	    sSkinURI: "${path}/resources/smarteditor/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
		});
	</script>
</html>