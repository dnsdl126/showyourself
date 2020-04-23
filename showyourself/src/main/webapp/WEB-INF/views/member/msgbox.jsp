<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅창</title>
	<style type="text/css">

		
.msg_write_wrap{
	width: 1200px;
	margin: auto;
	height: 800px;
	display: flex;
	border: solid 1px #D5d5d5;
}		

.msg_write_name{
	width: 300px;
	border: solid 1px  #D5d5d5;
}
.msg_write_content{
    width: 900px;
    border: solid 1px  #D5d5d5;
}

.msg_write_name_top{
	height: 65px;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	align-items: center;  
	line-height: 72px;
	border-bottom: solid 1px  #D5d5d5;
}

.write_list_wrap{
	height: 65px;
}
.write_name_list {
	display: flex;
	height: 65px;
	
}

.caht_profile_box_name{
	margin-right: 4px;
	font-size: 20px;
	font-weight: 500;
	line-height: 62px;
	width: 667px;
}

.write_name_list:hover {
	background: #f7f7f7;
}

.img_box {
	width: 50px;
	margin: auto;
}
.caht_profile_img {
	background-image: url(../../team_pj/img/show.png);
	background-repeat: no-repeat;
	background-size: cover;
	border-radius: 50%;
	width: 45px;
	height: 45px;
	margin-right: 12px;
	margin-top: 10px;
	margin-left: 12px;
	
}

.caht_profile_name{
	margin-right: 4px;
	font-size: 20px;
	font-weight: 500;
	line-height: 62px;

}

.chat_date {
	position: relative;
    top: -58px;
    display: flex;
    justify-content: flex-end;
    color: #D5d5d5;
    font-size: 13px;
    margin-right: 22px;
}
.msg_write_box{
	height: 65px;
	border-bottom: solid 1px  #D5d5d5;
	display: flex;
	justify-content: space-between;
}

.msg_follw_button{
	 position: relative;	
	  background-color: #222222;
	  width: 96px;
	  height: 42px;
	  border-radius: 5px;
	  cursor: pointer;
	  margin: auto; 
}

.btn2{
	  padding: 0;	
	  position: absolute;
	  top: 0; left: 0; bottom: 0px; right: 0px;
	  margin: 1px 0px 0px 1px;
	  white-space: nowrap;
	  background-color: white;
	  color: black;
	  width: 94px;
	  height: 40px;
	  border-radius: 4px;
	  text-align: center;
	  line-height: 42px;
	  border-style: none;
	  cursor: pointer;	
	  outline: none;	
}


.msg_follw_button:hover {
		  background-image: linear-gradient(-90deg, rgba(240,172,242),rgba(209,194,255), rgba(161,231,253)); 	
		}


.msg_write_box_content{
	height: 653px;
    overflow: auto;
    border-bottom: solid 1px #D5d5d5;	
}

.msg_write_box_content::-webkit-scrollbar {
	display: none;
}

.msg_write_input{
	height: 78px;
	
	display: flex;
}
.datemarker{
	display: block;
    font-size: 12px;
    font-weight: bold;
    color: #D5d5d5;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
    width: 100%;
    text-align: center;
    position: relative;
   
}

.datemarker:before {
	content: '';
    display: inline-block;
    width: 41%;
    height: 1px;
    background: #D5d5d5;
    position: absolute;
    top: 8px;
    left: 23px;
}

.datemarker:after {
	content: '';
    display: inline-block;
    width: 41%;
    height: 1px;
    background: #D5d5d5;
    position: absolute;
    top: 8px;
}


.msg_box_card  {
	padding-top: 8px;
	position: relative; 
	line-height: 15px;
}


.msg_box_card_inner {
	position: relative;
	
}

.msg_box_card .msg_box_card_inner:after {
	content: '';
	display: block;
	clear: both;
}

.msg_box_card_txt{
	padding: 14px;
	margin: 0 8px;
	max-width: 400px;
	font-size: 14px;
	color: black;
}
.txt_box_right {
	border: solid 1px #F0ACF2;
	border-top-right-radius: 0px;
	border-top-left-radius: 20px;
	 border-bottom-right-radius: 20px;
	border-bottom-left-radius: 20px;
	box-shadow : 2px 2px 5px #D5d5d5;
}

.txt_box_left{
	border: solid 1px #A1E7FD;
	border-top-right-radius: 20px;
	border-top-left-radius: 0px;
	 border-bottom-right-radius: 20px;
	border-bottom-left-radius: 20px;
	box-shadow : 2px 2px 5px #D5d5d5;

}

.right{
	display: flex;
	justify-content: flex-end;
}

.left {
	display: flex;
	justify-content: flex;
}


.time_start{
	text-align: right;
	position: absolute;
	display: block;
	font-size: 10px;
	bottom: 0px;
	min-width: 50px;
	margin-left: -50px;
}

.time_start_left{
	text-align: right;
	position: absolute;
	display: block;
	font-size: 10px;
	bottom: 0px;
	min-width: 50px;
	margin-right: -44px;
	right: 0;
}

.caht_profile_img_content{
	background-image: url(../../team_pj/img/show.png);
	background-repeat: no-repeat;
	background-size: cover;
	border-radius: 50%;
	width: 45px;
	height: 45px;
	
	margin-left: 5px;
}

.msg_box_card_inner{
	display: flex
}
.msg_write_input_content{
	border-radius: 4px;
    outline: none;
    resize: none;
    width: 686px;
    height: 50px;
    margin: 5px 16px;
    padding: 9px 12px;
    font-size: 14px;
}


.msg_write_input_button:hover{
   background-image: linear-gradient(-90deg, rgba(240,172,242),rgba(209,194,255), rgba(161,231,253));
}

.msg_write_input_button{
	  position: relative;	
	  background-color: #222222;
	  width: 96px;
	  height: 42px;
	  border-radius: 5px;
	  cursor: pointer;
	  margin: auto; 
}

	</style>
</head>
<body>
<div class="msg_write_wrap">
	<div class="msg_write_name">  <!-- 왼쪽 메세지 박스 , 채팅상대 리스트 -->
		<div class="msg_write_name_top">
			메세지
		</div>
		<div class="write_list_wrap"> 
			<div class="write_name_list">	
				<div class="caht_profile_img">
					<img>
				</div>			
				<div class="caht_profile_name">
					showyourself 
				</div>
			</div>
			<div class = "chat_date">
					2020.04.23					
			</div>
		</div>
		<div class="write_list_wrap">
			<div class="write_name_list">	
				<div class="caht_profile_img">
					<img>
				</div>			
				<div class="caht_profile_name">
					showyourself 
				</div>
			</div>
			<div class = "chat_date">
					2020.04.23					
			</div>
		</div>
		<div class="write_list_wrap">
			<div class="write_name_list">	
				<div class="caht_profile_img">
					<img>
				</div>			
				<div class="caht_profile_name">
					showyourself 
				</div>
			</div>
			<div class = "chat_date">
					2020.04.23					
			</div>
		</div>
	</div>
	<div class="msg_write_content">  <!-- 오른쪽 박스 , 채팅내용 -->
		<div class="msg_write_box"> <!-- 오르쪽 박스 상단 , 현재 채팅상대-->
			<div class="write_name_list">	
				<div class="caht_profile_img">
					<img>
				</div>			
				<div class="caht_profile_box_name">
					showyourself 
				</div>
			</div>
			<div class="msg_follw_button">
				<button class="btn2">팔로우</button>
			</div>
		</div>
		<div class="msg_write_box_content"> <!-- 오르쪽 박스 중간 , 현재 채팅내용-->
			<time class="datemarker" > 2020-04-22</time>
			<div class="msg_write_box_list">
				<div class="msg_box_card right">
					<div class="msg_box_card_inner">						
						<p class="msg_box_card_txt  txt_box_right">
							언제발송 되고여어어어ㅓ언제발송 
						</p>
						<div class="time_start">
							15시 30분 
						 </div>
					</div>
				</div>
				<div class="msg_box_card left">
					<div class="msg_box_card_inner">
						<div class="caht_profile_img_content">
							<img>
						</div>
						<p class="msg_box_card_txt txt_box_left">
							오늘이여서어ㅓ
							보내껭여ㅕㄴㅇ
						</p>
						<div class="time_start_left">
							16시 30분 
						 </div>
					</div>
				</div>
				<div class="msg_box_card right">
					<div class="msg_box_card_inner">						
						<p class="msg_box_card_txt  txt_box_right">
							았아아아 
						</p>
						<div class="time_start">
							15시 30분 
						 </div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="msg_write_input">
			<div class="msg_write_input">
				<textarea  class="msg_write_input_content" placeholder="메세지를 입력하세요 "></textarea> 
			</div>
			<div class="msg_write_input_button"> 
				<button class="input_button btn2"> 전송 </button>
			</div>
		</div>
	</div>



</div>
</body>
</html>