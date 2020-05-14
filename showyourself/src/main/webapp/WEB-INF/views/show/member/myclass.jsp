<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>나의클래스</title>

<style type="text/css">

	.myclass_tot_wrap{
		margin: 0 auto;
		width: 950px;
		height: 1200px;		
	}
	.myclass_icontxt_wrap{
		margin-bottom: 10px;
		display:flex;
	}
	.myclass_icontxt_wrap > span{
		height: 60px;
		line-height: 60px;
		margin-right: 10px;
		
	}
	.myclass_icon{
		float:left;
	}
	.myclass_content{
		margin-bottom: 50px;		
	}
	.myclass_content > div{
		box-shadow: 10px 10px 10px -12px gray;
		height: 225px;
		width: 450px;
		box-sizing: border-box;
		padding: 20px 30px;
	}
	.flex{
		display: flex;		
	}
	.jcsb{
		justify-content: space-between;
	}
	.myclass_profile_photo{
		height: 150px;
		width: 150px;
		border : 1px solid #B8B4B8;		
		overflow: hidden;
		margin-right:20px;
	}
	.border-radius{
	border-radius: 50%;
	}
	.myclass_bc{
		border:1px solid #C2CDFF;
	}
	
	.myclass_profile_content{
		width: 210px;
		
		margin: auto;

	}	
	.myclass_tot_wrap{
		font-size: 15px;
	}
	.myclass_wishlist_id{
		font-size: 17px;
		height: 25px;
		line-height: 25px;
	}
	.myclass_wishlist_title{
		margin-bottom:20px;
	}
	.myclass_margin_bottom{
		margin-bottom:10px;
		font-size: 23px;
        font-weight: bold;
	}
	
	.font_title {
	font-size: 25px;
	font-weight: bold;
	
	
	}
	
	
	.myclass_profile_name_css {
	
	margin-bottom: 5px;
	
	
	}
	.hidden{
	visiblity:hidden;
	}
</style>
</head>

<body>
	<div class="myclass_tot_wrap">
		<div class="myclass_icontxt_wrap">
			<div class="myclass_icon"><img src ="${path}/resources/img/my_class_on.png" style = "width:35px; height:35px;"/></div>
			<div class="myclass_icon" style ="font-size:28px;">나의클래스</div>
			
		</div>
		<div class="myclass_content_wrap">
			<div class="myclass_content flex jcsb">
				<div class="myclass_profile_wrap myclass_bc">
					<div class="myclass_profile_txt font_title myclass_margin_bottom">내 프로필</div>
					<div class="myclass_profile_wrap flex">
						
						<div class="myclass_profile_photo border-radius"><img src="${path}/resources/img/13.jpg" style="width: 140px;"/></div>
						
						<div class="myclass_profile_content"style="align-items: center;">
							<div class="myclass_profile_name font_title myclass_profile_name_css">조운이</div>
							<div class="myclass_profile_id myclass_profile_name_css">아이디 : 조운이@조운이.조운이</div>
							<div class="myclass_profile_lecture myclass_profile_name_css">수강중인 강의 : x건 </div>
							<button class="btn myclass_profile_name_css"><a href="${path}/show/class/classdetail"> 내 모든강의</a> </button>
						</div>
					</div>
				</div>
			
				<div class="myclass_blecture_wrap myclass_bc">
					<div class="myclass_blecture_txt font_title myclass_margin_bottom"> 구매강의</div>
					
					<div class="flex jcsb">
						<div class="myclass_profile_photo">
						<img src="${path}/resources/img/13.jpg" style="width: 140px;height:140px;">
						</div>
						<div class="myclass_profile_content">
							<div class="myclass_blecture_title font_title" style="margin-bottom: 5px;">잠만보 만들기</div>
							<div class="myclass_profile_id myclass_profile_name_css hidden">글</div>
							<div class="myclass_profile_lecture myclass_profile_name_css hidden">글</div>
							<button class="btn" >이어서 학습</button>
							
						</div> 
					</div>

				</div>	
			</div>
			<div class="myclass_content flex jcsb">
				<div class="myclass_wishlist_wrap myclass_bc">
					<div class="myclass_wishlist_title font_title">위시리스트</div>		
					<div class="myclass_wishlist_id"><a href="#">시윤언니 디자인 많이주기</a></div>
					<div class="myclass_wishlist_id"><a href="#">혜원이는 기능 개 많이주기</a></div>
					<div class="myclass_wishlist_id"><a href="#">종희는 숙제 완전 개 많이주기</a></div>
					<div class="myclass_wishlist_id"><a href="#">운이는 그냥 완전 개 많이주기</a></div>
				</div>
				<div class="myclass_question_wrap myclass_bc">
					<div class="myclass_wishlist_title font_title">질문</div>		
					<div class="myclass_wishlist_id"><a href="#">시윤언니 폭탄준거는</a></div>
					<div class="myclass_wishlist_id"><a href="#">혜원이는 지옥갔어요?</a></div>
					<div class="myclass_wishlist_id"><a href="#">종희는 업무폭탄 좋아하져?</a></div>
					<div class="myclass_wishlist_id"><a href="#">운이는 코딩 좋아하져?</a></div>
				</div>
			</div>
			<div class="myclass_content flex jcsb">
				<div class="myclass_blecture_wrap myclass_bc">
					<div class="myclass_blecture_txt font_title myclass_margin_bottom"> 곧 가야해요</div>
					
					<div class="flex jcsb">
						<div class="myclass_profile_photo">
						<img src="${path}/resources/img/13.jpg" style="width: 140px;height:140px;"/>
						</div>
						<div class="myclass_profile_content">
							<div class="myclass_blecture_title font_title myclass_profile_name_css">잠만보 만들기</div>
							<div class="myclass_profile_id myclass_profile_name_css">예약일자 : 2020-05-06</div>
							<div class="myclass_profile_id">예약일자 : 17시 30분</div>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>