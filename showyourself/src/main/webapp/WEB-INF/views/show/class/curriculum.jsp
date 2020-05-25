<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file = "../../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>curriculum</title>
<style type="text/css">
	.curriculum_title {
    color: rgba(0,0,0,0.7);
    font-size: 24px;
    font-weight: bold;
    padding-top: 15px;
    margin-left: 20px;
	}
	.curriculum_title_box {
		width: 913px;
		height: 50px;
		box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    	border: 1px solid #ccc;
    	border-radius: 4px;
   	 	margin-bottom: 10px;
    	outline: none;
    	padding-left: 10px;
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
		margin-left: 47px;
		
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
	
	.curriculum_plus{
	cursor: pointer;
	
	}
	
	.curri_list {
		width:908px; 
		border:1px solid #d5d5d5;
		padding: 20px 10px 20px 10px;
		margin-bottom: 20px;
	}
	
	#curri_list > li {
		width: 100%;
		display: flex;
		justify-content: space-around;
		align-items: center;
		border-bottom: 1px solid #d5d5d5;
	}
	
	#curri_list > li:last-child {
		border: none;
	}
	
	#curri_list div {
		text-align: center;
		margin-bottom: 10px;
		font-size: 15px;
	}
	
	.c_list_photo {
		width: 150px;
		height: 150px;
	}
	.cphoto {
		width: 20%;
	}
	.li_ctitle {
		width: 20%;
		font-weight: 600;
	}
	.li_c_content {
		width: 40%;
	}
	.li_delete {
		width: 10%;	
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
				<div style="margin-left: 30px; margin-top: 37px;">
					<div class="float_left" >-커리큘럼은 수업순서를 작성하는 부분입니다</div>
					<div class="float_left" >-단계별 관련사진을 등록해주세요.</div>
					<div class="float_left" >-가로사진을 권장합니다.</div>
					<div class="float_left" >-사진용량은 사진 한 장당 10MB까지 등록이 가능합니다.</div>
					<div class="float_left" >-커리큘럼은 3단계 까지 작성해주세요.</div>
				</div>
					
					
			</div>
			<div class="curriculum_title_input">
				<div class="curriculum_title_txt curri_photo" > 커리큘럼 제목 </div>
					<input class="curriculum_title_box" id="ctitle" type="text" name="ctitle" placeholder="제목을 입력하세요">
				</div>
				<div class="curriculum_title_txt curri_photo" > 커리큘럼 내용</div>
					<textarea class="curriculum_content_box" id="c_content" type="text" name="c_content" placeholder="내용을 입력하세요"></textarea>

			
			<button onclick="newElement()" class="curriculum_plus btn" style = "margin-bottom : 20px;"> 추가하기 </button>
			<div class="curriculum_title_txt curri_photo" > 커리큘럼 리스트</div>
			<form:form id="frm_curri">
			<ul id="curri_list">
				<li class="c_li"> 
					<div class="cphoto"> <img class="c_list_photo" src="${path}/resources/img/푸크린.png"> </div> 
					<div class="li_ctitle"> 제목 </div> 
					<div class="li_c_content"> 내용 </div> 
					<div class="li_delete"> 삭제하기 </div>
				</li>
				<li class="c_li"> 
					<div class="cphoto"> <img class="c_list_photo" src="${path}/resources/img/쏘드라.png"> </div> 
					<div class="li_ctitle"> 제목 </div> 
					<div class="li_c_content"> 내용 </div>
					<div class="li_delete"> 삭제하기 </div> 
				</li>
				<li class="c_li"> 
					<div class="cphoto"> <img class="c_list_photo" src="${path}/resources/img/고라파덕.png"> </div> 
					<div class="li_ctitle"> 제목 </div> 
					<div class="li_c_content"> 내용 </div> 
					<div class="li_delete"> 삭제하기 </div>
				</li>
			</ul>
			</form:form>	
		</div>
		  <div class="gradient-bar"></div>
		  <div style="margin-top:20px">
				<button type="submit" id="btn_curri" class="btn" style="margin: auto"> 다음 </button>
			</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	var close = document.getElementsByClassName("li_delete");
	var i;
	for (i = 0; i < close.length; i++) {
	  close[i].onclick = function() {
	    var c_list = this.parentElement;
	    c_list.remove();
	  }
	}

	
	function newElement() {
		  var li = document.createElement("li");
		  li.className = "c_li";

		  var div1 = document.createElement("div");
		  var title = $('#ctitle').val();
		  var ctitle = document.createTextNode(title);
		  div1.appendChild(ctitle);
		  div1.className = "li_ctitle";
		  li.appendChild(div1);
		  
		  var div2 = document.createElement("div");
		  var content = $('#c_content').val();
		  var c_content = document.createTextNode(content);
		  div2.appendChild(c_content);
		  div2.className = "li_c_content";
		  li.appendChild(div2);
		  
		  
		  
		  if (title == '' || content == '') {
		    alert("You must write something!");
		  } else {
		    document.getElementById("curri_list").appendChild(li);
		  }
		  document.getElementById("ctitle").value = "";
		  document.getElementById("c_content").value = "";
		  
		  
		  
		  var div3 = document.createElement("div");
		  var c_del = document.createTextNode("삭제하기");
		  div3.appendChild(c_del);
		  div3.className = "li_delete";
		  li.appendChild(div3);
		
		  for (i = 0; i < close.length; i++) {
			    close[i].onclick = function() {
			      var c_list = this.parentElement;
			      c_list.remove();
			    }
			  }
		  
	}
	
	$(function(){
		var param = [];
		var titles = document.getElementsByClassName("li_ctitle");
		var contents = document.getElementsByClassName("li_c_content");
		$('#btn_curri').click(function(){
			var li_size = $(".c_li");
			$(".c_li").each(function(i){
				var i = {"cno" : i+1, "ctitle" : titles[i].textContent, "c_content" : contents[i].textContent}
				param.push(i);
			});
			
			jsonData = JSON.stringify(param);
			alert(jsonData);
			
			$.ajax({
				url: '${path}/show/class/curriculum',
				type: 'POST',
				data: jsonData,
				contentType: "application/json; charset=utf-8;",
				dataType:'json',
				success: function(data) {
					if(data == li_size.length) {
						alert('커리큘럼 리스트 추가 성공!');
					}
				},
				error : function() {
					alert(' System Error :( ');
				}
			});
	
		});

	});

</script>
</html>