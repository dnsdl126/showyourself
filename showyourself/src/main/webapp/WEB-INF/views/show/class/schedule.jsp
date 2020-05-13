<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/b9b96aae93.js" crossorigin="anonymous"></script>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${path}/resources/css/material.min.css" />
		<link rel="stylesheet" href="${path}/resources/css/bootstrap-material-datetimepicker.css" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script type="text/javascript" src="${path}/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${path}/resources/js/material.min.js"></script>
		<script type="text/javascript" src="${path}/resources/js/moment-with-locales.min.js"></script>
		<script type="text/javascript" src="${path}/resources/js/bootstrap-material-datetimepicker.js"></script>

		<style>
			body 
			{
				font-family: 'Roboto', sans-serif;
			}
			h2 
			{
				padding: 0 20px 10px 20px;
				font-size: 20px;
				font-weight: 400;
			}
			.form-control-wrapper 
			{
				width: 120px;
			}
			code 
			{
				padding: 10px;
				background: #eee!important;
				display: block;
				color: #000;
			}
			code > p 
			{
				font-weight: bold;
				color: #000;
				font-size: 1.5em;
			}
			/* @media(max-width: 300px)
			{
				.well { margin : 0}
			} */
			.sch_insert{
				width: 1200px;
				margin: 0 auto;
				margin-top: 80px;
			}
			.sch_date_wrap{
				margin-bottom: 15px;
			}
			.sch_header{
				display: flex;
			}
			.date_select_wrap{
				display: flex;
				padding: 0;
			}
			.date_select_day{
				display: flex;
				margin-left: 10px;
			}
			.sch_date_txt{
				 margin-bottom: 15px;
				 font-size: 12px;
				 font-weight: 600;
			}
			.sch_insert_txt{
				margin-bottom: 10px;
			    font-size: 20px;
			    font-weight: bold;
			}
			.sch_insert_select{
			  border: 1px solid #d5d5d5;
			  width: 700px;
			  margin-left: 30px;
			  margin-bottom: 20px;
			  padding: 20px;
			}
			.sch_date_line{
				width: 5px;
				margin:5px;
				margin-right: 10px;
				margin-left: 10px;
			}
			.sch_day_btn{
				border: #d5d5d5;
				background-color: #fff;
				color: #5e5e5e;
			}

			/* 요일 wrap */
			.sch_day_group{
				display: flex;
			}
			.sch_daytime{
				margin: 10px;
			}
			.sch_daytime_txt{
				 font-size: 12px;
				 font-weight: 600;
			}
			.sch_day_wrap{
				padding: 0;
			}
			.sch_day{
				/* width: 32px;
							    height: 32px; */
			    border-top: 1px solid #eeeeee;
			    border-bottom: 1px solid #eeeeee;
			    border-right: 1px solid #eeeeee;
			}
			.sch_day:first-child {
				border-left: 1px solid #eeeeee;
			}
			.sch_day_span > label{
				width: 32px;
			    height: 32px;
			    margin-bottom: 0;
			    padding: 7px;
			    text-align: center;
			    cursor: pointer;
			}
			.sch_day_span > input {
				visibility: hidden; 
				position: absolute;
				width: 22px
				height:22px;		
			}
			.sch_day_span >  input:checked +label{
				width: 32px;
			    height: 32px;
				background-color: #000;
				color: white
			}

			.sch_select_box{
				display: flex;
			}
			.sch_member_wrap {
				margin:10px;
				margin-right: 25px;
			}
			.sch_apptime_wrap{
				margin:10px;
				margin-right: 25px;
			}
			.sch_mem_txt{
				margin-bottom: 13px;
			}
			.sch_mem_width{
				width: 30px;
				text-align:center;
			}
			.sch_mem_select_wrap{
				display: flex;
				padding:0;
			}
			.sch_in_btn{
				width: 70px;
			    height: 35px;
			    text-align: center;
			    background-color: #A1E7FD;
			    color: white;
			    border-radius: 3px;
			    border: none;
			    outline: none;
			    padding: 10px;
			    margin-left: 5px;

			}
			.sch_addinsert_title{
				display: flex;
			}
			.sch_addinsert_box{
			    width: 175px;
			    height: 35px;
				border-top: 1px solid;
			    border-right: 1px solid #d5d5d5;
			    text-align: center;
			    padding: 8px;
			}
			.sch_addinsert_content{
				display: flex;
			}
			.sch_addinsert_box:last-child{
				border-right: none;
			}
			.sch_addinsert_wrap{
				margin-left: 30px;
			}

		</style>
		
</head>
<body>

		<div class="sch_insert">
			<div class="sch_insert_txt">스케쥴 등록</div>
			<div class="sch_insert_content">
				<div class="sch_insert_select">
					<div class="sch_date_wrap">
						<div class="row sch_header">
							<div class="col-md-6 sch_date_txt">
								시작일과 종료일을 선택해주세요
							</div>
							
						</div>
						<div class="row">
							<div class="col-md-6 date_select_day">
								<div class="form-control-wrapper">
									<input type="text" id="date1" class="form-control floating-label" placeholder="start_date">
								</div>
								<div class="sch_date_line">
									-
								</div>
								<div class="form-control-wrapper">
									<input type="text" id="date2" class="form-control floating-label" placeholder="end_date">
								</div>
							</div>
						</div>				
					</div>
			<div class="sch_daytime_wrap">		
				<div class="row">
					<div class="col-md-6 sch_daytime_txt">
						요일과 운영시간을 선택해주세요.
					</div>
				</div>
				<div class="row sch_daytime">
					<div class="sch_day_txt" style="margin-bottom: 7px;">강의 요일</div>
					<div class="col-md-6 sch_day_wrap">				
						<div class="sch_day_group">
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box0" value="0">
									<label for="sch_day_box0">일</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box1" value="1">
									<label for="sch_day_box1">월</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">	
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box2" value="2">
									<label for="sch_day_box2">화</label>	
								</span>	
								
							</div>
							 <div class="sch_day">
							 	<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box3" value="3">
									<label for="sch_day_box3">수</label>	
								</span>	
							 </div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box4" value="4">
									<label for="sch_day_box4">목</label>	
								</span>		
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box5" value="5">
									<label for="sch_day_box5">금</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_day_input" name="sch_day_name" id="sch_day_box6" value="6">
									<label for="sch_day_box6">토</label>	
								</span>	 
							</div>							
						</div>			
					</div>
				</div>
				
			</div>	

				<div class="sch_select_box">
					<div class="row sch_daytime">
						<div class="sch_time_txt" style="margin-bottom: 13px;">강의 시간</div>
						<div class="col-md-6 date_select_wrap">						
							<div class="row">
								<div class="col-md-12">
									<div class="form-control-wrapper">
										<input type="text" id="sch_time1" class="form-control floating-label" placeholder="start_time">
									</div>
								</div>						
							</div>
							<div class="row sch_date_line">
								-
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-control-wrapper">
										<input type="text" id="sch_time2" class="form-control floating-label" placeholder="end_time">
									</div>
								</div>
							</div>
						</div>
					</div>	
					<div class="sch_member_wrap">
						<div class="sch_mem_txt">참여가능인원</div>
						<div class="col-md-6">	
							<div class="row">
								<div class="col-md-12 sch_mem_select_wrap">
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_min" class="form-control floating-label sch_mem_width" placeholder="최소" >
									</div>
									<div class="sch_date_line">
										-
									</div>
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_max" class="form-control floating-label sch_mem_width" placeholder="최대">
									</div>
								</div>		
							</div>
						</div>
					</div>
					<div class="sch_apptime_wrap">
						<div class="sch_mem_txt">신청마감시간</div>
						<div class="col-md-6">	
							<div class="row">
								<div class="col-md-12 sch_mem_select_wrap">
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_min" class="form-control floating-label sch_mem_width" placeholder="시간" >
									</div>
									<div class="sch_date_line">
										:
									</div>
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_max" class="form-control floating-label sch_mem_width" placeholder="분">
									</div>
								</div>		
							</div>
						</div>
					</div>							
				</div>	
				<div class="sch_insert_wrap">
					<button type="button" class="sch_in_btn" id="sch_insert_btn">추가</button>				
				</div>					
			</div>
		





				<div class="sch_addinsert_wrap">
					<div class="sch_addinsert_title">
							<div class="sch_addinsert_box">강의요일</div>
							<div class="sch_addinsert_box">강의시간</div>
							<div class="sch_addinsert_box">참여가능인원</div>
							<div class="sch_addinsert_box">삭제</div>
					</div>
					<div class="sch_addinsert_content">
						<div class="sch_addinsert_box">월 수 금 </div>
							<div class="sch_addinsert_box">13:00 ~ 14:00</div>
							<div class="sch_addinsert_box">1~3</div>
							<div class="sch_addinsert_box">삭제</div>
					</div>		
				</div>

		</div>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function()
		{
			$('#date1').bootstrapMaterialDatePicker
			({
				time: false
			});
			$('#date2').bootstrapMaterialDatePicker
			({
				time: false
			});
			$('#sch_time1').bootstrapMaterialDatePicker
			({
				date: false,
				shortTime: true,
				format: 'HH:mm'
			});

			$('#sch_time2').bootstrapMaterialDatePicker
			({
				date: false,
				shortTime: true,
				format: 'HH:mm'
			});

			$('#date-end').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			});
			$('#date-start').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			}).on('change', function(e, date)
			{
				$('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
			});

			$('#min-date').bootstrapMaterialDatePicker({ format : 'DD/MM/YYYY HH:mm', minDate : new Date() });

			$.material.init()
		});

		$(document).on('click','#sch_insert_btn',function(){
				var fulldate1 = $('#date1').val().trim();
				console.log(fulldate1);

				var year1 = fulldate1.substring(0,4);
				console.log(year1);

				var month1 = fulldate1.substring(6,7);
				console.log(month1);

				var date1 = fulldate1.substring(8,10);
				console.log(date1);

				var whatday1 = new Date(year1,month1-1,date1);

				console.log(whatday1);

				theDay1 = whatday1.getDay();
				console.log(theDay1);

				console.log("---------------------------------------------");	

				var fulldate2 = $('#date2').val().trim();
				console.log(fulldate2);
				var year2 = fulldate2.substring(0,4);
				console.log(year2);

				var month2 = fulldate2.substring(6,7);
				console.log(month2);

				var date2 = fulldate2.substring(8,10);
				console.log(date2);

				var whatday2 = new Date(year2,month2-1,date2);

				console.log(whatday2);

				theDay2 = whatday2.getDay();
				console.log(theDay2);



		});


</script>
</html>