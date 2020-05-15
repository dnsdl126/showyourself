<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<!DOCTYPE html>
<head>
	<script src="https://kit.fontawesome.com/3062584ccb.js" crossorigin="anonymous"></script>
	<title> SHOW :: 메인페이지 </title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<meta charset="UTF-8">
	<style type="text/css">
		*{box-sizing:border-box;}
		
		body{
		margin: 0;
		padding: 0;
		font-size: 14px;
		color: rgba(0,0,0,0.7);		
		}
		
		.s_index_banner > img {
			width: 100%;
			margin-bottom: 40px;
  			z-index: 1;
		}

		.s_index_wrap{
			display: flex;
			flex-direction: column;
			width: 1400px;
			overflow: hidden;
			margin: 0 auto; 
			display: flex;
			flex-direction: column;
			align-items: center;
		}	

		.s_common_group {
			width: 100%;
			height: 440px;
			margin: 0 auto;
		}
		.s_titleNmore{
			width: 1302px;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.s_class_more {
			font-size: 14px;
			font-weight: 500;
		}
		.s_common_title {
			width: 320px;
			height: 15%;
			display: flex;
			justify-content: flex-start;
			align-items: center;
			font-size: 20px;
			padding: 15px;
			margin-left: 83px;
		}
		.s_common_class_list_group {
			display: flex;
			justify-content: center;
		}
		.s_left {
			margin: auto 0;
			font-size: 20px;
		}
		.s_right {
			margin: auto 0;
			font-size: 20px;
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

		.s_on_category_group {
			width: 100%;
			height: 200px;
			display: flex;
			flex-direction: column;
		}
		.s_category_title {
			width: 300px;
			text-align: left;
			line-height: 30px;
			font-size: 20px;
			padding: 15px;
			margin-left: 83px;
		}

		.s_on_categroy_list_group {
			width: 1220px;
			height: 70px;
			padding: 10px 0 10px 0;
			margin: 0 auto;
		}
		.s_on_category_list {
			display: flex;
			justify-content: space-around;
			align-items: center;
		    margin: auto 0;
		}
		.s_on_category_list > li:first-child {
			padding-left: 30px;
		}
		.s_on_category_list > li {
			padding-right: 30px;
		}
		.s_on_category_list div {
			width: 182px;
			height: 65px;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 20px;
			border: transparent;
			box-shadow: 3px 3px 2px #d5d5d5;
			border-radius: 10px;
			transition: transform .5s;
			transform: scale(0.9);
		} 
		.s_on_category_list div:hover {
			transform: scale(1.0);
			box-shadow: 3px 3px 6px #d5d5d5;
		}
		.s_on_category_list img {
			margin-right: 10px;
		}

		.top_btn {
			bottom: 25px;
			background-color: #D1C2FF;
			display: none;
		}
		.fix_btn {
			right: 20px;
		}
		.fix_btn {
			position: fixed;
			color: white;
			width: 70px;
			height: 70px;
			border-radius: 50%;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 30px;
			cursor: pointer;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,.19);
		}
		.fix_btn > i {
			transition: transform .3s;
		}
		.fix_btn:hover > i {
			transform: scale(1.3);
		}
	</style>
</head>
<body>
	<div class="s_index_banner"><img src="${path}/resources/img/realbanner.png"></div>
	<div class="s_index_wrap">
		<div class="s_common_group">
			<div class="s_titleNmore">
				<div class="s_common_title" style="font-weight:600;"> <i class="fas fa-palette" style="padding-right:5px;"></i> 내 주변 오프라인  클래스 </div>
				<a href="${path}/show/class/classlist" class="s_class_more"> 더보기 + </a>
			</div>
			<div class=s_common_class_list_group>
				<span class="s_left"><i class="fas fa-chevron-left"></i></span>
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
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner2.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner3.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner4.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
					</ul>
				<span class="s_right"><i class="fas fa-chevron-right"></i></span>
			</div>
		</div>
		<div class="s_on_category_group">
			<div class="s_category_title" style="font-weight:600;"> <i class="fas fa-bars" style="padding-right:5px;"></i> 카테고리 </div>
			<div class="s_on_categroy_list_group">
				<ul class="s_on_category_list">
					<li><a href="#"><div class="ct_digital"><img src="${path}/resources/img/카테고리2.png" width="50px" height="50px"> 클래스 전체 </div></a></li>
					<li><a href="#"><div class="ct_digital"><img src="${path}/resources/img/디지털2.png" width="50px" height="50px"> 디지털 </div></a></li>
					<li><a href="#"><div class="ct_baking"><img src="${path}/resources/img/베이킹2.png" width="50px" height="50px"> 베이킹 </div></a></li>
					<li><a href="#"><div class="ct_accessory"><img src="${path}/resources/img/악세사리2.png" width="50px" height="50px"> 악세사리 </div></a></li>
					<li><a href="#"><div class="ct_interior"><img src="${path}/resources/img/인테리어2.png" width="50px" height="50px"> 인테리어 </div></a></li>
					<li><a href="#"><div class="ct_item"><img src="${path}/resources/img/소품2.png" width="50px" height="50px"> 소품 </div></a></li>
				</ul>
			</div>
		</div>

			<div class="s_common_group">
			<div class="s_titleNmore">	
				<div class="s_common_title" style="font-weight:600;"> <i class="fas fa-highlighter" style="padding-right:5px;"></i> BEST 클래스 </div>
				<a href="${path}/show/class/classlist" class="s_class_more"> 더보기 + </a>
			</div>
			<div class=s_common_class_list_group>
				<span class="s_left"><i class="fas fa-chevron-left"></i></span>
					<ul class="common_class_list">
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner5.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner6.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner7.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner8.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
					</ul>
				<span class="s_right"><i class="fas fa-chevron-right"></i></span>
			</div>
		</div>
		<div class="s_common_group">
			<div class="s_titleNmore">	
				<div class="s_common_title" style="font-weight:600;"> <i class="fas fa-heart" style="padding-right:5px;"></i> 신규 클래스 </div>
				<a href="${path}/show/class/classlist" class="s_class_more"> 더보기 + </a>
			</div>
			<div class=s_common_class_list_group>
				<span class="s_left"><i class="fas fa-chevron-left"></i></span>
					<ul class="common_class_list">
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner9.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
						<li><a href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner10.jpg"></div>
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
							<div class="wrap_box_img_size"><img class="box_img_size" src="${path}/resources/img/banner12.jpg"></div>
							<div class="wrap_class_detail">
								<div><i class="fas fa-map-marker-alt"></i><span style="margin-right: 5px;"> 광주 광산구</span><span style="font-size: 12px;">인테리어</span></div>
								<div style="font-weight: 600;">나무위에 새겨지는 따스함, 우드카빙 클래스</div>
								<div>130,000원</div>
							</div>
						</div></a></li>
					</ul>
				<span class="s_right"><i class="fas fa-chevron-right"></i></span>
			</div>
		</div>
	</div>
	<div class="top_btn fix_btn"><i class="fas fa-arrow-up"></i></div>
</body>
<%@ include file="../include/footer.jsp" %>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	// Scroll TOP버튼 생성 및 TOP으로 이동
	$(window).scroll(function(){ //스크롤이 움직이면
		if(document.body.scrollTop > 80 || document.documentElement.scrollTop > 80){
			$('.top_btn').fadeIn().css("display","flex"); 
			// fadeIn은 잔상효과처럼 Top버튼이 나오는 것
		} else {
			$('.top_btn').fadeOut();
		}
	});
	$('.top_btn').click(function(){
		// Top버튼을 클릭했을때 이 동작을 하게끔 만드는 것
		$('html, body').animate({scrollTop : 0}, 800);
	});
</script>
</html>