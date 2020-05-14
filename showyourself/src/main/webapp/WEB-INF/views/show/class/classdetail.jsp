<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOW : 나의 모든 클래스 목록 (오프라인,온라인)</title>
<script src="https://kit.fontawesome.com/b9b96aae93.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		.allclass_wrap{
			width: 1200px;
			margin:0 auto;
		}
		.allclass_myc_img{
			width: 67px;
			height:58px;
		}
		.allclass_txt1{
		    font-size: 22px;		
		    font-weight: bold;
		    margin:19px 0 0 7px;
		    color: #636e72;
		}
		.allclass_txt2{
			display: flex;
    		font-size: 16px;
    		font-weight: 600;
   		    margin: 5px 0 10px 21px;
		}
		.allclass_title{
			display: flex;
		}
		.allclass_selectbox{
			margin-top:5px;
		}
		.allclass_select{
			width: 85px;
			height:31px;
			outline: none;
			cursor: pointer;
		}
		.allclass_control_container{
			display: flex;
    		margin: 10px 0 35px 0;
		}
		.allclass_control{
			margin-left: 19px;
		}
		.allclass_search_wrap{
			margin-top: 20px;

			margin:20px 0 0 19px;
		}
		.allclass_rv_datewrap{
			display: flex;
		}
		.allclass_rv_timewrap{
			display: flex
		}
		.allclass_oltitle_txt{
			display: flex;
		}
		.allclass_offtitle_txt{
			display: flex;
		}
		.allclass_online{
			margin-left: 10px;
		}
		.allclass_offline{
			margin-left: 15px;
		}
		.allclass_onlinebtnwrap{
			margin: 2px 0 0 11px;
			cursor: pointer;
		}
		.allclass_onlinetitle{
			margin-left: 3px;
		}
		.allclass_onlinebtn{
			display: flex;
			justify-content: center;
			width: 248px;
			height: 32px;
		    background-color: white;
		    outline: none;
		    border: 1px solid #d5d5d5;
		}
		.allclass_onlinebtn:hover{
			display: flex;
			justify-content: center;
			width: 248px;
			height: 32px;
		    background-color: white;
		    outline: none;
			border: 1px solid #F0ACF2;
		}
		.allclass_search_input{
			width: 200px;
		    height: 31px;
		    outline: none;
		    border: 1px solid transparent;
		    border-bottom: 1px solid #d5d5d5;
		}
		.allclass_search_btn{
		   outline: none;
 		   height: 31px;
    	   border: 1px solid transparent;
    	   background-color: white;
    	   font-size: 18px;

		}
		.allclass_list{
			display: flex;
		}
		.box_size{
			margin:none;
		}

	</style>
</head>
<body>
	
	<div class="allclass_wrap">

		<div class="allclass_header">
			<div class="allclass_title">
				<img src="../showyourself/img/myclass_on.png" class="allclass_myc_img">
				<div class="allclass_txt1">나의 클래스</div>
			</div>
			<div class="allclass_txt2">내 모든 강의</div>
			
			<div class="allclass_control_container">
				
				<div class="allclass_control">
					<label class="allclass_control_label">정렬 기준</label>
					<div class="allclass_selectbox">
						<select class="allclass_select">
							<option value="allclass_recent">최근순</option>
							<option value="allclass_t">제목순</option>
						</select>	
					</div>				
				</div>

				<div class="allclass_control">
					<label class="allclass_control_label">진행률</label>
					<div class="allclass_selectbox">
						<select class="allclass_select">
							<option value="allclass_learning">학습중</option>
							<option value="allclass_finished">완강</option>
							<option value="allclass_all">모두보기</option>
						</select>	
					</div>				
				</div>
					
				<div class="allclass_search_wrap">
					<input type="text" class="allclass_search_input" placeholder="내 강의 검색">
					<button type="submit" class="allclass_search_btn">
						<i class="fas fa-search"></i>
					</button>			
				</div>			
			</div>			
		</div>


		<div class="three_box">
			<div class="box_size">
				<div class="wrap_box_img_size">
					<img src="../img/3.jpg" class="box_img_size">
				</div>
				<div class="allclass_online">
					<div class="allclass_onlinetitle">
						<div class="allclass_oltitle_txt">인테리어 / 온라인</div>
						<div class="allclass_oltitle_txt">무민 봉제 인형 클래스</div>
					</div>
					<div class="allclass_onlinebtnwrap">
						<button type="button btn" class="allclass_onlinebtn">이어서 학습</button>
					</div>
				</div>		
			</div>
			<div class="box_size">
				<div class="wrap_box_img_size">
					<img src="../img/3.jpg" class="box_img_size">
				</div>
				<div class="allclass_offline">
					<div class="allclass_offlinetitle">
						<div class="allclass_offtitle_txt">인테리어 / 오프라인</div>
						<div class="allclass_offtitle_txt">무민 봉제 인형 클래스</div>
					</div>
					<div class="allclass_off_reservation">
						<div class="allclass_rv_datewrap">
							<div class="allclass_rv_datetxt">예약일 :</div>
							<div class="allclass_rv_date">2020-05-06</div>
						</div>
						<div class="allclass_rv_timewrap">
							<div class="allclass_rv_timetxt">예약시간:</div>
							<div class="allclass_rv_time">13시30분</div>
						</div>
					</div>
				</div>		
			</div>
			<div class="box_size">
				<div class="wrap_box_img_size">
					<img src="../img/3.jpg" class="box_img_size">
				</div>
				<div class="allclass_offline">
					<div class="allclass_offlinetitle">
						<div class="allclass_offtitle_txt">인테리어 / 오프라인</div>
						<div class="allclass_offtitle_txt">무민 봉제 인형 클래스</div>
					</div>
					<div class="allclass_off_reservation">
						<div class="allclass_rv_datewrap">
							<div class="allclass_rv_datetxt">예약일 :</div>
							<div class="allclass_rv_date">2020-05-06</div>
						</div>
						<div class="allclass_rv_timewrap">
							<div class="allclass_rv_timetxt">예약시간:</div>
							<div class="allclass_rv_time">13시30분</div>
						</div>
					</div>
				</div>		
			</div>			
		</div>
	</div>


</body>
</html>