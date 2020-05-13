<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<style type="text/css">
	.board_write_wrap {
		width: 661px;
		height: 876px;
		
		margin: auto;
	}

    /*상단 Board 이미지*/
	.board_write_logo {
		margin: auto;
		width: 245px;
		height: 110px;
		background-image: url(../../team_pj/img/member.png);
		background-size: cover;
	}
   /* 첨부파일 전체 박스 */
	.board_write_content {
		width: 661px;
		height : 701px;
		border: solid 1px black;
	}

 /*버튼 위치*/
	.board_write_btn {
		width: 661px;
		height: 99px;
		}

	/* 첨부파일 올려두는 박스 */
	 .board_content_box {
		width: 638px;
		height: 541px;		
		padding: 11px;

	 }
	 .content_box_box {
	 	width: 637px;
	 	height: 540px;
	 	position: absolute;
	 	background-color: #d5d5d5;


	 }

	 .div_img {
	 	width: 150px;
     	height: 100px;
     	background-image: url(../../team_pj/img/infile.png);
     	background-position: center;
     	background-repeat: no-repeat;
     	align-items: center;
		margin: auto;
	 }

     .content_img_box {
     	position: relative;
     	top: 37%;
     }

   

   	.content_select{
			width: 85px;
			height:31px;
			outline: none;
			cursor: pointer;
		}
   
	.board_content_select {
		display: flex;
		margin-left: 11px;
		 margin-top: 28px;
	}	
	
	.board_content_wrap {
		padding: 11px;
	}

	.textarea_box{
		width: 638px;
		height: 55px;
		border: solid 1px black;

	}

	.grounded-radiants {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 96px;
	height: 42px;
    position: relative;
    border: 1px solid transparent;
    border-radius: 5px;
 	background: white;
    background-clip: padding-box;
    padding: 10px;
    /* just to show box-shadow still works fine */
}

.grounded-radiants::after {
    position: absolute;
    top: -1px; bottom: -1px; left: -1px; right: -1px;
    background: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
    content: '';
    z-index: -1;
    border-radius: 5px;
}
	 .board_write_btn {
		display: flex;
         justify-content: space-evenly;
         padding-top:  10px;
	 }
	 



</style>
<body>
	<div class="board_write_wrap">
		<div class="board_write_logo">
			
		</div>
		<div class="board_write_content">
			
		 <div class="board_content_box"> 
				<div class="content_box_box"> 
					<div class="content_img_box">
						 <div class="div_img">
							<img src="">
						</div>
						 <p style="text-align: center;">사진을 올려주세요 </p>
					</div>
				</div>
			</div>
			
			<div class="board_content_select"> 
				 <select class="content_select">
						<option value="catagory" >카테고리</option>
						<option value="digital">디지털</option>
						<option value="baking">베이킹</option>
						<option value="acc">악세사리</option>
						<option value="interiol">인테리어</option>
						<option value="item">소품</option>
				</select>
				 <select class="content_open_select" style="margin-left: 11px;">
						<option value="area" >공개범위</option>
						<option value="all_area">전체공개</option>
						<option value="only_follower">팔로워만</option>
						
				</select>
			</div>
			<div class="board_content_wrap">
				<div class="board_date" style="margin-bottom: 5px;"> 
				 작성일 : 2020-05-10
				</div>
				<div class="board_write_box"> 
				  <textarea class="textarea_box" placeholder="내용을 입력해 주세요 "></textarea>
				</div> 
			</div>


		</div>
		<div class="board_write_btn">
			<div class="grounded-radiants btn"> 확인 </div>
			<div class="grounded-radiants btn"> 취소 </div>
		</div>
	</div>
</body>

</html>