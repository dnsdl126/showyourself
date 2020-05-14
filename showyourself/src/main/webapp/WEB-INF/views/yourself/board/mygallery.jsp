<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOURSELF: 나의 갤러리 페이지</title>
<script src="https://kit.fontawesome.com/b9b96aae93.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<style type="text/css">
	/* 모달창 관련 css */
		.foll_wrap{
			position: fixed;
			z-index: 1000;
			background-color: rgba(0,0,0,0.4);
			overflow: auto;
			width: 100%;
			height: 100%;
			display: flex;
			justify-content: center;
			align-items: center;
			display: none; 
		}	
		button.follo_modal_x{
			border: 1px solid transparent;
			background-color: white;
			font-size: 18px;
			cursor: pointer;
		}
		button.follo_delect_btn{
			border: 1px solid #A1E7FD;
			background-color: white;
		    font-size: 12px;
		    border-radius: 2px;
		    height: 28px;
		    width: 50px;
		    outline: none;
		    cursor: pointer;
		}
		div.follw_content{
			width: 283px;
		    margin: 0 auto;
		    background-color: white;
		    border-radius: 3px;
		}		
		div.foll_member::-webkit-scrollbar {
 			 width: 10px;			 
		}
		div.foll_member::-webkit-scrollbar-track {
		  background: #f1f1f1; 
		}

		/* Handle */
		div.foll_member::-webkit-scrollbar-thumb {
		  background: #d5d5d5; 
		}

		/* Handle on hover */
		div.foll_member::-webkit-scrollbar-thumb:hover {
		  background: #555; 
		}
		div.foll_modal_header{
			display: flex;
			justify-content: space-between;
		    margin-left: 102px;
		    padding: 3px;
		}
		div.follo_modal_title{
			margin: 5px;
		}
		div.foll_member{
			display: block;
			width: 281px;
			height: 316px;
			overflow: auto;
			border-top: 1px solid #d5d5d5;
		}
		
		div.follo_list{
			display: flex;
			justify-content: space-between;
			padding: 9px;
		}
		div.follo_id_wrap{
			display: flex;
		}
		img.follo_img{
			width: 35px;
			height: 35px;
			border-radius: 70%;
		}
		div.follo_id{
			padding: 8px;
		}


/* 팔로우 모달창 */
		.follow_wrap{
			position: fixed;
			z-index: 1000;
			background-color: rgba(0,0,0,0.4);
			overflow: auto;
			width: 100%;
			height: 100%;
			display: flex;
			justify-content: center;
			align-items: center;
			display: none; 
		}	
		button.follo_modal_x{
			border: 1px solid transparent;
			background-color: white;
			font-size: 18px;
			cursor: pointer;
		}
		button.follow_btn{
			border: 1px solid #F0ACF2;
			background-color: white;
		    font-size: 12px;
		    border-radius: 2px;
		    height: 28px;
		    width: 50px;
		    outline: none;
		    cursor: pointer;
		}
		
		div.follw_content{
			width: 283px;
		    margin: 0 auto;
		    background-color: white;
		    border-radius: 3px;
		}
		
		div.foll_member::-webkit-scrollbar {
 			 width: 10px;			 
		}

		div.foll_member::-webkit-scrollbar-track {
		  background: #f1f1f1; 
		}
 
		/* Handle */
		div.foll_member::-webkit-scrollbar-thumb {
		  background: #d5d5d5; 
		}

		/* Handle on hover */
		div.foll_member::-webkit-scrollbar-thumb:hover {
		  background: #555; 
		}
		div.foll_modal_header{
			display: flex;
			justify-content: space-between;
		    margin-left: 102px;
		    padding: 3px;
		}
		div.follo_modal_title{
			margin: 5px;
		}
		div.foll_member{
			display: block;
			width: 281px;
			height: 316px;
			overflow: auto;
			border-top: 1px solid #d5d5d5;
		}
		
		div.follo_list{
			display: flex;
			justify-content: space-between;
			padding: 9px;
		}
		div.follo_id_wrap{
			display: flex;
		}
		img.follo_img{
			width: 35px;
			height: 35px;
			border-radius: 70%;
		}
		div.follo_id{
			padding: 8px;
		}
 /* 팔로워,팔로우 목록창 관련 css */
	a{
		text-decoration: none;
	}	

	/* sns 헤더라인 */
	.sns_wrap{
		margin-top: 30px;
	}
	.sns_header{
		display: flex;
		justify-content: space-between;
		width: 440px;
		margin-left: 600px;
	
	}
	.sns_userid{
		font-size: 26px;
		font-weight: 600;
	}
	.sns_title{
		display: flex;
	}		
	.sns_mem_img{
		width: 117px;
		height: 111px;
		border-radius: 70%;
		object-fit: cover;

	}
	.sns_userinfo {
		margin: 12px 25px;
	}
	.sns_user_setting{
		display: flex;

	}

	.sns_img{
		display: flex;
		flex-direction: column;
		object-fit: cover;
    	margin: 13px 40px 0 40px;
	}
	
	.s_btn i{
		cursor: pointer;
		color: #d5d5d5;
		font-size:21px;
	}
	.s_btn:hover i{
		color: #2d3436;
		font-size:21px;
	}
	.sns_write{
		margin-top: 3px;
	}
	.sns_interval{
		margin:5px 0;
	}
	.sns_intro{
		display: flex;
		margin:7px 0;
	}
	.sns_info{
		margin-top:17px;
	}
	.sns_infonum{
		margin-left: 5px;
	}
	/* 프로필 밑 빈 공간라인 */
	.sns_line{
		height: 31px;
		width: 935px;
		border-bottom: 1px solid #d5d5d5;
		margin: 0 auto;
	}
	/* 게시물, 나의클래스 라인 */
	.sns_menu_box{
		width: 80px;
		height: 78px;
	}
	div.sns_menu_box: hover {
		border-top : 5px solid;
	}
	div.sns_postinglist{
		width: 53px;
		height: 48px;
		background-image: url('${path}/resources/img/gall.png');
		background-size: cover;
		border-top: 3px solid gray;
		cursor: pointer;	
		margin: 0 auto;		
	}

	.sns_postinglist:hover {
		width: 53px;
		height: 48px;
		border-top: 3px solid #D1C2FF;
		background-image: url('${path}/resources/img/gall_on.png');
		background-size: cover;
		cursor: pointer;	
	}
	.sns_classlist{
		width: 53px;
		height: 48px;
		background-image: url('${path}/resources/img/myclass.png');
		background-size: cover;
		border-top: 3px solid gray;
		cursor: pointer;			
		margin: 0 auto;	
	}
	.sns_classlist:hover {
		width: 53px;
		height: 48px;
		border-top: 3px solid #D1C2FF;
		background-image: url('${path}/resources/img/myclass_on.png');
		background-size: cover;
		cursor: pointer;	
	}
	.sns_menu{
	      display: flex;
 		  width: 561px;
    	  margin: 0 auto;
   		  justify-content: space-around;
		  margin-bottom: 38px;
	}	
	.sns_icon{
		width: 48px;
		height: 41px;
		margin: 2px 0 0 20px;
	}
	.snsnposting_icon: hover a {
		border-top: 2px solid ;
		
	}
	.sns_text{
		text-align: center;
		margin-top: 5px;
		margin-left:8px;
	}
	.sns_two_btn{
		margin-right: 7px;
    	width: 130px;
    	display: flex;	
	}
	.sns_twobutton{
		display: flex;
    	justify-content: center;
	}
	
	
</style>
</head>
<body>
<!-- 모달창 관련  -->
	<div class="foll_wrap">
		<div class="follw_content">
			<div class="foll_modal_header">
				<div class="follo_modal_title">팔 로 워</div>
				<button  class="follo_modal_x"><i class="fas fa-times"></i></button> 
			</div>

			<div class="foll_member">
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0216</div>
					</div>
					<button type="button" class="follo_delect_btn">삭제</button>
				</div>								
			</div>
		</div>
	</div>


		<div class="follow_wrap">
		<div class="follw_content">
			<div class="foll_modal_header">
				<div class="follo_modal_title">팔 로 잉</div>
				<button class="follo_modal_x"><i class="fas fa-times"></i></button> 
			</div>
			<div class="foll_member">
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>			
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	
				<div class="follo_list">
					<div class="follo_id_wrap">
						<img src="${path}/resources/img/follow.jpg" class="follo_img">	
						<div class="follo_id">hobi_0218</div>
					</div>
					<button class="follow_btn">팔로잉</button>
				</div>	

			</div>
					
			</div>
		</div>
	</div>
	<!-- 팔로우,팔로워 목록창 -->
	<div class="sns_wrap">
		
		<div class="sns_header">
			<div class="sns_img">
				<img src="${path}/resources/img/mygallery.PNG" class="sns_mem_img">
				<span style="margin: 5px 18px;">Show 작가</span>
			</div>
			<div class="sns_userinfo">				
				<div class="sns_user_setting sns_interval">
					<div class="sns_userid">showyourself</div>
					<div class="s_btn sns_user_icon"><a href="#"><i class="fas fa-cog" style="margin: 5px;"></i></a></div>  
				</div>						
				<div class="sns_intro sns_interval" style="display: flex;">호비가 그린 그림</div>				
				
				<div class="sns_info">
					<div class="sns_posting_num sns_title sns_interval"">
						<div>게시물: </div>
						<div class="sns_infonum">134</div>
					</div>
					<div class="sns_title sns_interval">
						<div>팔로워: </div>
						<div class="sns_infonum sns_followers"><a href="#">144</a></div>
					</div>
					<div class="sns_title sns_interval">
						<div>팔로잉: </div>
						<div class="sns_infonum sns_follow"><a href="#">155</a></div>
					</div>
					</div>			
			</div>			
		</div>
		<div class="sns_twobutton">
			<button type="button" class="btn sns_two_btn" id="sns_foll_btn">팔로우</button>
			<button type="button" class="btn sns_two_btn" id="sns_foll_btn">메세지or글쓰기</button>
		</div>
		<div class="sns_line"></div>			
		<div class="sns_menu">
			<div class="sns_menu_box">
				<div class="sns_postinglist"></div>
				<a href="#"><div class="sns_text"  style="margin-left:17px;">게시물</div></a>				
			</div>	
			<div class="sns_menu_box">
				<div class="sns_classlist"></div>					
				<a href="#"><div class="sns_text">나의 클래스</div>	</a>				
			</div>
		</div>
		
		<div class="three_box" style="margin:0 auto;">
			<div class="box_size">
				<div class="wrap_box_img_size">
					<img src="${path}/resources/img/hobiDrawing1.jpg" class="box_img_size">
				</div>		
			</div>
			<div class="box_size">	
				<div class="wrap_box_img_size">
					<img src="${path}/resources/img/hobiDrawing2.jpg" class="box_img_size">
				</div>		
			</div>
			<div class="box_size">	
				<div class="wrap_box_img_size">
					<img src="${path}/resources/img/hobiDrawing3.jpg" class="box_img_size">
				</div>		
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
	/*팔로우 버튼 클릭시 모달창 오픈*/	
	$(document).on('click','.sns_followers',function(){
		$('.foll_wrap').css('display','flex');
	});


	/*모달창 닫기 버튼 클릭시*/
	$(document).on('click','.follo_modal_x',function(){
		$('.foll_wrap').css('display','none');
	});


	/*팔로워 버튼 클릭시 모달창 오픈*/
	$(document).on('click','.sns_follow', function(){
		$('.follow_wrap').css('display','flex');
	});

	$(document).on('click','.follo_modal_x',function(){
		$('.follow_wrap').css('display','none');
	})




</script>
</html>