<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage2.css">
<link rel="stylesheet" href="https://static.ohou.se/dist/css/27-bffa77f6.chunk.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	

	$("button#card_action1").click(function(){
		var count = parseInt($(this).children('span.count').text());
		if ($(this).hasClass("card_action")){
			$(this).removeClass("card_action");
			$(this).addClass("card_action_active");
			$(this).children('span.count').text(count+1);
			
			var pno = $(this).parent().children("#liking").val();
			/* alert(pno); */
			$.ajax({
				url:"mypage_picture_proc.do?pno="+pno,
				success:function(result){
				}//success
				
			});//ajax
			
		}else{
			$(this).removeClass("card_action_active");
			$(this).addClass("card_action");
			$(this).children('span.count').text(count-1);
			
			
			var pno = $(this).parent().children("#liking").val();
			$.ajax({
				url:"mypage_picture_delete.do?pno="+pno,
				success:function(result){
				}//success
				
			});//ajax
			
			
			
		}
	});
	
	$("button#card_action2").click(function(){
		var count = parseInt($(this).children('span.count').text());
		if ($(this).hasClass("card_action")){
			$(this).removeClass("card_action");
			$(this).addClass("card_action_active");
			var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button' id='taost-none2'><div class='toast-message__footer__close'>"
			output +="<svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
			output +="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
			output +="<div class='toast-message__body'>스크랩했습니다</div>"
			output +="<a class='button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button' href='/users/11910649/collections'>스크랩북 보기</a>"
			output +="<button class='button button--color-blue button--size-40 button--shape-4 toast-message__button toast-message__button--last'>폴더에 담기</button></div>"
			if($('div.toast-message').length == 2){
				$('div.toast-message').first().remove();
			}
			$(this).children('span.count').text(count+1);
			$("div.toast-message-root").append(output);
			$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			
			
			var pno1 = $(this).parent().children("#scraping").val();
			$.ajax({
				url:"mypage_picture_scrap.do?pno="+pno1,
				success:function(result){
				}//success
				
			});//ajax
			
			
		}else{
			$(this).removeClass("card_action_active");
			$(this).addClass("card_action");
			var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
			output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
			output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
			output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
			if($('div.toast-message').length == 2){
				$('div.toast-message').first().remove();
			}
			$(this).children('span.count').text(count-1);
			$("div.toast-message-root").append(output);
			$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			
			var pno1 = $(this).parent().children("#scraping").val();
			$.ajax({
				url:"mypage_picture_scrapdelete.do?pno="+pno1,
				success:function(result){
				}//success
				
			});//ajax
			
			
		}
	});
	
	$(document).on("click","button.toast-message__footer",function(){
		$(this).parent().remove();
	});
	
	
	$("#share").click(function(){
		if($("#share1").css("visibility") == "hidden") {
			$("#share1").css("visibility","visible");
		}else if($("#share1").css("visibility") == "visible") {
			$("#share1").css("visibility","hidden");				
		}
	});
	
	
	
	
	/* function plike () {
	var pno = $("#card_action1").parent().children("#liking").val();
	alert(pno);
	$.ajax({
		url:"mypage_picture.do?pno="+pno,
		success:function(result){
		}//success
		
	});//ajax
	
	
	} */
	
	

});//ready

</script>
<style>

* {
	font-family: "Noto Sans KR";
}
.profile {
	margin:auto;
	width:1200px;
}
.navigation {
	margin:auto;
	width:100%
}
.nav1{
	height:60px;
}
.nav1,
.nav2 {
	list-style:none;
	text-align:center;
	}
.nav2 {
	display:block;
	border-top:1px solid lightgray;
	border-bottom:1px solid lightgray;
	padding-bottom:-20px;
}
.nav1-1 {
	display:inline-block;
	font-size:18px;
	font-weight:bold;
	padding-left:20px;
	padding-right:20px;
	color:black;
	margin-top:20px;
}
.nav1-1:hover,
.nav2-2:hover {
	color:#35c5f0;
}
.nav2-1 {
	margin:0px;
	height:55px;
}
.nav2-2{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-left:20px;
	margin-top:6px;
	margin-right:20px;
	padding-left:5px;
	padding-right:5px;
	padding-bottom:17px;
	padding-top:15px;
	color:black;
}
.mid {
	display:inline-block;
	width:1136px;
	height:auto;
}
.left {
	border:1px solid lightgray;
	border-radius:6px;
	display:inline-block;
	width:269px;
	height:424px;
	float:left;
	margin-top:60px;
	margin-left:60px;
	box-shadow: 0 1px 4px 0 rgba(17, 17, 17, 0.1);
	z-index:5;
}
.share {
	float:right;
	margin-top:10px;
	margin-right:10px;
}
.share:hover {
	opacity:0.6;
}
.pro {
	width:120px;
	height:120px;
	z-index:2;
	border-radius:100%;
	margin-left:75px;
	margin-bottom:15px;
	border:1px solid lightgray;
}
.leftbox {
	display:inline-block;
	width:160px;
	height:99px;
	margin-left:63px;
	text-align:center;
}
.leftbox>div {
	margin-top:5px;
	float:left;
}
.leftbox span {
	display:inline-block;
	width:120px;
	font-size:26px;
	font-weight:bold;
	margin-left:20px;
	margin-bottom:10px;
	float:left;
}
.leftbox div {
	width:1px;
	height:9px;
	display:inline-block;
	border-left:1px solid lightgray;
}
.leftbox a {
	font-size:13px;
	padding-left:11px;
	padding-right:11px;
	float:left;
}
.mybtn {
	display:inline-block;
	width:70px;
	height:37px;
	border:1px solid lightgray;
	border-radius:6px;
	color:black;
	font-size:13px;
	padding-top:10px;
	margin-top:10px;
	margin-left:43px;
	text-decoration:none;
	float:left;
}
.mybtn:hover {
	background-color:lightgray;
}
.mybtn1 {
	color:black;
	text-decoration:none;
	margin-left:5px;
	margin-right:6px;
}
.mybtn1:hover {
	opacity:0.7;
}
.leftbox1 {
	display:inline-block;
	width:150px;
	height:100px;
	margin-left:63px;
}
.leftbox1 img {
	margin-left:20px;
	margin-bottom:10px;
}
.leftbox1 span {
	font-size:13px;
	font-weight:bold;
	color:#424242;
}
.left1 {
	margin-left:12px;
	display:inline-block;
	margin-bottom:7px;
}
.left2 {
	margin-left:18px;
	display:inline-block;
	margin-bottom:7px;
}
.left3 {
	margin-left:32px;
	margin-top:8px;
}
.left4 {
	margin-left:32px;
}
.scrap,
.like {
	display:inline-block;
	width:70px;
	height:95px;
}
.scrap:hover,
.like:hover {
	opacity:0.7;
}
.leftbar {
	width:200px;
	opacity:0.3;
	margin-top:20px;
	margin-bottom:20px;
}
.right {
	display:inline-block;
	width:750px;
	height:auto;
	margin-top:20px;
	float:right;
}
.sh {
	display:inline-block;
	width:150px;
	height:40px;
	float:right;
	z-index:100%;
}
.sharebox {
	visibility:hidden;
    background: transparent;
	width:176px;
	height:60px;
	z-index:100%;
	clear:right;
	border:1px solid lightgray;
	border-radius:4px;
	margin-left:-40px;
}
.sharebox img {
	margin-left:10px;
	margin-top:7px;
}
.share:hover {
	opacity:0.7;
}
.sharebox {
	margin-top:40px;
	margin-right:60px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    position: absolute;
    background: #fff;
    border-radius: 4px;
    font-size: 0;
    box-shadow: 0 1px 2px 0 rgba(0,0,0,.4);
    z-index: 100;
    transition: opacity .3s ease,transform .3s ease;
    width:176px;
	height:60px;
}
.pic1 {
	width:250px;
	height:250px;
	border-radius:5px;
}
.picture {
	display:inline-block;
	width:250px;
	height:320px;
	margin-top:30px;
}
.pic4 {
	width:33px;
	height:33px;
}
.pic2,
.pic3,
.pic4 {
	margin-left:25px;
	margin-right:20px;
}
.pic2:hover,
.pic3:hover,
.pic4:hover {
	opacity:0.5;
}
.picpic {
	width:500px;
	height:500px;
	text-align:center;
}
.picpic span {
	display:inline-block;
	font-size:15px;
	font-weight: 500px;
	margin-top:40px;
	color:#424242;
}
/*  */

div.card_item_content{
		margin: 0;
		padding: 0;
		display: flex;
		-webkit-box-direction: normal;
		-webkit-box-orient: vertical;
		flex-direction: column;
		position: relative;
		width:210px;
	}
	
	a.card_item_content_link{
		line-height: 1;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		inset: 0px;
		bottom: 0;
		z-index: 1;
	}
	
	div.card_item_text{
		padding: 0;
		line-height: 22px;
		transition: opacity .1s;
		margin: 12px 0 0;
		-webkit-box-ordinal-group: 2;
		order: 1;
	}
	div.card_item_desciption{
		margin: 0;
		padding: 0;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		max-height: 66px;
		-webkit-line-clamp: 3;
	}
	div.card_item_image{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	@media (min-width: 768px){
	div.card_item_image2{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		background-color: #ededed;
		overflow: hidden;
		padding-bottom: 100%;
		border-radius: 6px;
	}
	}
	img.card_img{
		border: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform 0.2s ease 0s;
	}
	
	a.card_item_content_link:active~.card_item_image img, 
	a.card_item_content_link:hover~.card_item_image img{
    	transform: translate(-50%,-50%) scale(1.05);
	}
	a.card_item_content_link:active~.card_item_text, 
	a.card_item_content_link:hover~.card_item_text {
		opacity:0.5;
	}
	
	span.card_collection{
		position: absolute;
		top: 12px;
		right: 12px;
	}
	
	span.card_img_count{
		position: absolute;
		bottom: 12px;
		right: 12px;
		font-size: 13px;
		color: #fff;
		text-shadow: 0 0 4px rgba(0,0,0,.5);
	}
	
	aside.card_item_action{
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		display: flex;
		margin-bottom: -12px;
	}
	
	button.card_action, button.card_action_active, a.card_action{
		cursor: pointer;
		touch-action: manipulation;
		font-size: inherit;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		position: relative;
		display: block;
		margin: 0;
		padding: 13px 0 16px;
		background: none;
		border: none;
		text-align: center;
		transition: opacity .1s;
		z-index: 2;
	}
	
	button.card_action:active, button.card_action:hover,
	button.card_action_active:active, button.card_action_active:hover,
	a.card_action:active, a.card_action:hover{
		opacity: 0.5;
	}
	
	button.card_action>.icon--stroke{
		text-align: center;
		width: 24;
		height: 24;
		vertical-align: -7px;
		fill: transparent;
		stroke: #424242;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
	}
	button.card_action_active>.icon--stroke{
		cursor: pointer;
		font-size: inherit;
		text-align: center;
		width: 24;
		height: 24;
		-webkit-tap-highlight-color: transparent;
		vertical-align: -7px;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
		fill: #35c5f0;
		stroke: transparent;
	}
	
	span.count{
		margin-left: 6px;
		font-size: 12px;
		color: #424242;
	}
	
	a.card_action{
		color: #424242;
		text-decoration: none;
	}
	.icon {
		color:#424242;
	}
	
	svg.comm_icon{
		color: inherit;
		cursor: pointer;
		text-align: center;
		width: 24;
		height: 24;
		border: none;
		fill: #424242;
		vertical-align: -7px;
	}
	
  /* 스크랩 알림창 */
   .toast-message:last-of-type {
       padding-bottom: env(safe-area-inset-bottom);
   }
   .toast-message {
       display: flex;
       -webkit-box-pack: justify;
       justify-content: space-between;
       -webkit-box-align: center;
       align-items: center;
       width: 100%;
       height: 80px;
       border-radius: 8px;
       background-color: #fff;
       color: #424242;
       font-size: 15px;
       line-height: 1.3;
       transition: opacity .3s,transform .3s;
       box-shadow: 0 0 20px 0 rgba(0,0,0,.26);
       margin-bottom:10px;
   }
   .toast-message__footer {
      -webkit-box-flex: 0;
      flex:0 0 52px;
      text-align: center;
      height: 100%;
      position:relative;
      border:0;
      border-radius:8px;
      background-color: #fff;
   }
   .toast-message__footer__close {
      width: 44px;
      height: 44px;
      display: flex;
      -webkit-box-pack: center;
      justify-content: center;
      -webkit-box-align: center;
       align-items: center;
       background-color: #fff;
       border-radius:22px;
       cursor: pointer;
   }
   .toast-message__footer > * {
      position:absolute;
      left:50%;
      top:50%;
      transform : translate(-50%, -50%);
   }
   .toast-message__body {
      -webkit-box-flex: 1;
      flex: 1;
      position: relative;
      white-space: pre-wrap;
      font-weight:500;
   }
   .toast-message > .toast-message__button {
      margin-right : 8px;
   }
   .button--size-40 {
      padding : 9px 10px;
      font-size: 15px;
      line-height: 20px;
      font-weight:bold;
   }
   .button--color-blue-inverted {
      background-color : #fff;
      border: 1px solid #35c5f0;
      color: #35c5f0;
      border-radius:5px;
   }
   .toast-message > .toast-message__button--last {
      margin-right: 16px;
   }
   .button--size-40 {
      padding: 9px 10px;
      font-size:15px;
      line-height:20px;
      font-weight:bold;
   }
   .button--color-blue {
      background-color :#35c5f0;
      border: 1px solid #35c5f0;
      color: #fff;
      border-radius:5px; 
   }
   .toast-message-root {
       position: fixed;
       bottom: 20px;
       left: 50%;
       transform: translateX(-50%);
       z-index: 10000101;
       width: 470px;
       box-sizing: border-box;
       -webkit-box-flex: 0;
		flex: 0 0 auto;
   }
  .toast-message-root.toast-none {
      display:none;
   }
   /* 스크랩 취소 */
   .toast-message__body:last-child {
      margin-right: 20px;
   }
   /*  ----------------------------*/
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp" />
	
<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile1.do"><li class="nav1-1" style="color:#35c5f0;">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_profile1.do"><li class="nav2-2">모두보기</li></a>
			<a href="mypage_picture.do"><li class="nav2-2"   style="color:#35c5f0; border-bottom:5px solid #35c5f0;">사진</li></a>
			<a href="scrap_all.do"><li class="nav2-2">스크랩북</li></a>
			<a href="mypage_like.do"><li class="nav2-2">좋아요</li></a>
			<a href="mypage_activity.do"><li class="nav2-2">나의활동</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="left">
		<div class="sh">
			<img src="http://localhost:9000/myhouse/images/mypage/share.PNG" class="share" id="share">
			<div class="sharebox" id="share1">
				<a href ="https://www.facebook.com/login.php?skip_api_login=1&api_key=966242223397117&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fsharer.php%3Fu%3Dhttps%253A%252F%252Fozip.me%252FknTZP3P&cancel_url=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Fclose_window%2F%3Fapp_id%3D966242223397117%26connect%3D0%23_%3D_&display=popup&locale=ko_KR">
				<img src="http://localhost:9000/myhouse/images/mypage/facebook.PNG" class="img1"></a>
				<a href="https://accounts.kakao.com/login/kakaostory?continue=https%3A%2F%2Fstory.kakao.com%2Fs%2Fshare%3Furl%3Dhttps%253A%252F%252Fozip.me%252FknTZP3P%26kakao_agent%3Dsdk%252F1.39.10%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fohou.se%26app_key%3D3019c756ec77dd7e0a24e56d9d784f77%26text%3D%25EA%25B7%25A4%25EB%25A8%25B9%25EA%25B3%25A0%25EA%25B0%2588%25EB%259E%2598%25EB%258B%2598%25EC%259D%2598%2520%25EC%259C%25A0%25EC%25A0%2580%25ED%2599%2588%25EC%2597%2590%2520%25EB%2586%2580%25EB%259F%25AC%25EC%2598%25A4%25EC%2584%25B8%25EC%259A%2594!">
				<img src="http://localhost:9000/myhouse/images/mypage/kakao.PNG" class="img2"></a>
				<a href="http://share.naver.com/web/shareView.nhn?url=https://ozip.me/knTZP3P&title=%EA%B7%A4%EB%A8%B9%EA%B3%A0%EA%B0%88%EB%9E%98%EB%8B%98%EC%9D%98%20%EC%9C%A0%EC%A0%80%ED%99%88%EC%97%90%20%EB%86%80%EB%9F%AC%EC%98%A4%EC%84%B8%EC%9A%94!">
				<img src="http://localhost:9000/myhouse/images/mypage/naver.PNG" class="img3"></a>
			</div>
		</div>
		<c:if test="${prof.member_spimage != null }">
			<img src="http://localhost:9000/myhouse/resources/upload/${prof.member_spimage}" class="pro">
		</c:if>
		<c:if test="${prof.member_spimage == null }">
			<img src="http://localhost:9000/myhouse/resources/upload/pro.png" class="pro">
		</c:if>
		<div class="leftbox">
			<span>${prof.nickname}</span>
			
				<c:if test="${fcount != 0 }">
					<a href="#" class="mybtn1">팔로워 ${fcount}</a>
				</c:if>
				<c:if test="${fcount == 0 }">
					<a href="#" class="mybtn1">팔로워 0</a>
				</c:if>
				<div></div>
				<c:if test="${fcount1 != 0 }">
					<a href="#" class="mybtn1">팔로잉 ${fcount1}</a>
				</c:if>
				<c:if test="${fcount == 0 }">
					<a href="#" class="mybtn1">팔로잉 0</a>
				</c:if>
			
			<a href="mypage_option.do" class="mybtn">설정</a>
		</div>
		<hr class="leftbar">
		<div class="leftbox1">
			<a href="scrap_all.do"><div class="scrap">
				<img src="http://localhost:9000/myhouse/images/mypage/scrap.PNG">
				<span class="left1">스크랩북</span>
				<span class="left3">${scount}</span>
			</div></a>
			<a href="mypage_like.do"><div class="like">
				<img src="http://localhost:9000/myhouse/images/mypage/like.PNG">
				<span class="left2">좋아요</span><br>
				<span class="left4">${lcount}</span>
			</div></a>
		</div>
	</div>
	<div class="right">
	<div class="user-card-feed">
		<div class="virtualized-list user-card-feed__content row" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
		<c:if test="${pcount == 0 }">
			<div class="picpic"><span>게시한 사진이 없습니다. 사진을 올려보세요.</span></div>
		</c:if>
	<c:forEach var="vo" items="${list}">
		<c:if test="${vo.photo_simage != null}" >
		<div class="user-card-feed__item-wrap col-12 col-md-4">
			<div class="user-card-feed__item">
			<article class="card-item">
				<div class="card-item-writer">
					<address class="card-item-writer__content">
						<div class="card-item-writer__header">
							<a class="card-item-writer__link" href="community_page.do?pno=${vo.pno}">
								<img class="card-item-writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x" alt=""><span class="card-item-writer__name">귤먹고갈래</span>
							</a>
						</div>
						<p class="card-item-writer__introduction"></p>
					</address>
				</div>
				<div id="card-item-7734689" class="card-item__content">
					<a class="card-item__content__link" aria-describedby="card-item-7734689" href="community_page.do?pno=${vo.pno}"></a>
					<div class="expandable-text card-item-description card-item__description">
						<div class="card-item-description__content">${vo.pcontent}</div>
					</div>
					<div class="card-item__image">
						<div class="card-item-image">
							<img class="image" src="http://localhost:9000/myhouse/resources/upload/${vo.photo_simage}?pno=${vo.pno}">
							<span class="card-item-image__view-count">조회수 <!-- -->${vo.phits }</span>
						</div>
					</div>
					<aside class="card-item-action-list">
					<input type="hidden" name="like" value="${vo.pno}" id="liking">
						<c:if test="${vo.islike !=0}">
							<button class="card_action_active" type="button" id="card_action1">
						</c:if>
						<c:if test="${vo.islike ==0}">
							<button class="card_action" type="button" id="card_action1">
						</c:if>
								<svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z">
								</path>
								</svg>
								<span class="count">${vo.plike}</span>
							</button>
							<input type="hidden" name="scrap" value="${vo.pno}" id="scraping">
							<c:if test="${vo.iscrap !=0}">
								<button class="card_action_active" type="button" id="card_action2">
							</c:if>
							<c:if test="${vo.iscrap ==0}">
								<button class="card_action" type="button" id="card_action2">
							</c:if>
								<svg class="icon icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
								</svg>
								<span class="count">${vo.pscrap }</span>
							</button>
							<a class="card-item-action-list__action" href="#">
								<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z">
									</path>
								</svg>
							</a>
							<div class="drop-down card-item-action-list__action-wrap card-item-action-list__action-share"><button class="card-item-action-list__action" type="button">
								<svg class="icon" aria-label="공유하기" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z">
									</path>
								</svg>
								</button>
							</div>
					</aside>
				</div>
			</article>
			</div>
		</div>
		</c:if>
	</c:forEach>	
		
		</div>
	</div>
		
	</div>
</div>

</div>
<div class="toast-message-root" id="toast-none"> 
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>

</html>