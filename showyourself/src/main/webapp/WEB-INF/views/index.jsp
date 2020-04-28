<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/3062584ccb.js" crossorigin="anonymous"></script>
	<title> YOURSELF :: 작품 목록 </title>
	<link rel="stylesheet" type="text/css" href="common.css">
	<meta charset="UTF-8">
	<style type="text/css">
		*{box-sizing:border-box;}
		
		body{
		margin: 0;
		padding: 0;
		font-size: 14px;
		color: rgba(0,0,0,0.7);		
		}

		/* width */
		::-webkit-scrollbar {
		  width: 10px;
		}

		/* Track */
		::-webkit-scrollbar-track {
		  background: #f1f1f1; 
		}
		 
		/* Handle */
		::-webkit-scrollbar-thumb {
		  background: #888; 
		}
	

		.y_index_wrap{
			display: flex;
			flex-direction: column;
			width: 1400px;
			overflow: hidden;
			margin: 0 auto; 
			display: flex;
			flex-direction: column;
			align-items: center;
		}	

		.y_category_group{
			display: flex;
			flex-direction: column;
			align-items: center;
			width: 1200px;
			padding: 30px 0 10px 0;
		}
		.y_category{
			display: flex;
			width: 100%;
			justify-content: center;
		}
		.y_category_list{
			display: flex;
			width: 100%;
			justify-content: center;
			align-items: flex-end;
			padding-bottom: 15px; 
		}
		.y_category_list > li {
			padding: 20px 20px 0 0;
		}
		.y_category_list > li:first-child{
			padding-left: 20px;
		} 
		.index_category_icon {
			width: 88px;
			height: 88px;
		}
		.y_category_list a {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		.y_follow_yn {

			display: flex;
			justify-content: center;
			width: 400px;
			padding: 30px 0 30px 0; 
		}

		.btn1 {
			margin: 0;
		}
		.y_content {
			max-width: 905px;
			height: 100%;
			padding: 0px 0 30px 0;
		}

		.y_class{
			display: block;
			width: 100%;
			height: 100%;
		}
		.y_class > li {
			float: left;
			padding: 3px 3px 10px 3px;
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

	
			/*모달창 start*/

		.index_modal_wrap {
			position: fixed;
			z-index: 5;
			display: none;
			background-color: rgba(0,0,0,0.3);
			overflow: auto;
			width: 100%;
			height: 100%;
			justify-content: center;
			align-items: center;
	
		}
		.login_close{
			width: 30px;
			height: 30px;
			position: fixed;
			color: white;
			font-size:30px;
			top: 10px;
			right: 10px;
			cursor: pointer;
		}
		.index_modal_content {
			position: relative;
			display: flex;
			width: 935px;
			height: 600px;
			background-color: white;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
						0 4px 20 px 0 rgba(0,0,0,0.19);
			border-radius: 2px;
			box-sizing: border-box;
			overflow: hidden;
			color: rgba(0,0,0,0.7);
		}
		
		.index_modal_photo {
			display: flex;
			flex-direction: column;
			width: 600px;
			height: 600px;
			padding: 15px;
			border-right: 1px solid #d5d5d5;
		}

		/* Slideshow container */
		.slideshow-container {
		  position: relative;	
		  width: 100%;
		  height: 85%;
		  display: flex;
		  align-items: center;
		}
		/* Hide the imgs by default */
		.mySlides {
		  display: none;
		  overflow:hidden;
		}
		/* Next & previous buttons */
		.prev, .next {
		  cursor: pointer;
		  position: absolute;
		  top: 50%;
		  width: auto;
		  margin-top: -22px;
		  padding: 16px;
		  color: white;
		  font-weight: bold;
		  font-size: 18px;
		  transition: 0.6s ease;
		  border-radius: 0 3px 3px 0;
		  user-select: none;
		}
		/* Position the "next button" to the right */
		.next {
		  right: 0;
		  border-radius: 3px 0 0 3px;
		}
		.prev {
			left: 0;
		}
		/* On hover, add a black background color with a little bit see-through */
		.prev:hover, .next:hover {
		  color: rgba(0,0,0,0.4);
		}
		/* Fading animation */
		.fade {
		  -webkit-animation-name: fade;
		  -webkit-animation-duration: 1.5s;
		  animation-name: fade;
		  animation-duration: 1.5s;
		}
		@-webkit-keyframes fade {
		  from {opacity: .4}
		  to {opacity: 1}
		}
		@keyframes fade {
		  from {opacity: .4}
		  to {opacity: 1}
		}

		.index_modal_photo_detail{
			display: flex;
			flex-direction: column;
			align-items: flex-start;
			justify-content: center;
			padding: 10px 10px 0 0;
			width: 100%;
			height: 15%;
		}
		.index_modal_photo_detail > li {
			padding: 0 0 3px 5px;
		}
		.index_modal_contents {
			width: 335px;
		}
		
		.index_modal_profile {
			display: flex;
			justify-content: center;
			width: 100%;
			height: 15%;
			border-bottom: 1px solid #d5d5d5;
		}
		.index_modal_profile_photo {
			display: flex;
			align-items: center;
			justify-content: center;
			height: 100%;
		}
		.index_modal_profile_img {
			width: 70px;
			height: 70px;
			border-radius: 100px;
			overflow: hidden;
			object-fit: cover;
			border: 1px solid #d5d5d5;
		
		}
		.index_modal_profile_user {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			padding-left: 15px;
			height: 100%;
		}
		.index_modal_profile_id {
			width: 100%;
			overflow: hidden;
			text-align: center;
			font-size: 22px;
			font-weight: bold;
		}
		.index_modal_profile_userclass {
			width: 100%;
		}
		.index_modal_comments {
			width: 100%;
			height: 70%;
			overflow-x: hidden;
			overflow-y: auto;
			border-bottom: 1px solid #d5d5d5;
		}
		.index_modal_comment_list {
			width: 100%;
			height: 100%; 
		}
		.index_modal_one_comment {
			display: flex;
			width: 100%;
			padding: 3px;
		}
		.one_comment_photo {
			display: flex;
			justify-content: center;
			align-items: center;
			padding: 5px;
		}
		.index_modal_comment_img {
			width: 52px;
			height: 52px;
			border-radius: 100px;
			overflow:hidden;
			object-fit: cover;
			border: 1px solid #d5d5d5;
		}
		.one_comment_content {
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: flex-start;
		}
		.one_comment {
			padding: 5px;
		}
		.one_comment_date {
			padding: 0 5px 5px 5px;	
		}

		.index_modal_comment_input_group {
			display: flex;
			width: 100%;
			height: 15%;
		}
		.index_modal_comment_input {
			width: 80%;
			height: 100%;
			border-style: none;
			padding-left: 15px; 
		}
		.index_modal_comment_submit {
			width: 20%;
			height: 100%;
			background-color: transparent;
			border-style: none;
			color: rgba(0,0,0,0.7);
		}
	

		/*모달창 end*/

		
	</style>
</head>
<body>

<!-- 모달창 start -->
<div class="index_modal_wrap">
	<div class="login_close"> Ⅹ </i></div>
		<div class="index_modal_content">
			<div class="index_modal_photo">
				<div class="slideshow-container">
					  <!-- Full-width imgs with number and caption text -->
					  <div class="mySlides fade">
					    <img src="../img/35.jpg" width="100%" height="100%" style="object-fit: cover;">
					  </div>

					  <div class="mySlides fade">
					    <img src="../img/36.jpg" width="100%" height="100%" style="object-fit: cover;">
					  </div>

					  <div class="mySlides fade">
					    <img src="../img/37.jpg" width="100%" height="100%" style="object-fit: cover;">
					  </div>
					  <div class="mySlides fade">
					    <img src="../img/38.jpg" width="100%" height="100%" style="object-fit: cover;">
					  </div>
					  <!-- Next and previous buttons -->
					  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
					  <a class="next" onclick="plusSlides(1)">&#10095;</a>


					</div>

				<ul class="index_modal_photo_detail">
					<li style="font-size:12px; font-weight: bold">인테리어 | 2020-04-07</li>
					<li style="font-size:14px">♡138 사랑스러운 푸크린!</li>
					<li style="font-size:14px">#푸크린 #핑크핑크해</li>
					<li style="font-size:12px"></li>
				</ul>
			</div>
			<div class="index_modal_contents">
				<div class="index_modal_profile">
					<div class="index_modal_profile_photo"><img class="index_modal_profile_img" src="../img/파오리.png"></div>
					<div class="index_modal_profile_user">
						<div class="index_modal_profile_id"> PAO LIPA</div>
						<div class="index_modal_profile_userclass"> 수강 중인 강의 : 3개  </div>
					</div>
				</div>
				<div class="index_modal_comments">
					<ul class="index_modal_comment_list">
						<li class="index_modal_one_comment">
							<div class="one_comment_photo"><img class="index_modal_comment_img" src="../img/펭도리.png"></div>
							<div class="one_comment_content">
								<div class="one_comment" style="font-size: 14px;">우와 정말 귀여운 푸크린이네요.</div>
								<div class="one_comment_date" style="font-size: 12px;"> 작성일: 2020-04-23 </div>
							</div>
						</li>
					</ul>	
				</div>
				<div class="index_modal_comment_input_group">
					<input type="text" class="index_modal_comment_input" placeholder="댓글을 입력하세요"></input>
					<button type="submit" class="index_modal_comment_submit"> POST </button>
				</div>
			</div>
		</div>
	</div>

<!-- 모달창 end -->




	<div class="y_index_wrap">
		<div class="y_category_group">
			<div class="y_category">
				<ul class="y_category_list">
					<li><a id="l1" href="#"><img class="index_category_icon" src="../img/디지털2.png"><span>디지털</span></a></li>
					<li><a id="l2" href="#"><img class="index_category_icon" src="../img/베이킹2.png"><span>베이킹</span></a></li>
					<li><a id="l3" href="#"><img class="index_category_icon" src="../img/악세사리2.png"><span>악세사리</span></a></li>
					<li><a id="l4" href="#"><img class="index_category_icon" src="../img/인테리어2.png"><span>인테리어</span></a></li>
					<li><a id="l5" href="#"><img class="index_category_icon" src="../img/소품2.png"><span>소품</span></a></li>
				</ul>	
			</div>
			<div class="y_follow_yn">
				<div class="btn1"> 
	 				 <button class="btn2"> 전체 </button>
				</div>
				<div class="btn1"> 
	 				 <button class="btn2"> 팔로우 </button>
				</div>
				<div class="btn1"> 
	 				 <button class="btn2"> 글쓰기 </button>
				</div>
			</div>
		</div>
		<div class="y_content">
			<div class="y_class_list">
				<ul class="y_class">
					<li><a id="l1" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/22.jpg"></div>
							<div>인테리어</div>
							<div>#하루 #하루하루해</div>
							<div>하와이에서 하루!</div>
						</div>
					</a></li>

					<li><a id="l1" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/28.jpg"></div>
							<div>인테리어</div>
							<div>#푸크린 #핑크핑크해</div>
							<div>사랑스러운 푸크린!</div>
						</div>
					</a></li>

					<li><a id="l2" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/12.jpg"></div>
							<div>인테리어</div>
							<div>#푸크린 #핑크핑크해</div>
							<div>사랑스러운 푸크린!</div>
						</div></a>
					</li>

					<li><a id="l3" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/13.jpg"></div>
							<div>인테리어</div>
							<div>#푸크린 #핑크핑크해</div>
							<div>사랑스러운 푸크린!</div>
						</div>
					</a></li>

					<li><a id="l3" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/14.jpg"></div>
							<div>인테리어</div>
							<div>#푸크린 #핑크핑크해</div>
							<div>사랑스러운 푸크린!</div>
						</div>
					</a></li>

					<li><a id="l3" href="#">
						<div class="box_size">
							<div class="wrap_box_img_size"><img class="box_img_size" src="../img/20.jpg"></div>
							<div>인테리어</div>
							<div>#푸크린 #핑크핑크해</div>
							<div>사랑스러운 푸크린!</div>
						</div>
					</a></li>

				</ul>	
			</div>
		</div>	
	</div>	
</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		var slideIndex = 1;
		 oneSlide(slideIndex);

		$(document).on('click','.y_class > li', function(){
			$('.index_modal_wrap').css('display','flex');
		});

		// Next/previous controls
		function plusSlides(n) {		
			 oneSlide(slideIndex += n);
		}

		function oneSlide(n) {
		  var i;
		  var slide = document.getElementsByClassName("mySlides");
		  if (n > slide.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slide.length}
		  for (i = 0; i < slide.length; i++) {
		      slide[i].style.display = "none";
		  }

		  slide[slideIndex-1].style.display = "flex";
		}

		$(document).on('click','.login_close', function(){
			$('.index_modal_wrap').css('display','none');
		
		});

	</script>
</html>