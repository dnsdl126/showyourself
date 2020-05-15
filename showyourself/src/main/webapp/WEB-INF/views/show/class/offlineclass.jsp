<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<head>
	<title>오프라인 상세 페이지 </title>
	
	<script src="https://kit.fontawesome.com/b9b96aae93.js" crossorigin="anonymous"></script>	
	<link rel="stylesheet" type="text/css" href="${path}/resources/slick/slick.css">	
    
    
    <link href='${path}/resources/fullcalendar-4.4.0/packages/core/main.css' rel='stylesheet' />
	<link href='${path}/resources/fullcalendar-4.4.0/packages/daygrid/main.css' rel='stylesheet' />
	<script src='${path}/resources/fullcalendar-4.4.0/packages/core/main.js'></script>
	<script src='${path}/resources/fullcalendar-4.4.0/packages/interaction/main.js'></script>
	<script src='${path}/resources/fullcalendar-4.4.0/packages/daygrid/main.js'></script>
	<script src='${path}/resources/fullcalendar-4.4.0/packages/core/locales/ko.js'></script>
	<script src='${path}/resources/fullcalendar-4.4.0/packages/moment/main.js'></script>
	
</head>
<script>


  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

   var calendar = new FullCalendar.Calendar(calendarEl, {
	   plugins: [ 'interaction', 'dayGrid'],
	   defaultView: 'dayGridMonth',
	   validRange: function(nowDate) {
		    return {
		      start: nowDate,
		      end: '2020-05-25'
		    };
		},
	   contentHeight: 310,   
	   selectable: true,
	   editable: true,
	   eventLimit: true,
	   
	   events: 
		   [{	    	  
	      	start: '2020-05-16',
	      daysOfWeek: [1, 3,5],
	      	end: '2020-05-25', 
	       		 
	       
	     	rendering: 'background'
	     },{
	          
	          start: '2020-05-25',
	          rendering: 'background'
	     }
	   ],
	  
	      locale: 'ko'
	 });	   
    

   
    calendar.render();
  });


</script>
<style type="text/css">
	.offline_pdt_wrap {
		width: 1200px;
		height: 858px;
		
		margin: auto;
	}

	/* 상단 카테고리  */
	.off_pdf_cat {
		width: 1200px;
		height: 28px;
		margin-top: 5px;
		display: flex;
	}
	.off_pdt_select {
		border: none;
		margin-left: 5px;
		margin-right: 5px;
		outline: none;
	}
	.off_pdt_name {
		font-size: 12px;
        line-height: 32px;
	}
	.pdt_arrow {
		line-height: 32px;
        font-size: 23px;
	}

.slider-nav {
height: 80px;
}

  /* 상품 정보 */
	.off_pdt_buybox{
		width: 1200px;
		height: 570px;
		
		display: flex;
	}
	.off_pdt_image {
		width: 786px;
		height:598px;
		border: solid 1px blue;
		margin-right: 20px;
	}
	.off_pdt_image_list{
		width: 786px;
		height:100px;
		border: solid 1px blue;
	}

  /* 상품정보 오른쪽 */
	.off_pdt_content{
		width: 390px;
		height: 801px;
		position:fixed;
		right:485px;
		
		padding: 15px;
	}

   .off_pdt_title_cat {
   	 color: #d5d5d5;
   	 font-size: 15px; 
   }
   .off_pdt_title_main {
	   font-size: 24px;
	   margin-bottom: 10px;

   }
   .off_pdt_seller{
   	display: flex;
   	justify-content: space-between;
   	margin-bottom: 10px;
   }
   .pdt_seller_profile{
   	background-image: url(${path}/resources/img/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
	border-radius: 50%;
	width: 40px;
	height: 40px;
   }
   .pdt_seller_name{
   	margin-right: 4px;
   	margin-left:8px;
	font-size: 18px;
	font-weight: 500;
	line-height: 38px;
   }
   .pdt_seller_msg{
   	
   	border: solid 1px #D1C2FF;
   	outline: none;
   	cursor: pointer;
   }
    .pdt_seller_msg:hover {
		
    }

    .pdt_seller_price{
    	display: flex;
    }
    .pdt_seller_sale {
    	font-size: 32px;
    	color: #F0ACF2;
    	margin-right: 5px;
    }
    .pdt_seller_sale_price{
    	font-size: 32px;
    	color: #222222;
    	margin-right: 5px;
    }
    .pdt_seller_nosale{
    	font-size: 25px;
    	color: #d5d5d5;
    	line-height: 46px;
    	text-decoration: line-through;
    }

    .off_pdt_date{
    	width: 362px;
    	height:473px;
    	
    }
    .off_pdt_ability{
    	width: 266px;
    	height: 76px;
    	background:#d5d5d5;
    	margin:auto;
    	margin-top: 10px;
    	margin-bottom: 10px;
    }


	.off_pdt_reply {
		width: 786px;
		height: 62px;		
		display: flex;
		justify-content: space-around;

		
	}
    .off_pdt_ability{
    	display: flex;
    	justify-content: space-around;
    	padding-top: 8px;
    }

    .ability_css {
    	width: 84px;
    	height: 61px;
    	text-align: center;
    	line-height: 31px;
    	
    }


   /* 캐러셀  */
   
	 * {
      box-sizing: border-box;
    }

    .slider {
        width: 786px;
        margin-top: 16px;
      
    }
    .slider_sub {
      width: 786px;
       height: 100px;
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
    .slide_img{
    	
	 background: url(${path}/resources/img/mommin.png);
	 height: 84px;
	
	 background-size: cover;
	 background-repeat: no-repeat;
	box-sizing: border-box 
    }

#calendar {
    max-width: 350px;
    margin: 0 auto;
     font-size: 12px;
  }

.pdt_cnt_money {
    width: 362px;
    height: 67px;
   
}
.pdt_seller_cnt_price{
	font-size: 20px;
    color: #222222;
    margin-right: 5px;
    margin-left: 8px;
}

.off_pdt_cnt_select{
	display: flex;
}
.cnt_plus_minus{
	width: 30px;
	text-align: center;
	font-size: 23px;
}

.pdt_cnt_arrow{
	font-size: 23px;
	color:  #D1C2FF;
}
.pdt_cnt_2arrow{
	font-size: 29px;
	color: #D1C2FF;
}

.pdtTagSelect {
	margin-top: 5px;
    width: 360px;
    height: 35px;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 5px;		
	outline: none;
		}

.fc-toolbar.fc-header-toolbar {
	margin-bottom: 5px;
}

.off_pdt_btn{
	display: flex;
	justify-content: space-around;
}
.buy_box {
	font-size: 20px;
    outline: none;
    background: none;
    border: none;
    font-weight: bold;
    cursor: pointer;

}

.buy_box:hover {
	color:  #D1C2FF;
}

.gradient-bar {
		    box-sizing: border-box;
    display: block;
    width: 786px;
    border-style: solid;
    border-image: linear-gradient(to right, #A1E7FD 0%, #D1C2FF 50%, #F0ACF2 100%);
    border-image-slice: 1;
    margin: 0 auto;
    margin-top: 10px;
		}
.confirm{

}
.confirm > div {
	margin:20px 0;
	padding : 0 30px;
}
#offlineclass_curriculum{
	display: flex;
}
</style>
<body>
	<div class="offline_pdt_wrap">
		<div class="off_pdf_cat">
			
			<select class="on_off off_pdt_select">
				<option> 온/오프라인</option>
				<option value='on'> 온라인</option>
				<option value='off'> 오프라인</option>
			</select>
			<i class="fas fa-angle-right pdt_arrow"></i>	
			<select class="off_pdt_cat_list off_pdt_select">
				<option> 전체카테고리</option>
				<option value='digital'> 디지털</option>
				<option value= 'baking'> 베이킹</option>
				<option value='accesory'> 악세사리</option>
				<option value= 'interior'> 인테리어</option>
				<option value= 'smallproduct'> 소품</option>
			</select>
			<i class="fas fa-angle-right pdt_arrow" ></i>	
			<select class="off_pdt_area off_pdt_select">
				<option> 지역</option>
				<option value='gangnam'> 강남구</option>
				<option value='gangbuk'> 강북구</option>
				<option value= 'gangdong'> 강동구</option>
				<option value= 'gangseo'> 강서구</option>
			</select>
            <i class="fas fa-angle-right pdt_arrow"></i>
			<div class="off_pdt_name off_pdt_select"> 
               아기 무민 만들기 클래스
			</div>		
				
		</div>
		<div class="off_pdt_buybox">
			<div class="s-box">
			    <div class="slider slider-for">
			      <div ><img src="${path}/resources/img/mommin.png" alt="" /></div>
			      <div ><img src="${path}/resources/img/mommin.png" alt="" /></div>
			      <div ><img src="${path}/resources/img/mommin.png" alt="" /></div>
			      <div ><img src="${path}/resources/img/mommin.png" alt="" /></div>
			      <div ><img src="${path}/resources/img/mommin.png" alt="" /></div>
			         			     
			    </div>
			    <div class="slider slider-nav">
			       <div class="slide_img"></div>
			       <div class="slide_img"></div>
			       <div class="slide_img"></div>
			       <div class="slide_img"></div>
			       <div class="slide_img"></div>
			      
			    </div>
			    
				<div class="gradient-bar"></div>
			    <div class="off_pdt_reply">

		    		<button class="buy_box "> 클래스 소개 </button>
		    		<button class="buy_box "> 커리큘럼 </button>
		    		<button class="buy_box "> 클래스 문의 </button>
		    		<button class="buy_box "> 클래스 후기 </button>
		       </div> 
				<div class="gradient-bar"></div>
				<div class="confirm">
					<div id="offlineclass_title">${pDto.title}</div>
					✔ 수업 소개
					<div id="offlineclass_content">${pDto.content}
					</div>
					✔ 커리큘럼
					<div id="offlineclass_curriculum">
						
						<div class="offlineclass_curriculum_img" id="offlineclass_curriculum_img"> <img src="${path}/resources/img/잠만보.png" style= "width:100px;"></img></div>
						<div class="offlineclass_curriculum_content" id="offlineclass_curriculum_content">1. 신청후에 그리고 싶은 이미지를 클래스1일전까지 보내주세요</div>	
					</div>
					✔ 위치
					<div id="offlineclass_map" style="width:700px; height:400px; margin : 0 auto;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b4faa49f7f1a458092ece2c22ecde06"></script>
					<script>
					var container = document.getElementById('offlineclass_map');
					var options = {
						center: new kakao.maps.LatLng(33.450701, 126.570667),
						level: 3
					};
			
					var map = new kakao.maps.Map(container, options);
					</script>
				</div>
            </div>
			<div class="off_pdt_content">
				 <div class="off_pdt_title"> 
					<div class="off_pdt_title_cat"> 
						소품
					</div>	
					<div class="off_pdt_title_main"> 
						아기 무민 만들기 클래스
					</div>
					<div class="off_pdt_seller"> 
						<div class="seller_wrap" style="display: flex;"> 
							<div class="pdt_seller_profile"> 

							</div>
							<div class="pdt_seller_name"> 
								Show yourself
							</div>
						</div>
						<button class="pdt_seller_msg btn"> 메세지</button>

					</div>
					<div class="pdt_seller_price"> 
						<div class="pdt_seller_sale"> 
							10%
						</div>
						<div class="pdt_seller_sale_price"> 
							19,000원
						</div>
						<div class="pdt_seller_nosale"> 
							22,000
						</div>						
					</div>	
					<div class="off_pdt_date"> 
						<div class="off_pdt_ability"> 
							<div class="off_pdt_cnt ability_css" style="border-right: solid 1px;">
								<div class="pdt_cnt_title">
									최대인원
								</div>
								<div class="pdt_cnt_title_cnt" style="font-size: 14px;">
									8 명 
								</div>
							</div>
							<div class="off_pdt_cnt_abiliy ability_css" style="border-right: solid 1px black;">
								<div class="pdt_cnt_title">
									난이도
								</div>
								<div class="pdt_cnt_title_cnt"  style="font-size: 14px; color: gray">
									상 <strong style="color: black">중</strong> 하
								</div>
							</div>
							<div class="off_pdt_time ability_css">
								<div class="pdt_cnt_title">
									소요시간
								</div>
								<div class="pdt_cnt_title_cnt"  style="font-size: 14px;">
									1시간 30분								
						        </div>
					        </div>								
				         </div>

						<div class="off_pdt_calendar" > 
						<div id='calendar'></div>							   
						</div>
						<select class="pdtTagSelect" name="all">
								<option value="">시간을 선택 하세요</option>
								<option value="">2시</option>
								<option value="">3시</option>
								<option value="">4시</option>
								<option value="">5시</option>
								<option value="">6시</option>
						 </select>
				       </div>
						<div class="pdt_cnt_money"> 
						  <h1 style="font-size: 15px;"> 인원 선택 </h1>
						  <div class="off_pdt_cnt_select"> 
								<div class="pdt_cnt_select" style="display: flex;"> 
									<button class="cnt_minus cnt_cnt"><i class="fas fa-minus pdt_cnt_arrow"></i></button> 
									<div class="cnt_plus_minus cnt_cnt"> 
										1

									</div>				
									<button class="cnt_plus cnt_cnt"><i class="fas fa-plus pdt_cnt_arrow"></i></button>	
								</div>
								<div class="pdt_seller_cnt_price"> 
									19000
						        </div>원				
						  </div>	
		
						</div>	

						<div class="off_pdt_btn"> 
								<button class="buy_now btn">즉시구매</button>
								<button class="buy_cart btn">장바구니</button>
								<button class="buy_wish btn">위시리스트 </button>
						</div>		

					  </div>			
			</div>
		</div>
		
	</div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
   <script src="${path}/resources/slick/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
   $(document).ready(function(){
       $('.slider-for').slick({
          autoplay: false, //자동슬라이드
          slidesToShow: 1, //큰이미지 몇개 보여줄것인지
          slidesToScroll: 1,
          arrows: false,
          fade: false,
          asNavFor: '.slider-nav',
       });
       $('.slider-nav').slick({
          slidesToShow: 5, //작은이미지 몇개 보여줄것인지..
          slidesToScroll: 1,
           arrows: true,
          asNavFor: '.slider-for',
          focusOnSelect: true,
       });
    });

   
   
 
   $(function(){
     
   	var start = 1;
    var end = 6;
    var cnt = $('.cnt_plus_minus').text( );
    var price = Number ($('.pdt_seller_cnt_price').text());
     $('.cnt_plus').on('click', function(){         
         cnt = Number(cnt) + 1; /*2*/ 

         console.log(cnt)  ;
           if(cnt >end) {
           		cnt = end;
           console.log("더이상 추가 할수 없습니다 ");	
           }
        var totprice = cnt * price;
        $('.pdt_seller_cnt_price').text(totprice);
        $('.cnt_plus_minus').text(cnt);

	});
      
	$('.cnt_minus').on('click', function(){         
         cnt = Number(cnt) - 1; /*2*/ 

         console.log(cnt)  ;
           if(cnt < start) {
           		cnt = start;
           console.log("더이상 추가 할수 없습니다 ");	
           }
        var totprice = cnt * price;
        $('.pdt_seller_cnt_price').text(totprice);
        $('.cnt_plus_minus').text(cnt);

	});
      
 });
   
	var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>

</body>
</html>