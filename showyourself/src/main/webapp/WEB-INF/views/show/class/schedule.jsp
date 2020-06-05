<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>class_schedule</title>
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
			.sch_member_wrap {
				margin:10px;
				margin-right: 25px;
			}
			.sch_apptime_wrap{
				margin:10px;
				margin-right: 25px;
			}
						
			.sch_dltime_txt{
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
			.sch_mem_num{
				margin:10px;
			}
			.sch_mem_wrap{
				display: flex;
			}
			.sch_err_msg{
				display: block;
				padding: 5px;
			    margin-left: 9px;
			    color: red;
			    visibility: hidden;
			}
			.sch_insert_btn{
				width: 100px;
				height: 50px;
				cursor: pointer;

			}
		</style>
</head>
<body>
<form id="sch_form">
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
						<div class="row sch_row">
							<div class="col-md-6 date_select_day">
								<div class="form-control-wrapper">
									<input type="text" id="date1" name="startdate" class="form-control floating-label sch_input" placeholder="start_date">
								</div>
								<div class="sch_date_line">
									-
								</div>
								<div class="form-control-wrapper">
									<input type="text" id="date2" name="enddate" class="form-control floating-label sch_input" placeholder="end_date">
								</div>
							</div>

							<div class="sch_err_msg" style="margin-left: 33px; padding-bottom: 0px;">* 필수정보 입니다</div>
				
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
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box0" value="0">
									<label for="sch_day_box0">일</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box1" value="1">
									<label for="sch_day_box1">월</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">	
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box2" value="2">
									<label for="sch_day_box2">화</label>	
								</span>	
								
							</div>
							 <div class="sch_day">
							 	<span class="sch_day_span">
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box3" value="3">
									<label for="sch_day_box3">수</label>	
								</span>	
							 </div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box4" value="4">
									<label for="sch_day_box4">목</label>	
								</span>		
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box5" value="5">
									<label for="sch_day_box5">금</label>	
								</span>	
							</div>
							<div class="sch_day">
								<span class="sch_day_span">
									<input type="checkbox" class="sch_input" name="sch_day_name" id="sch_day_box6" value="6">
									<label for="sch_day_box6">토</label>	
								</span>	 
							</div>							
						</div>			
					</div>
					<div class="sch_err_msg">* 필수정보 입니다</div>	
				</div>					
			</div>	
				<div class="sch_select_box">
					<div class="row sch_daytime">
						<div class="sch_time_txt" style="margin-bottom: 13px;">강의 시간</div>
						<div class="col-md-6 date_select_wrap">						
							<div class="row">
								<div class="col-md-12">
									<div class="form-control-wrapper">
										<input type="text" id="sch_time1" name="start_time" class="form-control floating-label sch_input" placeholder="start_time">
									</div>
								</div>						
							</div>
							<div class="row sch_date_line">
								-
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-control-wrapper">
										<input type="text" id="sch_time2" name="end_time" class="form-control floating-label sch_input" placeholder="end_time">
									</div>
								</div>
							</div>
						</div>	
						<div class="sch_err_msg">* 필수정보 입니다</div>				
					</div>					
				</div>
				<div class="sch_member_wrap">
					<div class="sch_mem_txt" style="margin-bottom:16px;">참여가능인원</div>
					<div class="col-md-6">	
							<div class="row">
								<div class="col-md-12 sch_mem_select_wrap">
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_min" name="sch_mem_min" class="form-control floating-label sch_mem_width sch_input" placeholder="최소" >
									</div>
									<div class="sch_date_line">
										-
									</div>
									<div class="form-control-wrapper" style="width: 30px;">
										<input type="text" id="sch_mem_max" name="sch_mem_max" class="form-control floating-label sch_mem_width sch_input" placeholder="최대">
									</div>
								</div>		
							</div>
						</div>	
					<div class="sch_err_msg">* 필수정보 입니다</div>	
				</div>		
				<div class="sch_insert_wrap">
					<div class="sch_insert_btn"><a href="javascript:sch_check()">추가</a></div>
					<!-- <button type="button" class="sch_in_btn" id="sch_insert_btn">추가</button>				 -->
				</div>			
		</div>

	</div>
		<div class="row sch_addinsert_wrap">
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
	


		<div class="sch_apptime_wrap">
			<div class="sch_dltime_txt">
				<div class="dlt_title_txt">신청 마감 시간</div>
				<div class="dlt_con_txt">
					-각각의 스케쥴에 대하여 사용자가 신청할 수 있는 허용시간을 지정합니다.(최소 2시간 전 최대 48시간 전으로만 설정가능)<br>
					-신청 마감 시간을 '2시간'으로 설정시 '2시간' 전까지 클래스 신청이 가능합니다.<br>
				</div>
			</div>
			<div class="col-md-6">	
				<div class="row">
					<div class="col-md-12 sch_mem_select_wrap">
						<div class="form-control-wrapper " style="width: 30px;">
							<input type="text" id="sch_dltime" name="sch_dltime" class="form-control floating-label sch_mem_width sch_input" placeholder="">
							<div>시간</div>
						</div>
					</div>					
				</div>			
			</div>			
						
		</div>				
	</div>
	</form>
</body>
<script type="text/javascript" src="${path}/resources/js/sch_validation.js"></script>
<script type="text/javascript">
$(document).ready(function(){


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

			$.material.init();



			
});

			// 배열 
			var checkArr = new Array(4).fill(false);
	function sch_check(){			
				//1. 시작일 종료일 유효성체크
				checkdate();
				
				//2.요일 유효성체크(솜씨당: 첫번째 체크로 함, 이유가 있을거같음)
				sch_day();
				
				//3.시간 유효성체크
				sch_time();
				
				//4.인원 유효성체크
				sch_person();


				/*for(i=0;i<checkArr.length;i++){
					console.log('ckeckArr: ' + checkArr[i]);	
				}	*/

				console.log('checkArr: ' + checkArr);
				

	}
	//시작일 , 종료일 유효성 체크 함수
	function checkdate(){
		//1.시작일자,종료일자 입력값 받기

				var clickdate1 = $('#date1').val().trim();
				var clickdate2 = $('#date2').val().trim();
				console.log(clickdate1); console.log(clickdate2);

				//2. - 제외한 값들 배열 저장
				var arrd1 = clickdate1.split("-");
				var arrd2 = clickdate2.split("-");
				//console.log("시작일:"+arrd1+"종료일"+arrd2);

				var sdate = new Date(arrd1);
				var edate = new Date(arrd2);

				// 날짜 일 차이 구하기
				var diffDate = (edate.getTime()-sdate.getTime()) / (1000*60*60*24);
				console.log('날짜차이:' + diffDate);



				var startdate = arrd1.join('');
				var enddate = arrd2.join('');
				console.log("checkdate시작: "+ startdate+ "checkdate종료: " +enddate);


				//3.today 함수 호출
				var nowdate = sch_today();
				console.log("nowdate: "+ nowdate);

				//4.유효성 체크하기
				var result = joinValidate.checkDate1(startdate,nowdate,enddate,diffDate);
				console.log('code: '+result.code+', desc: '+result.desc);


				// 5. 코드가 10일 때 array:ture저장
				if(result.code == 10){
						checkArr[0]=true;
				}else{
					checkArr[0] =false;					
				}

				sch_ckDesign(result.code, result.desc,0);	

				console.log('checkArr[0]: ' + checkArr[0]);			
	}
	//요일 유효성 체크
	function sch_day(){
		
		var checkdayArr =[]; 
		// 1. 체크된 요일의 value값 가져오기
		$("input[name=sch_day_name]:checked").each(function(){
				checkdayArr.push($(this).val());
		})		

		console.log('요일array:' + checkdayArr);
		console.log('요일 length: ' + checkdayArr.length);
		console.log('checkdayArr[0]: '+ checkdayArr[0]);
		console.log('checkdayArr[1]: '+ checkdayArr[1]);

		if(checkdayArr.length == 0){
			$('.sch_err_msg:eq('+1+')').css('visibility','visible').text('요일을 선택해주세요.').css('color','#d95339');
		}
			
				//2-1.시작일자,종료일자 입력값 받기
				var clickdate1 = $('#date1').val().trim();
				var clickdate2 = $('#date2').val().trim();
				console.log(clickdate1); console.log(clickdate2);

				//2-2. - 제외한 값들 배열 저장
				var arrd1 = clickdate1.split("-");
				var arrd2 = clickdate2.split("-");
				console.log(arrd1);	console.log(arrd2);

				//2-3. 입력 받은 일자를 날짜로 바꿔주기
				var dateObj1= new Date(arrd1);
				var dateObj2= new Date(arrd2);
				console.log("시작일: "+ dateObj1);   console.log("종료일: "+ dateObj2);

				var startday = dateObj1.getDay();
				var endday = dateObj2.getDay();
				console.log("시작요일: "+ startday);   console.log("종료요일: "+ endday);				

				//시작일자와 종료일자의 일수 차이 계산
				var betweenDay = (dateObj2.getTime()-dateObj1.getTime())/(1000 * 60 * 60 * 24);

				console.log("시작일,종료일차이: " + betweenDay);

				
				if(betweenDay == 0){
					console.log('betweenDay==0');

					if(startday == checkdayArr[0]){
						$('.sch_err_msg:eq('+1+')').css('visibility','hidden');	

						var result = joinValidate.checkday(startday,endday,checkdayArr[0]);
						console.log("code:"+ result.code + "desc: " + result.desc);
							if(result.code == 10){
								checkArr[1]=true;
							}

					}else{
						$('.sch_err_msg:eq('+1+')').css('visibility','visible').text('선택하신 요일에 해당하는 날짜가 없습니다.').css('color','#d95339');
						checkArr[1] =false;		

					}

					console.log('checkArr[1] :' + checkArr[1]);


				}else if(betweenDay < 8){
					console.log('betweenDay==7');
					$('.sch_err_msg:eq('+1+')').css('visibility','hidden');	

					for(i=checkdayArr.length-1; i >= 0; i--){
						console.log('첫번째:'+checkdayArr[i]);

						if(startday <= checkdayArr[i] || checkdayArr[i] <= endday){
							
							check= checkdayArr[i];	
							console.log("IF startday: " + startday);
							console.log("IF startday: " + endday);
							console.log("IF startday: " + check);
			
							var result = joinValidate.checkday(startday,endday,check);
							console.log("ckeckArr: " + check + "code: "+ result.code + "desc: " + result.desc);		

								if(result.code == 10){
									checkArr[1]=true;
								}else{
									checkArr[1]=false;
								}			

						}else{							
							$('.sch_err_msg:eq('+1+')').css('visibility','visible').text('선택하신 요일에 해당하는 날짜가 없습니다.').css('color','#d95339');
							checkArr[1] = false;	
							break;						
						}
					}	console.log('checkArr[1]: ' + checkArr[1]);


					
				}else{
					console.log('betweenDay : 일주일 이상')

					var result = joinValidate.checkday(startday,endday,checkdayArr);

					if(result.code == 10){
							checkArr[1]=true;
					}else{
						checkArr[1] = false;
					}			

				}


	}
	//시간 유효성 체크
	function sch_time(){
			
					//1.오늘 날짜 입력 값 받기
					var clickdate1 = $('#date1').val().trim();
					console.log("오늘날짜: "+ clickdate1);
					
					//1-2. - 제외한 값들 배열 저장
					var arrd1 = clickdate1.split("-");
					var startdate = arrd1.join('');
				
					console.log("startdate: "+startdate);

					//3.현재 날짜 입력값 받기 
					var nowdate = sch_today();
					console.log("현재날짜:" + nowdate);

					//4-1.현재 시간 
					var time = new Date();
					var hours = time.getHours();
					var minutes = time.getMinutes();
					console.log("현재시간:" + hours+ "분: "+minutes);

					//4-2.현재시간의 시,분 → 초
					var shours= hours*60;
					var sminutes = minutes*60;

					var sumnowtime = shours + sminutes;

					//5-1.시작 시간과 종료 시간 입력 값 받기
					var arr_stime = $('#sch_time1').val().trim();
					var arr_etime = $('#sch_time2').val().trim();
					console.log('starttime: '+arr_stime + ', endtime: '+ arr_etime)

					//5-2.시작시간과 종료시간 : 제거
					var starttime = arr_stime.split(":").join('');
					var endtime = arr_etime.split(":").join('');
					console.log('시작시간: ' + starttime + ', 종료시간: '+ endtime);

					//5-3. 시작시간의 시,분 → 초 
					var sshours = (starttime.substring(0,2))*60;
					var ssminutes = (starttime.substring(2,4))*60;
					
					var sumstarttime = sshours + ssminutes;

					console.log('sumnowtime: '+sumnowtime +'sumstarttime: ' + sumstarttime);

			if(startdate==nowdate){
					
				if(sumnowtime > sumstarttime){
					$('.sch_err_msg:eq('+2+')').css('visibility','visible').text('오늘날짜의 이전 시간은 선택 할 수 없습니다.').css('color','#d95339');
					checkArr[2] = false;			
				}else{
					var result = joinValidate.checkschtime(starttime,endtime);
					console.log('code: '+result.code+', desc: '+result.desc);

					if(result.code == 10){
							checkArr[2]=true;
					}else{
							checkArr[2] =false;					
					}
					sch_ckDesign(result.code, result.desc,2);
				}
			}else{

					var result = joinValidate.checkschtime(starttime,endtime);
					console.log('code: '+result.code+', desc: '+result.desc);

					if(result.code == 10){
							checkArr[2]=true;
					}else{
							checkArr[2] =false;					
					}
					sch_ckDesign(result.code, result.desc,2);
				}

				console.log('checkArr[2]: '+ checkArr[2]);

			}

	//인원 유효성 체크
	//$('#sample6_detailAddress').keyup(function()
	function sch_person(){

		//1.입력 받은 최소인원, 최대인원 값 출력
		var minperson = $('#sch_mem_min').val().trim();
		var maxperson = $('#sch_mem_max').val().trim();

		console.log(minperson);
		console.log(maxperson);

		var result = joinValidate.checkschperson(minperson,maxperson);
		console.log('code: '+result.code+', desc: '+result.desc);

		if(result.code == 10){
			checkArr[3] = true;
		}else{
			checkArr[3] = false;
		}

		sch_ckDesign(result.code, result.desc,3);
		console.log('checkArr[3]: '+ checkArr[3]);

	}
			// 유효성체크 디자인
		function sch_ckDesign(code, desc,msg){

			if(code == 0 || code ==10){
				$('.sch_err_msg:eq('+msg+')').css('visibility','hidden');
				return true;
			}else{

				/*alert(desc);*/
				$('.sch_err_msg:eq('+msg+')').css('visibility','visible').text(desc).css('color','#d95339');
				return false;
			}
		}




			//오늘 날짜 함수
		function sch_today(){

				//1.날짜 객체 생성
				var date = new Date();
				//2.날짜(int형) → String형 변경
				var year = String(date.getFullYear());
				var month = String(("0"+(date.getMonth()+1)));
				console.log("month: "+ month);
				var day = String(date.getDate());
			
				var nowtoday = year+month+day;

				return nowtoday; 
		}

		//현재 시간 함수
		function sch_todaytime(){
			var date = new Date();

			var hours = date.getHours();
			var minutes = date.getMinutes();
			console.log("시간:"+minutes);

			var nowtime = String(hours) + String(minutes);

			return nowtime;
		}
</script>
</html>