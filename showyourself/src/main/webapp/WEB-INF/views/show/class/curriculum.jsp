<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>curriculum</title>
<link rel="stylesheet" type="text/css" href="common.css">
<style type="text/css">

	.curriculum_title {
    color: rgba(0,0,0,0.7);
    font-size: 24px;
    font-weight: bold;
    padding-top: 15px;
    padding-left: 51px;s
}
   .curriculum_content_box{
    width: 913px;
    height: 150px;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 10px;
    outline: none;
    padding-left: 10px;
   }
	
	.gradient-bar{
	
	box-sizing: border-box;
    display: inline-block;
    width: 1000px;
    border-style: solid;
    border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
    border-image-slice: 1;
	}

	.curriculum_tot_wrap{
		width: 1000px;
		height: 1200px;	
		margin: 0 auto;
	}
	.curriculum_input_wrap{
		 margin-left: 50px;
		
	}
	
	.curri_photo{
	font-size: 20px;
    color: rgba(0,0,0,0.7);
    font-weight: 700;
    position: relative;
    display: flex;
    justify-content: flex-start;
    padding-top: 10px;
    padding-bottom: 10px;
	
	}
	.board_div{
	width:200px;
	border:2px dashed #D1C2FF;
	text-align:center;
	height:200px;
	display:flex;
	align-items :center;
	justify-content:center;
	color:#D1C2FF;
	font-size:15px;
	}
	.font_title {
	font-size: 25px;
	font-weight: bold;	
	}	
	.flex{display: flex;}
	.jcsb{justify-content: space-between;}
	.float_left{
	margin-bottom: 5px;

    font-size: 14px;
    font-weight: 600;
	
	}
	
	.flex{display: flex;}
	
	.curriculuem_plus{
	cursor: pointer;
	
	}
	
	.search_tag{
	width: 178px;
    height: 29px;
    border-radius: 4px;
    outline: none;
    border: solid 1px #d5d5d5;
	}
</style>
</head>
<body>
	<div class="curriculum_tot_wrap">
		<h2 class="curriculum_title">커리큘럼 상세 등록 </h2>
		<div class="gradient-bar"></div>
		<div class="curriculum_input_wrap">
			<div class="curriculum_photo_txt curri_photo" > 사진등록</div>
			<div class="curriculum_photo_input flex" style="margin-bottom: 20px;">				
				<div class="board_div fileDrop float_left">
					<p><i class ="fas fa-paperclip"></i>사진을 드래그 해주세요.
				</div>
				<div style="margin-left: 8px; margin-top: 37px;">
					<div class="float_left" >-커리큘럼은 수업순서를 작성하는 부분입니다</div>
					<div class="float_left" >-단계별 관련사진을 등록해주세요.</div>
					<div class="float_left" >-가로사진을 권장합니다.</div>
					<div class="float_left" >-사진용량은 사진 한 장당 10MB까지 등록이 가능합니다.</div>
					<div class="float_left" >-커리큘럼은 3단계 까지 작성해주세요.</div>
				</div>
					
					
			</div>
			<div class="curriculum_title_input">
				<div class="curriculum_title_txt curri_photo" > 커리큘럼 내용</div>
				
				<textarea class="curriculum_content_box" type="text" name="curriculum_title" placeholder="내용을 입력하세요"></textarea>
			</div>
			
			<button class="curriculuem_plus btn" style = "margin-bottom : 20px;"> 추가하기 </button>
			<div class="curriculum_title_txt curri_photo" > 커리큘럼 리스트</div>
			<div style="width:908px;height: 150px; border:1px solid #d5d5d5;margin-bottom: 20px;"></div>
			<div class="curriculum_searchoption_input" style="margin-bottom: 20px;">
				<div class="curriculum_title_txt curri_photo" > 검색어</div>
				<input class="search_tag" type="text" name="curriculum_searchtag1" placeholder="#태그">
				<input class="search_tag" type="text" name="curriculum_searchtag2" placeholder="#태그">
				<input class="search_tag" type="text" name="curriculum_searchtag3" placeholder="#태그">
				<input class="search_tag" type="text" name="curriculum_searchtag4" placeholder="#태그">
				<input class="search_tag" type="text" name="curriculum_searchtag5" placeholder="#태그">
			</div>
		</div>
		    <div class="gradient-bar"></div>
			<div style="padding-top: 20px;">
				<button class="btn" style="margin: auto"> 다음 </button>
			</div>
	</div>

</body>
</html>