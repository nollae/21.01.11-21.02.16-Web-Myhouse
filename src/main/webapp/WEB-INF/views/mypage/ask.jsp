<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
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
}
.nav1-1:hover,
.nav2-2:hover {
	color:#35c5f0;
}
.nav2-1 {
	margin:0px;
}
.nav2-2{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-left:20px;
	margin-right:20px;
	padding-left:5px;
	padding-right:5px;
	padding-bottom:15px;
	padding-top:15px;
	color:black;
}
.mid {
	display:inline-block;
	width:1136px;
	height:596px;
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
	border-radius:100%;
	margin-left:75px;
	margin-bottom:15px;
	border:1px solid lightgray;
}
.leftbox {
	display:inline-block;
	width:150px;
	height:99px;
	margin-left:63px;
	text-align:center;
}
.leftbox span {
	font-size:26px;
	font-weight:bold;
	margin-left:3px;
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
}
.mybtn {
	display:inline-block;
	width:45px;
	height:27px;
	border:1px solid lightgray;
	border-radius:6px;
	color:black;
	font-size:13px;
	padding-top:7px;
	margin-top:5px;
	text-decoration:none;
}
.mybtn:hover {
	background-color:lightgray;
}
.mybtn1 {
	color:black;
	text-decoration:none;
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
}
.leftbox1 span {
	font-size:13px;
	font-weight:bold;
	color:#424242;
}
.left1 {
	margin-left:12px;
}
.left2 {
	margin-left:18px;
}
.left3 {
	margin-left:32px;
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
	height:540px;
	margin-top:20px;
	float:right;
}
.sh {
	display:inline-block;
	width:150px;
	float:right;
}
.sharebox {
	display:none;
	width:176px;
	height:60px;
	z-index:6;
	clear:right;
}
.sharebox img {
	margin-left:8px;
	margin-top:7px;
}
.share:hover {
	opacity:0.7;
}
.r-title {
	border-bottom:1px solid lightgray;
	margin-top:37px;
	font-size:18px;
	font-weight:bold;
	height:40px;
	padding-bottom:10px;
}
.r-title a {
	text-decoration:none;
}
.rt3 {
	float:right;
	font-size:16px;
	color:white;
	background-color:#35c5f0;
	width:180px;
	height:33px;
	border-radius:4px;
	text-align:center;
	padding-top:7px;
}
.rt3:hover {
	background-color:rgb(16,175,222);
}
.rt1 {
	margin-left:35px;
	color:black;
}
.rt1:hover {
	color:#35c5f0;
}
.rt {
	color:#35c5f0;
}
.r-con {
	display:inline-block;
	width:270px;
	text-align:center;
	margin-left:230px;
	margin-top:100px;
}
.r-con span {
	font-size:20px;
}
.r-con p {
	font-size:15px;
	color:gray;
	margin:0px;
	margin-top:10px;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1" style="color:#35c5f0;">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_profile.do"><li class="nav2-2">모두보기</li></a>
			<a href="mypage_picture.do"><li class="nav2-2">사진</li></a>
			<a href="mypage_ask.do"><li class="nav2-2"  style="color:#35c5f0; border-bottom:5px solid #35c5f0;">질문과답변</li></a>
			<a href="mypage_scrap.do"><li class="nav2-2">스크랩북</li></a>
			<a href="mypage_like.do"><li class="nav2-2">좋아요</li></a>
			<a href="mypage_activity.do"><li class="nav2-2">나의활동</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="left">
		<div class="sh">
			<img src="http://localhost:9000/myhouse/images/mypage/share.PNG" class="share">
			<div class="sharebox">
				<img src="http://localhost:9000/myhouse/images/mypage/facebook.PNG" class="img1">
				<img src="http://localhost:9000/myhouse/images/mypage/kakao.PNG" class="img2">
				<img src="http://localhost:9000/myhouse/images/mypage/naver.PNG" class="img3">
			</div>
		</div>
		<img src="http://localhost:9000/myhouse/images/mypage/myprofile.jpg" class="pro">
		<div class="leftbox">
			<span>귤먹고갈래</span>
			<a href="#" class="mybtn1">팔로워 2</a><div></div><a href="#" class="mybtn1">팔로잉 1</a>
			<a href="#" class="mybtn">설정</a>
		</div>
		<hr class="leftbar">
		<div class="leftbox1">
			<a href="#"><div class="scrap">
				<img src="http://localhost:9000/myhouse/images/mypage/scrap.PNG">
				<span class="left1">스크랩북</span>
				<span class="left3">0</span>
			</div></a>
			<a href="#"><div class="like">
				<img src="http://localhost:9000/myhouse/images/mypage/like.PNG">
				<span class="left2">좋아요</span><br>
				<span class="left4">0</span>
			</div></a>
		</div>
	</div>
	<div class="right">
		<div class="r-title">
			<a href="mypage_ask.do"><span class="rt">나의 질문</span></a>
			<a href="mypage_ask1.do"><span class="rt1">나의 답변</span></a>
			<a href="#" class="rt3">질문과답변 바로가기</a>
		</div>
		<div class="r-con"> 
			<span>인테리어에 대해</span><br>
			<span>궁금한 점이 있으신가요?</span>
			<p>오늘의집 질문과답변에서 인테리어<br>
			고수들과 전문가들에게 조언을 받으세요.</p>
		</div>
	</div>



</div>


</div>
</body>
</html>