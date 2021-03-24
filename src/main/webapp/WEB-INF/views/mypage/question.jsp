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
.question {
	display:inline-block;
	width:900px;
	height:auto;
	margin-top:40px;
	padding-bottom:30px;
	border:1px solid lightgray;
	box-shadow: 1px 5px 5px 2px rgb(17 17 17 / 10%);
}
.question a {
	text-decoration:none;
	display:inline-block;
}
.q-title {
	font-size:21px;
	font-weight:bold;
	margin-top:40px;
	width:900px;
	display:inline-block;
}
.q-title span{
	float:left;
}
.q-list {
	height:66px;
	margin-top:20px;
}
.q-list:hover {
	opacity:0.5;
}
.q-list:active {
	opacity:0.5;
}
.q-span {
	font-size:16px;
	font-weight:bold;
	color:black;
	display:inline-block;
	margin-bottom:10px;
	float:left;
}
.q-list p {
	margin-top:5px;
	font-size:14px;
	color:rgb(130, 140, 148);
	display:inline-block;
	margin-bottom:24px;
	float:left;
	margin-left:30px;
}
.q-box {
	display:inline-block;
	width:800px;
}
.q-box1{
	display:inline-block;
	width:750px;
}
.q-box2{
	display:inline-block;
	width:800px;
	margin-top:10px;
}
.questbar {
	width:810px;
	opacity:0.5;
	margin:0px;
	margin-left:50px;
	border:1px solid lightgray;
	display:inline-block;
	margin-bottom:10px;
}
.q-icon {
	font-size:20px;
	font-weight:bold;
	color:#35c5f0;
}
.whitebox{
	margin-bottom:100px;
}
.enter{
	display:inline-block;
	float:left;
	width:28px;
	height:28px;
	margin-top:-10px;
	margin-right:3px;
}
.besongnull {
	height:500px;
	text-align:center;
}
.besongnull span {
	margin-top:100px;
	font-size:15px;
	color:#424242;
	display:inline-block;
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
			<a href="mypage_question.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">나의문의</li></a>
			<a href="mypage_notice.do"><li class="nav2-2" >공지사항</li></a>
			<a href="service_center.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="q-title"><span>나의문의내역</span></div>
	<div class="question">
		<c:if test="${lcount == 0 }">
			<div class="besongnull"><span>현재 문의한 상품이 존재하지 않습니다.</span></div>
		</c:if>
		<c:forEach var="vo" items="${list}">
		<a><div class="q-list">
			<div class="q-box2"><span class="q-span"><span class="q-icon">Q&nbsp;&nbsp;</span>상품번호 - ${vo.gno} </span></div>
			<div class="q-box1"><img src="http://localhost:9000/myhouse/images/mypage/enter.png" class="enter"><span class="q-span">${vo.qcontent }</span></div>
			<div class="q-box"><p>${vo.qdate}</p></div>
		<hr class="questbar">
		</div></a>
		</c:forEach>
	</div>
		
</div>
</div>
	<div class="whitebox"></div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>