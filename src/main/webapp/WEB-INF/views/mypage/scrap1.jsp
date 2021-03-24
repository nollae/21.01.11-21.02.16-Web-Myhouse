<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){

		$("#share").click(function(){
			if($("#share1").css("visibility") == "hidden") {
				$("#share1").css("visibility","visible");
			}else if($("#share1").css("visibility") == "visible") {
				$("#share1").css("visibility","hidden");				
			}
		});

});
</script>
<style>
* {
	font-family: "Noto Sans KR";
}
.total {
	margin:auto;
	width:1200px;
}
.book {
	text-align:center;
	font-size:28px;
	font-weight:bold;
	margin-top:20px;
	margin-bottom:20px;
	color:black;
}
.book1 {
	text-align:center;
	height:50px;
}
.pro1 {
	width:25px;
	height:25px;
	border-radius:100%;
	margin-top:10px;
}
.book1 a {
	text-decoration:none;
}
.book1 p {
	display:inline;
	font-weight:bold;
	color:#757575;
}
.book1 p:hover {
	text-decoration:underline;
}
.book2 {
	border-bottom:1px solid lightgray;
	text-align:center;
}
.book2-1 {
 	height:59px;
 	margin:0px;
}
.book2-1 a {
	list-style:none;
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-right:20px;
	margin-top:20px;
	padding-bottom:14px;
	padding-left:5px;
	padding-right:5px;
	text-decoration:none;
}
.book2-1 a:hover {
	color: #35c5f0;
}
.modu {
	border-bottom:5px solid #35c5f0;
	color:#35c5f0;
}
.modu1 {
	color:black;
}
.upbtn {
	float:right;
	margin-top:10px;
	background-color:white;
	border:1px solid white;
	font-size:15px;
	color: #35c5f0;
}
.upbtn:hover {
	color:rgb(16,175,222);
}

.bookshare {
	display:inline-block;
	float:right;
	z-index:5;
}
.sharebox {
    border-radius:10px;
	margin-top:30px;
	margin-left:940px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    position: absolute;
    background: #fff;
    font-size: 0;
    box-shadow: 2px 2px 12px 2px rgba(5,7,10,.4);
    z-index: 100;
    transition: opacity .3s ease,transform .3s ease;
    width:255px;
	height:65px;
	visibility:hidden;
    background: transparent;
    float:right;
}

.sharebox img {
	margin-left:10px;
	margin-top:7px;
}
.sharebox img:hover {
	opacity:0.5;
}
.share:hover {
	opacity:0.7;
}
.production-item__content:hover {
	opacity:0.7;
}
</style>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage1.css">
</head>
<body>
	<div class="total">
		<img src="http://localhost:9000/myhouse/images/mypage/share.PNG" class="bookshare" id="share"><br>
		<div class="sharebox" id="share1">
				<a href ="https://www.facebook.com/login.php?skip_api_login=1&api_key=966242223397117&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fsharer.php%3Fu%3Dhttps%253A%252F%252Fozip.me%252FknTZP3P&cancel_url=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Fclose_window%2F%3Fapp_id%3D966242223397117%26connect%3D0%23_%3D_&display=popup&locale=ko_KR">
				<img src="http://localhost:9000/myhouse/images/mypage/face.png" class="img1"></a>
				<a href="https://accounts.kakao.com/login/kakaostory?continue=https%3A%2F%2Fstory.kakao.com%2Fs%2Fshare%3Furl%3Dhttps%253A%252F%252Fozip.me%252FBjp8kie%26kakao_agent%3Dsdk%252F1.39.10%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fohou.se%26app_key%3D3019c756ec77dd7e0a24e56d9d784f77%26text%3D%25EA%25B7%25A4%25EB%25A8%25B9%25EA%25B3%25A0%25EA%25B0%2588%25EB%259E%2598%25EB%258B%2598%25EC%259D%2598%2520%25EC%258A%25A4%25ED%2581%25AC%25EB%259E%25A9%25EB%25B6%2581%25EC%259D%2584%2520%25EA%25B3%25B5%25EC%259C%25A0%25ED%2595%25A9%25EB%258B%2588%25EB%258B%25A4">
				<img src="http://localhost:9000/myhouse/images/mypage/story.png" class="img2"></a>
				<a href="https://accounts.kakao.com/login?continue=https://sharer.kakao.com/talk/friends/picker/shortlink/4ZVJ2ambHv%2540Thph%2540Pn3z%255Di%253Bs%252FEeampeRHVN%253BcHct%255BDqjvlqQau6LH%253E%2560C8%255Bgp_0pi">
				<img src="http://localhost:9000/myhouse/images/mypage/kaka.png" class="img3"></a>
				<a href="http://share.naver.com/web/shareView.nhn?url=https%3A%2F%2Fozip.me%2FBjp8kie&title=%EA%B7%A4%EB%A8%B9%EA%B3%A0%EA%B0%88%EB%9E%98%EB%8B%98%EC%9D%98%20%EC%8A%A4%ED%81%AC%EB%9E%A9%EB%B6%81%EC%9D%84%20%EA%B3%B5%EC%9C%A0%ED%95%A9%EB%8B%88%EB%8B%A4">
				<img src="http://localhost:9000/myhouse/images/mypage/blog.png" class="img4"></a>
			</div>
		<h1 class="book">스크랩북</h1>
		<div class="book1">
			<img src="http://localhost:9000/myhouse/images/mypage/myprofile.jpg" class="pro1">
			<a href="mypage_profile.do"><p>귤먹고갈래</p></a>
		</div>
		<div class="book2">
			<ul class="book2-1">
				<a href="mypage_scrap.do" class="modu1"><li>모두 (2)</li></a>
				<a  class="modu"><li>상품 (1)</li></a>
				<a href="mypage_scrap2.do" class="modu1"><li>사진 (1)</li></a>
			</ul>
		</div>
		<div calss="updatebtn">
			<!-- <button type="button" class="upbtn">편집</button> -->
			<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="142" class="sticky-container collection-feed__edit-panel" style="position: sticky; top: 142px;"><div class="sticky-child" style="position: relative;"><div class="collection-feed__edit-panel__wrap"><div class="collection-feed__edit-panel__left"><div class="collection-feed-filter__empty"></div></div><div class="collection-feed__edit-panel__menus"><button type="button" class="collection-feed__edit-panel__menus__menu
                  collection-feed__edit-panel__menus__menu--skyblue">편집</button></div></div></div></div>
		</div>
			<div class="virtualized-list collection-feed-collections row" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
					<a href="#" class="hover">
						<div class="collection collection--total">
							<div class="collection__image-wrap">
								<img class="collection__image" src="http://localhost:9000/myhouse/images/mypage/pic1.jpg" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160750159124130756.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160750159124130756.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160750159124130756.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
							</div>
							<span class="collection__type">상품</span>
						</div>
						<div class="production-item__content">
							<h1 class="production-item__header">
								<span class="production-item__header__brand">듀커소파 </span>
								<span class="production-item__header__name">풀커버 패브릭 발수 베스트 소파 모음전(3인~6인)</span>
							</h1>
							<span class="production-item-price">
								<span class="production-item-price__rate">22<span class="percentage">% </span></span>
								<span class="production-item-price__price">261,000 외</span>
							</span>
							<p class="production-item-stats production-item-stats--review">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
								<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
								</svg>
							<strong class="avg">4.7</strong> 리뷰 5,542</p>
							<span class="production-item-badge-list">
								<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
									<rect width="30" height="20" fill="#F77" rx="4"></rect>
									<path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path>
								</svg>
							</span>
						</div>
					</a>
					</div>
				</div>
			</div>
	</div>

</body>
</html>