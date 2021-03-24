<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
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
	height:596px;
	text-align:center;
}
.notice {
	display:inline-block;
	width:900px;
	height:350px;
	margin-top:40px;
}
.notice a {
	text-decoration:none;
}
.notice h1 {
	padding-right:600px;
	font-size:24px;
	margin-bottom:0px;
	font-weight:bold;
}
.notlist {
	height:66px;
	margin-top:30px;
}
.notlist:hover {
	opacity:0.5;
}
.notlist:active {
	opacity:0.5;
}
.notlist span {
	float:left;
	font-size:15px;
	color:black;
	display:inline-block;
	margin-bottom:10px;
	margin-left:120px;
}
.notlist p {
	float:left;
	margin-top:5px;
	font-size:14px;
	font-weight:bold;
	color:rgb(130, 140, 148);
	display:inline-block;
	margin-bottom:24px;
	margin-left:120px;
}
.noticebar {
	width:750px;
	opacity:0.5;
	margin:0px;
	margin-left:107px;
	border:1px solid lightgray;
}
.no2 {
	margin-left:30px;
}
.notbox {
	display:inline-block;
	float:left;
	width:890px;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp" />
<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile1.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1"  style="color:#35c5f0;">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_orderlist.do"><li class="nav2-2">주문배송내역</li></a>
			<a href="mypage_question.do"><li class="nav2-2">나의문의</li></a>
			<a href="mypage_notice.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">공지사항</li></a>
			<a href="service_center.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="notice">
		<h1>공지사항</h1>
		<c:forEach var="vo" items="${list}">
		<a href="mypage_noticecontent.do?nno=${vo.nno}"><div class="notlist">
			<div class="notbox"><span>${vo.ntitle }</span></div>
			<div class="notbox"><p>${vo.ndate}</p></div>
		<hr class="noticebar">
		</div></a>
		</c:forEach>
	</div>
		
</div>
</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>