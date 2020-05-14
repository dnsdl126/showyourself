<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "include/header.jsp" %>    
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showyourself_intro</title>
	<style type="text/css">

@font-face {
  font-family: 'neontubes';
  src: url("https://bitbucket.org/kennethjensen/webfonts/raw/fc13c1cb430a0e9462da56fe3f421ff7af72db71/neontubes/neontubes-webfont.eot");
  src: url("https://bitbucket.org/kennethjensen/webfonts/raw/fc13c1cb430a0e9462da56fe3f421ff7af72db71/neontubes/neontubes-webfont.eot?#iefix") format("embedded-opentype"), url("https://bitbucket.org/kennethjensen/webfonts/raw/fc13c1cb430a0e9462da56fe3f421ff7af72db71/neontubes/neontubes-webfont.woff2") format("woff2"), url("https://bitbucket.org/kennethjensen/webfonts/raw/fc13c1cb430a0e9462da56fe3f421ff7af72db71/neontubes/neontubes-webfont.woff") format("woff"), url("https://bitbucket.org/kennethjensen/webfonts/raw/fc13c1cb430a0e9462da56fe3f421ff7af72db71/neontubes/neontubes-webfont.ttf") format("truetype");
  font-weight: normal;
  font-style: normal;
}
		
	.main_intro_wrap {
		display:flex;
		justify-content: center;
		align-items: center;
	
		
	 -webkit-font-smoothing: antialiased;
  	 -moz-osx-font-smoothing: grayscale;
      background: white;
	}

	.figure {
		position: relative;
		display: inline-block;
		width: 100%;
		
	}



   .box {
		
		width: 100%;
    	height: 862px;
    	outline: none;
   		background: url(${path}/resources/img/showintro.png);
		
   }

   .blackbox{
		width: 100%;
    	height: 862px;
    	background: rgba( 0, 0, 0, 0.7);
    	
   }

   .blackbox_01{
		width: 100%;
    	height: 862px;
    	background: rgba( 0, 0, 0, 0.7);
    	
   }



   .box_01{

		width: 100%;
    	height: 862px;
   		background: url(${path}/resources/img/yourselfintro.PNG);
   		background-size: cover;
   		background-position: center;
   }		
	h1 {
		color: #ffd9e2;
		position: absolute;
		right: 0;
		left: 0;
		top: 23%;
		text-align: center;
		font-family: "neontubes";
		font-size: 155px;
	/* 	opacity: 0; */
		
		
	}

	h2 {
		color: #fff;
		position: absolute;
		right: 0;
		left: 0;
		top: 55%;
		text-align: center;
		font-family:"neontubes";
		 opacity: 0; 
		font-size: 45px;
		transition: all ease 2s;
	}

	.figure:hover h1{
		 text-shadow: 0 0 0 transparent, 0 0 10px #ff21a6, 0 0 20px rgba(191, 25, 125, 0.8), 0 0 40px #ff21a6, 0 0 100px #ff21a6, 0 0 200px #ff21a6, 0 0 300px #ff21a6, 0 0 500px #ff21a6, 0 0 1000px #ff21a6;
         -webkit-animation: blink 4s infinite alternate;
          animation: blink 4s infinite alternate;
          cursor: pointer;

	}	
	.figure:hover h2 {
		opacity: 1;
	}

   h3 {
		color:#d4eaff;
		position: absolute;
		right: 0;
		left: 0;
		top: 17%;
		text-align: center;
		font-family: "neontubes";
		font-size: 155px;
	/* 	opacity: 0; */
		
		
	}

	h4 {
		color: #fff;
		position: absolute;
		right: 0;
		left: 0;
		top: 52%;
		text-align: center;
		font-family:"neontubes";
		 opacity: 0; 
		font-size: 45px;
		transition: all ease 2s;
	}

	.figure:hover h3{
		 text-shadow: 0 0 0 transparent, 0 0 10px #2695ff, 0 0 20px rgba(38, 149, 255, 0.5), 0 0 40px #2695ff, 0 0 100px #2695ff, 0 0 200px #2695ff, 0 0 300px #2695ff, 0 0 500px #2695ff;
  -webkit-animation: blink 4s infinite alternate;
          animation: blink 4s infinite alternate;
          cursor: pointer;
	}	
	.figure:hover h4 {
		opacity: 1;
	}


	.figure .span1:before{
		content: '';
	    position: absolute;
	    top: 5%;
	    left: 0;
	    right: 0;
	    width: 94%;
	    height: 1px;
	    background-color: transparent;
	    margin: 0 auto;

	}
   .figure .span1:after{
		content: '';
	    position: absolute;
	    top: 5%;
	    right: 3%;
	    width: 1px;
	    height: 89%;
	    background-color: transparent;
	    margin: 0 auto;

	}

	.figure .span2:before{
		content: '';
	    position: absolute;
	    bottom: 6%;
	    left: 0;
	    right: 0;
	    width: 94%;
	    height: 1px;
	    background-color: transparent;
	    margin: 0 auto;

	}

	.figure .span2:after{
		
	   	content: '';
	    position: absolute;
	    top: 5%;
	    left: 3%;
	    width: 1px;
	    height: 89%;
	    background-color: transparent;
	    margin: 0 auto;

	}

	/* hover */

	.figure:hover .span1:before {
		animation: border-top 0.3s linear;
		transform-origin: left;
		background-color: #fff;
	}

	@keyframes border-top {
		0%{
			transform: scaleX(0);
		}
	}
	.figure:hover .span1:after {
		animation: border-right 0.6s linear;
		transform-origin: top;
		background-color: #fff;

	}

	@keyframes border-right {
		0%, 50%{
			transform: scaleY(0);
		}
	}
	
	.figure:hover .span2:before {
		animation: border-bottom 0.9s linear;
		transform-origin: right; /* Right to left */
		background-color: #fff;

	}

	@keyframes border-bottom {
		0%, 75%{
			transform: scaleX(0);
		}
	}

	.figure:hover .span2:after {
		animation: border-left 1.2s linear;
		transform-origin: bottom;
		background-color: #fff;

	}

	@keyframes border-left {
		0%, 80%{
			transform: scaleY(0);
		}
	}
		
	

	</style>
</head>
<body>
<div class="main_intro_wrap">	
<div class="figure">	
    <div class="box">
    	<div class="blackbox"> 
		     <span class="span1"></span>
	   		 <span class="span2"></span>
	         <a href="${path}/show/"><h1> show </h1>
	         <br>
	         <h2> 다양한 클래스를 즐겨보세요</h2>
         </div>
   </div>
</div>


<div class="figure">
	 <div class="box_01">
    	<div class="blackbox_01">  	
          <span class="span1"></span>
          <span class="span2"></span>
          <a href="${path}/yourself/"><h3> yourself </h3></a>
          <br>
          <h4> 당신만의 상품을 선보이세요</h4>
      </div>
    </div>
</div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 
$(function(){
	$('h1').mouseenter(function(){
   		$('.blackbox').css('background','rgba( 0, 0, 0, 0.3)');
  });

	$('h1').mouseleave(function(){
   		$('.blackbox').css('background','rgba( 0, 0, 0, 0.7)');
  });

});

$(function(){
	$('h3').mouseenter(function(){
   		$('.blackbox_01').css('background','rgba( 0, 0, 0, 0.3)');
  });

	$('h3').mouseleave(function(){
   		$('.blackbox_01').css('background','rgba( 0, 0, 0, 0.7)');
  });

});


</script>

</html>