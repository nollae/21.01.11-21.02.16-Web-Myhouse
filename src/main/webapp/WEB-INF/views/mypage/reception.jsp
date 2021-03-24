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
	text-align:center;
}
.reception {
	width:930px;
	height:260px;
	border:1px solid lightgray;
	border-radius:15px;
	display:inline-block;
	margin-top:70px;
	padding-top:50px;
	padding-left:70px;
	box-shadow: 0 1px 4px 0 rgba(14, 14, 14, 0.1);
}
.re-title {
	height:80px;
}
.re-title p {
	font-size:30px;
	font-weight:bold;
	float:left;
}
.re-title1 {
	font-size:15px;
	margin-left:170px;
	margin-top:100px;
	float:left;
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
			<a href="mypage_notice.do"><li class="nav2-2">공지사항</li></a>
			<a href="mypage_clientcenter.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="reception">
		<div class="re-title"><p>상품문의내역</p></div>
		<span class="re-title1">아직 문의한 내역이 없습니다.</span>
	</div>
		
</div>
</div>
</body>
</html>