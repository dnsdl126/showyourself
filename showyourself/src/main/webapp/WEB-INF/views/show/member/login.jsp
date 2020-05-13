<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<style type="text/css">
.login_wrap {
	width: 494px;
    height: 650px;
    padding: 8px;
    margin: auto;
    margin-top: 100px;
    border-radius: 8px;
    box-shadow:3px 3px 3px 3px #ccc;
}

.login_box {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 492px;
}



/* Mirror */
.login_box_logo {
	width: 400px;
	height: 90px;
	background: url('${path}/resources/img/showyourself.png');
	background-size: cover;
	margin: 25px auto;
	margin-bottom: 0;
	
 }
	
	/*아이디, 비밀번호*/
.login_box_name {

	margin-top: 20px;
	color: #B8B4B8;
	padding-left: 5px;
	margin-bottom: 5px;

}

.login_box_input_box{
	width: 337px;
    height: 30px;
    margin: auto;
    border-radius: 4px;
    outline: none;
    border: solid 1px #B8B4B8;
    font-size: 15px;
    padding: 5px;
}	

.login_box_id {
	margin: auto;
    width: 337px;
}	

.login_box_pw {
	margin: auto;
    width: 337px;
}

.login_err_msg{
	color: tomato;
	font-weight: bold;
	font-size: 13px;
	padding: 5px;
}

.login_join_box{
	
	text-align: center;
	font-size: 15px;

}

.login_join_box_search{
	font-weight: bold;
	text-decoration: none;
	color: #222222;
}

.login_join_box_search:hover {
	color: #D1C2FF;
}



       
.sign_in_text {
     margin-top: 25px;
     margin-bottom: 5px;
     padding-left: 5px;
     text-align: center;
     color: #757575;
     font-size: 15px;
     font-weight: normal;
     line-height: 1.33;
     
}

.SNS {         
     font-size: 15px;
     width: 337px;
    margin: auto;
 }

 .sns_list {
 	justify-content: space-around;
    display: flex;
    margin-top: 25px;
    margin-bottom: 25px;
 }

        .sns_list_enter {
         display: inline-block;
         margin: 0 10px;
         transition: opacity. 1s;
         position: relative;
        }
        .facebook_img, .naver_img, .kakao_img {
         width: 48px;
         height: 48px;
         border-radius: 5px;
         background-size: 320px;
         background-position: left 0px top -80px;
         width: 48px;
    
        }
        .sign_guest {
         margin: 30px 0 0;
         padding: 30px 0 0;
         border-top: 1px solid #dbdbdb;
        }
        .sing_guest_title {
             display: block;
             width: 100%;
             margin: -10px 0 20px;
             padding: 10px 0;
             background: none;
             border: none;
             color: #424242;
             font-family: inherit;
             font-size: 15px;
             line-height: 1.4;
             text-align: center;
         }
        .sing_guest_title:hover, 
        .sing_guest_title:focus, 
        .sing_guest_title:active {
         text-decoration: underline;
       }
       .sns_list_enter:hover::before{
         opacity: 0.3;
       }

       .sns_list_enter::before {
         
         content: '';
         position: absolute;
         width: 48px;
         height: 48px;
         top: 0;
         left: 0;
         background-color: white;
         opacity: 0;
       }
		
		.login_button_group{
			margin: auto;
			margin-top: 10px;
		}

		.login_button {
			display: flex;
			justify-content: center;
			align-items: center;
			width: 337px;
			height: 42px;
		    position: relative;
		    border: 1.3px solid #d5d5d5;
		    border-radius: 5px;
		 	background: white;
		    background-clip: padding-box;
		    padding: 5px;
		}

		.login_button::after {
		    position: absolute;
		    top: -1px; bottom: -1px; left: -1px; right: -1px;
		    background: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
		    content: '';
		    z-index: -1;
		    border-radius: 5px;
		}
		.login_button:hover {
			 border: 1px solid transparent;
		}

</style>

<body>
<div class="login_wrap">
	<div class="login_box">
		<!-- Mirror -->
		<div class="login_box_logo"></div>
		<!-- 아이디 -->
		<div class="login_box_id"> 
			<div class="login_box_name"> 
				아이디
			</div>	
			<div class="login_box_id_input_box"> 
				<input type=" text"  class = "login_box_input_box" name="" placeholder="아이디를 입력하세요">
			</div>
			<div class="login_err_msg"> 
                아이디를 입력해 주세요 
			</div>		
		</div>
		<!-- 비밀번호 -->
		<div class="login_box_pw"> 
			<div class="login_box_name"> 
				비밀번호
			</div>	
			<div class="login_box_pw_input_box"> 
				<input type="password"  class = "login_box_input_box" name="" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="login_err_msg"> 
                비밀번호를 입력해 주세요 
			</div>		
		</div>
		<!-- 아이디 /비밀번호 찾기 -->
		<div class="login_join_box" style="margin-top: 25px;"> 
			<a href="#" class="login_join_box_search"> 아이디/비밀번호</a>를 잊어버리셨나요?			
		</div>
		<!-- 회원가입 이동 -->
		<div class="login_join_box" style="margin-top: 15px;"> 
			<a href="${path}/member/contract" class="login_join_box_search"> 회원가입</a>후 다양한 혜택을 즐겨 보세요
		</div>
		<!-- 간편로그인 -->
		<div class="SNS">
                <h2 class = "sign_in_text">SNS계정으로 간편 로그인/회원가입</h2>
                <div class="sns_list">
                   <a class="sns_list_enter" href="https://www.facebook.com/login">
                      <span class="facebook" aria-label="페이스북으로 로그인">
                         <img class="facebook_img" src="${path}/resources/img/facebook.png ">
                      </span>
                   </a>
                   <a class="sns_list_enter" href="https://www.naver.com">
                      <span class="naver" aria-label="네이버로 로그인">
                         <img class="naver_img" src="${path}/resources/img/kakao.png">                    
                         
                      </span>
                   </a>
                   <a class="sns_list_enter" href="https://www.facebook.com/login">
                      <span class="kako" aria-label="카카오 로그인">
                         <img class="kakao_img" src="${path}/resources/img/naversm.png">
                      </span>
                   </a>
                                     
                </div>
        </div>
        <div class="login_button_group">
	 		 <button class="login_button" > 로그인 </button>
	 	</div>
	</div>
</div>
</body>
</html>