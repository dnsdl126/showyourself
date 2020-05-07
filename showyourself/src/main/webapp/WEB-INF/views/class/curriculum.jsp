<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>curriculum</title>
<link rel="stylesheet" type="text/css" href="common.css">
<style type="text/css">
	.curriculum_tot_wrap{
		width: 950px;
		height: 1200px;	
		margin: 0 auto;
	}
	.curriculum_input_wrap{
		padding: 30px 10px;
		border: 1px solid #d5d5d5;
	}
	.board_div{
	width:200px;
	border:1.5px dashed ;
	text-align:center;
	height:200px;
	display:flex;
	align-items :center;
	justify-content:center;
	color:#A1E7FD;
	font-size:15px;
}
	.flex{display: flex;}
	.jcsb{justify-content: space-between;}
	.float_left{float: left;}
	.curriculum_btn{
		 padding: 0;	
		  position: relative;
		  top: 0; left: 0; bottom: 0px; right: 0px;
		  margin: 1px 0px 0px 1px;
		  white-space: nowrap;
		  border:1px solid #A1E7FD;
		  background-color: white;
		  color: rgba(0,0,0,0.7);
		  width: 80px;
		  height: 40px;
		  border-radius: 4px;
		  text-align: center;
		  line-height: 42px;
		  
		  cursor: pointer;
	}
	.curriculum_btn:hover{
		  background-image: linear-gradient(-90deg, rgba(240,172,242),rgba(209,194,255), rgba(161,231,253));
	}
	.flex{display: flex;}
</style>
</head>
<body>
	<div class="curriculum_tot_wrap">
		<span class="curriculum_title font_title">커리큘럼 상세등록</span>
		<div class="curriculum_input_wrap">
			<div class="curriculum_photo_txt" style="height: 30px;line-height: 15px;"> 사진등록</div>
			<div class="curriculum_photo_input flex" style="margin-bottom: 20px;">				
				<div class="board_div fileDrop float_left">
					<p><i class ="fas fa-paperclip"></i>사진을 드래그 해주세요.
				</div>
				<div class="float_left" style="margin: auto 20px;">-커리큘럼은 수업순서를 작성하는 부분입니다<br>-단계별 관련사진을 등록해주세요.<br>-가로사진을 권장합니다.<br>-사진용량은 사진 한 장당 10MB까지 등록이 가능합니다.<br>-커리큘럼은 3단계 이상으로 작성해주세요.</div>
			</div>
			<div class="curriculum_title_input" style="margin-bottom: 20px;">
				<div class="curriculum_title_txt" style="height: 30px;line-height: 15px;"> 커리큘럼 내용</div>
				
				<textarea type="text" name="curriculum_title" placeholder="내용을 입력하세요"style="width:880px;height: 150px;"></textarea>
			</div>
			
			<button class="curriculum_btn"style="margin-bottom: 20px;"> 추가하기 </button>
			<div style="width:880px;height: 150px; border:1px solid #d5d5d5;margin-bottom: 20px;"></div>
			<div class="curriculum_searchoption_input" style="margin-bottom: 20px;">
				<div class="curriculum_title_txt" style="height: 30px;line-height: 15px;"> 검색어</div>
				<input type="text" name="curriculum_searchtag1" placeholder="#태그">
				<input type="text" name="curriculum_searchtag2" placeholder="#태그">
				<input type="text" name="curriculum_searchtag3" placeholder="#태그">
				<input type="text" name="curriculum_searchtag4" placeholder="#태그">
				<input type="text" name="curriculum_searchtag5" placeholder="#태그">
			</div>
			<div >
				<button class="curriculum_btn" style="margin: auto"> 다음 </button>
			</div>
		</div>
	</div>
</body>
</html>