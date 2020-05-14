<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/3062584ccb.js" crossorigin="anonymous"></script>
	<title> SHOW :: 클래스 목록 </title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<meta charset="UTF-8">
	<style type="text/css">

		.s_list_wrap{
			width: 1250px;
			overflow: hidden;
			margin: 0 auto; 
			display: flex;
			flex-direction: column;
			align-items: center;
		}	
		.s_list_category_group {
			width: 100%;
			height: 65px;
			padding-top: 0px;
    		margin-top: 10px;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.s_category_buttons {
			display: flex;
			justify-content: center;
			align-items:center;
		}
		.s_category_buttons > li {
			width: 150px;
			display: flex;
			justify-content: center;
			align-items: center;
			z-index: 3;
		}
		select {

		    -webkit-appearance: none;  /* 네이티브 외형 감추기 */
		    -moz-appearance: none;
		    appearance: none;
		    background-color: white;/* 화살표 모양의 이미지 */
		}

		/* IE 10, 11의 네이티브 화살표 숨기기 */
		select::-ms-expand {
		    display: none;
		}

		select {

	    width: 133px; /* 원하는 너비설정 */
	    padding: 2px 2px; /* 여백으로 높이 설정 */
	    font-family: inherit;  /* 폰트 상속 */
	    font-size: 15px;
	    background-color: white;/* 네이티브 화살표를 커스텀 화살표로 대체 */
	    border: none;
	    border-radius: 0px; /* iOS 둥근모서리 제거 */
	    -webkit-appearance: none; /* 네이티브 외형 감추기 */
	    -moz-appearance: none;
	    appearance: none;
	    text-align-last: center;

		}

		.right-arrow {
			visibility: hidden;
			font-weight: bold;
			color:  #222222;
			font-size: 18px;
		}
		#first-arrow{
			visibility: visible;
		}

		.s_search_group {
			display: flex;
			justify-content: center;
			align-items: center;
			margin-right: 30px;
		}
		
		.s_list_search {
			font-size: 12px; 
			color:  #222222;
			padding-left: 5px;
			margin-top: 5px;
		}

		.gradient-border {
			box-sizing: border-box;
			display: inline-block;
		    width: 1250px;
		    height: 1px;
		    border: 1px;
			border-style: solid;
			border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
			border-image-slice: 1;
			background: #d5d5d5;
		}
		.s_list_titleNsort {
			width: 100%;
			height: 120px;
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 0 10px 0 10px; 
		}
		.s_list_title_group {
			display: flex;
			flex-direction: column;
			align-items: flex-start;
		}
		.s_list_title {
			font-size: 25px; 
			padding-bottom: 5px;
			font-weight: 600;
		}
		.common_class_list {
			display: flex;
		}
		.common_class_list > li:first-child {
			padding-left: 20px; 
		}
		.common_class_list > li {
			padding-right: 20px; 
		}
		.wrap_box_img_size {
			width: 275px;
			height: 230px;
			margin: 9px 7px 9px 8px;
			box-sizing: border-box;
			overflow: hidden;
			border: 1px solid #d5d5d5;
		}

		img.box_img_size {
			transition: transform .5s;
		}

		.box_size:hover .box_img_size {
			transform: scale(1.3);
		}
		.wrap_class_detail {
			width: 100%;
			padding: 2px 10px 10px 10px;
		}
		.wrap_class_detail > div {
			text-align : center;
			padding: 0 0 5px 0;
		}

	</style>
</head>
<body>
	<div class="s_list_wrap">
		<div class="s_list_category_group">
			<ul class="s_category_buttons">
				<li class="s_select_group">
				 <select>
				    <option value="0" id="all_ca" selected>카테고리 전체 <span style="font-size: 3px;">∇</span> </option>
				    <option value="1">베이킹</option>
				    <option value="2">악세사리</option>
				    <option value="3">디지털</option>
				    <option value="4">인테리어</option>
				    <option value="5">소품</option>
				  </select>
				</li> <span class="right-arrow" id="first-arrow"> > </span> 
				<li class="s_select_group">
				 <select id="s_select_onoff">
				    <option value="0" id="all_onoff" selected>온오프 전체 <span style="font-size: 3px;">∇</span> </option>
				    <option value="1">온라인 클래스</option>
				    <option value="2">오프라인 클래스</option>
				 </select>
					</li> <span class="right-arrow" id="second-arrow"> > </span> 
				<li class="s_select_group">
				 <select id="s_select_region1" style="visibility: hidden;">
				    <option value="0" id="all_region" selected>지역 전체 <span style="font-size: 3px;">∇</span> </option>
				    <option value="1">서울</option>
				    <option value="2">인천</option>
				    <option value="3">광주</option>
				    <option value="4">부산</option>
				    <option value="5">대구</option>
				    <option value="6">울산</option>
				    <option value="7">제주</option>
				 </select>
				</li> <span class="right-arrow" id="third-arrow"> > </span> 		
				<li class="s_select_group">
				 <select id="s_select_region2" style="display: none;">
				    <option value="0" id="all_region2" selected>광주 전체 <span style="font-size: 3px;">∇</span> </option>
				    <option value="1">동구</option>
				    <option value="2">서구</option>
				    <option value="3">남구</option>
				    <option value="4">북구</option>
				    <option value="5">광산구</option>
				 </select>
				</li> <span class="right-arrow"></span> 	
			</ul>
			<div class="s_search_group">
				<input type="text" class="s_category_search" placeholder="클래스명 / 작가 검색" style="border: none; margin-top: 3px;"> <span class="s_list_search"><i class="fas fa-search"></i></span><span class="right-arrow second-arrow"></span> 
			</div>	
		</div>
		<div class="gradient-border"></div>
		<div class="s_list_titleNsort">
			<div class="s_list_title_group">
				<div class="s_list_title"> 악세사리 </div>
				<div class="s_list_sub_title" style="font-size: 16px;"> 나만의 반짝이는 악세사리를 만들어보세요! </div>
			</div>
			<div class="s_list_sort">
				<select id="s_class_list_order" style="font-size:14px; width: 90px;">
				  <option value="0"> 정렬 <span style="font-size:3px;">∇</span></option>
				  <option value="s_class_list_new">최신순</option>
				  <option value="s_class_list_heart">인기순</option>
				</select>
			</div>
		</div>
		<div class="s_class_list_group">
			<ul class="common_class_list">
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner13.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner14.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner15.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner17.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
					</ul>
		</div>
		<div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){
	$('#s_select_onoff').change(function(){ 
			$("#s_select_onoff option:selected").each(function() {
				if($(this).val()== '2'){ 
					$("#s_select_region1").css('visibility','visible');
					$(".right-arrow:eq(1)").css('visibility','visible');
				} else {
					$("#s_select_region2").css('display','none');
					$(".right-arrow:eq(2)").css('visibility','hidden');
					$("#s_select_region1").css('visibility','hidden');
					$(".right-arrow:eq(1)").css('visibility','hidden');
					$("#s_select_region1").val("0").prop("selected", true);
					
				}
			});
		});
	$('#s_select_region1').change(function(){ 
			$("#s_select_region1 option:selected").each(function() {
				if($(this).val()== '3'){ //직접입력일 경우
					$("#s_select_region2").css('display','block');
					$(".right-arrow:eq(2)").css('visibility','visible');
				}  else {
					$("#s_select_region2").css('display','none');
					$(".right-arrow:eq(2)").css('visibility','hidden');
					$("#s_select_region2").val("0").prop("selected", true);
				}
			});
		});
});
</script>
</html>