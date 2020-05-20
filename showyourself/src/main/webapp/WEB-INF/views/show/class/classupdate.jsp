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
			right: -20px;
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
		.classVideo {
			padding-top: 35px;
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
			margin-bottom: 20px;
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
		.btn_type {
			cursor: no-drop;
		}
		.error_next_box {
		    width: 50%;
		    font-size: 13px;
		    padding-top: 4px;
		    padding-left: 6px;
		    color: tomato;
			visibility: hidden;
		}
		.title-msg {
		    padding-bottom: 2px;
		    visibility: hidden;
		    color: tomato;
		    margin-top: -15px;
		    padding-left: 6px;
		
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
				<div class="class-txt">클래스 제목<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
				<input class="input-txt classSubject int" type="text" name="procoment" placeholder="클래스 제목을 입력해주세요">
					<div style=" margin-top: -19px; text-align: right; padding-right: 39px;">
						<span class="cnt">0</span>/40
					</div>
					<div class="title-msg">글자 수는 40자를 넘어갈 수 없습니다.</div>

				
				<div class="class-txt">카테고리 등록<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
					<div class="selectBox">
						<select class="allClassSelect ps_box int" id="classall"  name="classall">
							<option value="">카테고리</option>
							<option value="online">온라인</option>
							<option value="offline">오프라인</option>
						</select>
						<select class="allTagSelect int" id="tagall" name="tagall">
							<option value="">소분류</option>
							<option value="interior">인테리어</option>
							<option value="digital">디지털</option>
							<option value="cooking">요리</option>
							<option value="accessory">액세서리</option>
							<option value="baking">베이킹</option>
						</select>	
						<select class="allDifficultySelect int" id="difficultyall" name="difficultyall">
							<option value="">난이도</option>
							<option value="introduction">입문</option>
							<option value="beginner">초급</option>
							<option value="Middle class">중급</option>
							<option value="Senior">상급</option>
						</select>
					</div>
					
				<div class="class-txt">대표사진 등록<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
					<div class="imgArea">
						<button type="button" class="imgUpBtn btn int">사진 등록</button>
						<button type="button" class="imgDelBtn btn">전체 삭제</button>
					</div>
				<div class="imgBoard">
					<div class="board-txt">
						<img class="imgCamera" src="${path}/resources/img/icons8-compact-camera-64.png">
					</div>
				</div>

				<div class="class-txt">클래스 소개 입력<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
				<script type="text/javascript" src="${path}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
				<textarea id="board_content" class="inputBox" placeholder="클래스 소개를 자세히 입력해주세요">${one.content}</textarea>

				<div class="class-txt classVideo">동영상 소개</div>
				<input class="input-vediotxt" type="text" name="" placeholder="동영상 URL을 입력해주세요">

				<div class="class-txt">위치정보<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
				
					<div class="addr-wrap ps_box">
						<input type="text" class="input-addrtxt addr_only int" id="sample6_postcode" name="postcode" readonly placeholder="우편번호" value="${user.postcode}">	
						<button type="button" class="addrBtn btn" id="btn_post" onclick="sample6_execDaumPostcode()" value="검색"><img class="glassImg" src="${path}/resources/img/icons8-search-30.png">검색</button>
					</div>
					<div class="ps_box">
						<input type="text" class="input-addrtxt addrbox addr_only int" id="sample6_address" name="addr1"  readonly placeholder="주소" value="${user.addr1}" >
						<input type="text"  class="input-addrtxt addrView int" id="sample6_detailAddress" name="addr2" placeholder="상세주소를 입력해주세요" value="${user.addr2}">
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
						<div class="class-txt">클래스 최종가격<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
						<input class="input-pricetxt" type="text" name="" placeholder="금액입력(원)">
					</div>
					<div class="inputgroup">
						<div class="class-txt">클래스 정가<span class="text-danger">*</span><span class="error_next_box">필수 정보입니다.</span></div>
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
	 			 <button type="button" class="btn"> 취소 </button>
			</div>
			<div class="btn1 bs"> 
	 			 <button type="button" class="btn btn_type btn-agree" id="btn-check"> 확인 </button>
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
$(function() {	
	
	var addr2 = $.trim($(this).val());
	var postcode = $('#sample6_postcode').val();
	
	var checkArr = new Array(8).fill(false);
	checkAddr(postcode, addr2);
	checkArr[0] = false;
	checkArr[1] = false;
	ckColorBtn();

	var checkAll = false;
	var postcode = 0;

		$('.addr_only').click(function(){
			// 사용자가 우편번호 또는 주소 input을 클릭했을 때!
		$('#btn_post').click();
		});

		// 상세주소를 클릭하면
		$('#sample6_detailAddress').click(function(){
			var addrPost = $('#sample6_postcode').val();
			if(addrPost == '' || addrPost.length == 0) {
				$('#btn_post').click();
			}
		});
		
		//주소 유효성 체크
		$('#sample6_detailAddress').keyup(function(){ //keyup : 키보드로 입력할때 마다 
			var addr2 = $.trim($(this).val());
			var postcode = $('#sample6_postcode').val();
			checkAddr(postcode, addr2)
			
		});
		
		function checkAddr(postcode, addr2) {
			var result = joinvalidate.checkAddr(addr2, postcode); // 유효성 체크
			var addr2 = $.trim($('#sample6_detailAddress').val());
			var postcode = $('#sample6_postcode').val();
			if(result.code == 3){ // 우편번호&주소x
				checkArr[5] = false;
				checktrue(result.code, result.desc, 5,4);
			} else if(result.code == 0){ // 성공
				checkArr[5] = true;
				checktrue(result.code, result.desc, 4,4);
				checktrue(result.code, result.desc, 5,4);
			} else { // 상세주소 통과x한 모든경우
				checkArr[5] = false;
				checktrue(result.code, result.desc, 4,4);
			}
			printCheckArr(checkArr);
		} 

		
		function checktrue(code, desc, line, msg) {
			if (code == 0 || code == 10) { // 통과 o
				$('.ps_box:eq('+line+')').css('border', '1px solid #A1E7FD');
				$('.error_next_box:eq('+msg+')').css('visibility', 'visible').text(desc).css('color', '#A1E7FD');
				return true;
	
			} else { // 통과 x
				$('.ps_box:eq('+line+')')/*.css('border', '1px solid tomato');*/
				$('.error_next_box:eq('+msg+')').css('visibility', 'visible').text(desc).css('color', 'tomato');
				return false; 
				}
			};
			
			function ckColorBtn() {
				var checkAll = true;
				
				for (var i = 0; i < checkArr.length; i++) {
					if(!checkArr[i]) {
						checkAll = false;
					}
				}

				if(checkAll) {
					$('.btn_type').removeClass('btn-agree')
					.addClass('btn-primary');
					$('.btn_type').css('cursor', 'pointer');
				} else {
					$('.btn_type').removeClass('btn-primary')
					.addClass('btn-agree');
					$('.btn_type').css('cursor', 'no-drop');
				}
			}
		
	$(function() {
		
		// 클래스 제목 글자수 제한
		$('.classSubject').keyup(function(){
			
			var procoment = $(this).val().trim();
			
			$('.cnt').text(procoment.length);
			
			if(procoment.length > 40) {
				
				$(this).val(procoment.substring(0,40));
				$('.cnt').text($(this).val().length);
				$('.title-msg').css('visibility','visible').css('color','tomato');
				
			} else {
				$('.title-msg').css('visibility','hidden').css('border', '1px solid #f46665');
			}
			
		});
		
		// selectbox 선택여부 유효성 체크
		$('#classall').change(function(){	
	          if($('#classall').val() == "") {
	              alert('항목을 선택해 주세요.');
	              return false;
	          }
		});
		
		$('#tagall').change(function(){	
	          if($('#tagall').val() == "") {
	              alert('항목을 선택해 주세요.');
	              return false;
	          }
		});
		
		$('#difficultyall').change(function(){	
	          if($('#difficultyall').val() == "") {
	              alert('항목을 선택해 주세요.');
	              return false;
	          }
		});
		
		// 버튼 활성화!
		$('.int').keyup(function(){
			ckColorBtn();
		});
		
		
		
		// 확인 버튼 클릭!
		$('#btn-check').click(function(){
			 alert('test');
			var invalidAll = true;
			
			for(var i = 0; i <checkArr.length; i++) {
				if (checkArr[i]) {
			$('.error_next_box:eq('+i+')').css('visibility', 'visible')
									   		.css('color', '#3885ca');
				}
			}
			for(var i = 0; i <checkArr.length; i++) {
				console.log('포문고장?:'+i);
				if (!checkArr[i]) {
					invalidAll = false;
					console.log(i+'번지  색변경: ' + checkArr[i]); 
					$('.error_next_box:eq('+i+')').css('visibility', 'visible').css('color', 'tomato');
				}else{
					console.log('넌왜안나와'+checkArr[i]);
					console.log('조건문고장?'+i);
				}
				
			}
		});	
	});	
	
	// 개발시 사용 : 유효성 체크 전체 여부를  출력해주는 함수 (true, false)
	 function printCheckArr(checkArr) {
	 	for(var i=0; i < checkArr.length; i++) {
		 	console.log(i+'번지: ' + checkArr[i]); 
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