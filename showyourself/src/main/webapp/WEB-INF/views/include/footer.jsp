<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css" integrity="sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M" crossorigin="anonymous">	
	<style type="text/css">
		 * {box-sizing: border-box;}
		body {
			background-color: white;			
			margin: 0;
			padding: 0;
			font-size: 12px;
			color: #222222;		
		}
		a { text-decoration: none; cursor: pointer; color: inherit;}
		.footer_wrap {
			width: 100%;
			
			box-shadow:3px 0 0 0 #d5d5d5;
			z-index: 999;
		}
		.footer_event_wrap{
			box-shadow:3px 3px 0 0 #d5d5d5;
		}
		.footer_title_wrap{
			width: 100%;
			
			box-shadow:1px 1px 0 0 #d5d5d5;
			z-index: 999;	
		}
		.footer_title {
			width: 1200px;
			height: 30px;
			margin: 8px auto 0;
			box-sizing: border-box;
			
			display: flex;
			justify-content: center;
			
		}

		.footer_content {
			width: 1200px;
			height: 170px;
			margin: 40px auto 0;
			box-sizing: border-box;
			
			display: flex;
			justify-content: space-between;
			
		}
		.footer_bottom_right {
			width: 210px;
    		display: flex;
    		justify-content: space-between;
    		align-items: center;
    		
		}
		.footer_bottom_right a {
			display: inline-block;
		    width: 34px;
		    height: 34px;
		    border-radius: 100%;
		    background: #bdbdbd;
		    text-align: center;
		    line-height: 34px;		    
		}
		.footer_bottom_right a i {
			display: inline-block;
		    font-size: 18px;
		    vertical-align: center;
		    color: #333;		    
    	}
    	.footer_bottom_right a i.text {
    		font-size: 22px;
    		font-weight: 700;
    		font-style: normal;
    	}
    	.footer_content_div{
			padding: 20px auto;
    	}
    	.linechange{
    		height: 12px;
    	}
	    .footer_title a {
	    	height: 20px;
	    	line-height: 20px;
	    	margin: 0 10px;
	    }
		.footer_title div{
	    	font :16px bold
		}
		.footer_title a : first-child{
			margin-left: 0;
		}
		.footer_title a : last-child{
			margin -right: 0;

		}
		
		.apply_wrapper {
			display: flex;
		    padding: 13px 0;
		    max-width: 1200px;
		    margin: 0 auto;
		    justify-content: center;
		    align-items: center;
		}
		.apply_card { text-align: center; margin:0 10px;}
		.apply_title {
			font-size: 24px;
		    color: #333;
		    margin-bottom: 8px;
		}
		.apply_desc {
			font-size: 16px;
		    font-weight: 400;
		    color: #333;
		    margin-bottom: 24px;
		}
		.btn {
			display: flex;
			justify-content: center;
			align-items: center;
			width: 96px;
			height: 42px;
		    position: relative;
		    border: 1px solid #d5d5d5;
		    border-radius: 5px;
		 	background: white;
		    background-clip: padding-box;
		    padding: 10px;
		    /* just to show box-shadow still works fine */
		}

		.btn::after {
		    position: absolute;
		    top: -1px; bottom: -1px; left: -1px; right: -1px;
		    background: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
		    content: '';
		    z-index: -1;
		    border-radius: 5px;
		}
		.btn:hover {
			 border: 1px solid transparent;
			 cursor: pointer;
		}
	</style>
</head>

<body>
	<div class="footer_event_wrap">
		<div class="apply_wrapper">			
			<div class="apply_card">
				<div class="apply_title">작가 되기</div>
				<div class="apply_desc">
					많은 사람들에게 취미를 나누고,
					<br>
					경제적 보상을 받아보세요.
				</div>
				
			</div>
			<div class="apply_card">
				<button type ="button" class="btn">작가로 참여</button>
			</div>
		</div>
	</div>
	<div class="footer_title_wrap">
		<div class="footer_title">
				<a href="#">이용약관</a>
				<div>|</div>
				<a href="#" style="font :16px bold">개인정보처리방침</a>
				<div>|</div>
				<a href="#">공지사항</a>
				<div>|</div>
				<a href="#">자주 묻는 질문</a>
				<div>|</div>
				<a href="#">이벤트</a>
				<div>|</div>
				<a href="#">입점문의</a>
				<div>|</div>
				<a href="#">About showyourself</a>
				<div>|</div>
				<a href="#">인재영입</a>
		</div>
	</div>
	<div class="footer_wrap">
		
		<div class="footer_content">
			<div class="footer_content_div"><img src="../img/잠만보.png" style="width: 128px"></div>
			<div class="footer_content_div">
				<div>showyourself</div>
				<div class="linechange"></div>
				<div>대표이사 : 조운이</div>
				<div>광주광역시 북구 경양로 170 503호</div>
				<div>사업자 등록번호 : xxx-xx-xxxxx</div>
				<div style="">통신판매업신고 : yyyy-신고지역-xxxx</div>
				<div class="linechange"></div>

				<div>showyourself는 통신판매 중개자이며 통신판매의 당사자가 아닙니다.<br>따라서 showyourself는 상품거래정보 및 거래에 대하여 책임을 지지 않습니다.</div>
			</div>
			<div class="footer_content_div">
				<div>고객센터 (주7일, 오전 10시~ 저녁 10시까지)</div>
				<div class="linechange"></div>
				<div>카카오톡 : showyourself</div>
				<div>대표번호 : xxx-xxxx-1331</div>				
				<div>제휴문의 : show@yourself.com</div>
				<div>메일 : yourself@show.com</div>
				<div class="linechange"></div>

				<div>showyourself 이용 중 궁금하신점이 있으신가요?<br>
					메일 또는 플러스 친구 'showyourself'로 연락해주세요
				</div>
			</div>
			<div class="footer_content_div">
				<div class="footer_bottom_right">
					<a href="#"><i class="text">N</i></a>
					<a href="#"><i class="text">B</i></a>
					<a href="#"><i class="fab fa-instagram"></i></a>
					<a href="#"><i class="fab fa-youtube"></i></a>
					<a href="#"><i class="fab fa-facebook-f"></i></a>
				</div>
				<div class="linechange"></div>
				<div class="linechange"></div>
				<div>
					구매안전 거래서비스<br>
					고객님은 현금 등으로 결제시 당사에서<br> 가입한 구매안전서비스를 이용하실 수<br> 있습니다<br>
					Copyright © 2020 Backpackr All right reserved.

				</div>
			</div>
		</div>
	</div>
</body>
</html>