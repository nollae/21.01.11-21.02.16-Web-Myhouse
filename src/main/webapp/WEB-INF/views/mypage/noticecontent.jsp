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
.mid1 {
	display:inline-block;
	width:1136px;
	height:596px;
}
.content {
	display:inline-block;
	width:900px;
	height:auto;
	margin-top:40px;
	margin-left:60px;
	padding-bottom:30px;
}
.content a {
	text-decoration:none;
}
.content h1 {
	font-size:24px;
	margin-left:120px;
	margin-bottom:10px;
	text-align:center;
	float:left;
}
.content span{
	text-align:center;
}
.date {
	width:500px;
	font-size:16px;
	font-weight:bold;
	color:#828c94;
	float:left;
	margin-left:-90px;
	margin-bottom:20px;
}
.conbar {
	width:800px;
	margin-left:102px;
	margin-top:30px;
	margin-bottom:30px;
	opacity:0.5;
}
.con1 {
	width:750px;
	margin-left:60px;
	display:inline-block;
}
.con1 p {
	float:left;
	margin:0px;
	font-size:15px;
	margin-bottom:5px;
}
.con2 {
	width:750px;
	margin-left:60px;
	display:inline-block;
	margin-top:25px;
}
.con2 span {
	font-size:15px;
	float:left;
}
.con2-1 {
	color:black;
	font-weight:bold;
}
.con2-2 {
	color:blue;
}
.con3 {
	width:750px;
	margin-left:60px;
	display:inline-block;
	margin-top:25px;
}
.con3 span {
	float:left;
	font-size:15px;
}
.con4 {
	width:700px;
	margin-left:10px;
	display:inline-block;
	margin-top:25px;
}
.con4 span {
	float:left;
	font-size:15px;
}
.con2-3 {
	margin-top:20px;
}
.conbtn {
	font-size:16px;
	font-weight:bold;
	color:white;
	background-color:#35c5f0;
	width:180px;
	height:45px;
	border-radius:4px;
	border:1px solid #35c5f0;
	text-align:center;
	padding-top:4px;
	margin-left:30px;
}
.conbtn:hover {
	background-color:rgb(16,175,222);
}	
.conbox{
	margin-left:120px;
}
.notbtn{
	text-align:center;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1"  style="color:#35c5f0;">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_orderlist.do"><li class="nav2-2">주문배송내역</li></a>
			<a href="mypage_notice.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">공지사항</li></a>
			<a href="mypage_clientcenter.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid1">
	<div class="content">
		<h1>${vo.ntitle}</h1>
		<span class="date">${vo.ndate }</span>
		<hr class="conbar">
		<div class="conbox">
			${vo.ncontent }
		</div>
		
		
			<hr class="conbar">
			<div  class="notbtn">
			<a href="mypage_notice.do"><button type="button" class="conbtn">목록으로 돌아가기</button></a>
			</div>
	</div>
		
</div>
</div>
</body>
</html>