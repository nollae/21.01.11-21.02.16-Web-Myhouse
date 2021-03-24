<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "Noto Sans KR";
}
.profile {
	margin:auto;
	width:1200px;
	text-align:center;
}
.active {
	border:1px solid lightgray;
	width:1000px;
	height:auto;
	margin-top:30px;
	margin-left:70px;
	padding-bottom:20px;
	box-shadow: 0 1px 4px 0 rgba(17, 17, 17, 0.1);
}
.act-title {
	display:block;
	font-size:24px;
	font-weight:bold;
	margin-top:30px;
	margin-left:50px;
	height:90px;
}
.act-title p {
	float:left;
	margin-right:20px;
}
.month {
	display:inline-block;
	width:900px;
	height:45px;
	font-size:18px;
	font-weight:bold;
	color:#757575;
	background-color:#eeeeee;
	border-bottom:3px solid lightgray;
	padding-top:15px;
}
.textbox {
	display:inline-block;
	width:900px;
	height:160px;
	margin-top:20px;
}
.panmebox {
	width:150px;
	height:150px;
	display:inline-block;
	float:left;
	margin-left:50px;
	margin-bottom:20px;
}
.panmebox img {
	width:150px;
	height:150px;
	margin-bottom:10px;
	border-radius:7px;
}
.panbox2,
.panbox1 {
	display:inline-block;
	font-size:15px;
	width:600px;
	height:30px;
	float:left;
	margin-left:20px;
}
.panbox1{
	margin-top:5px;
}
.panbox2{
	margin-bottom:5px;
}
.panmeb1{
	font-weight:bold;
	font-size:15px;
	float:left;
}
.panmeb,
.panmeb2 {
	font-weight:bold;
	font-size:20px;
	float:left;
}
.panmeb2{
	display:inline-block;
	margin-left:40px;
}
.pan{
	float:left;
	font-size:17px;
	margin-left:10px;
	padding-top:2px;
}
.pan1{
	float:left;
	font-size:14px;
	margin-left:10px;
	padding-top:1px;
}
.textbar {
	clear:left;
	opacity:0.1;
	margin-top:10px;
}
.active a {
	color:black;
}
.myhome{
	float:right;
	margin-right:40px;
	font-size:15px;
	text-decoration:none;
}
.likenone {
	text-align:center;
	font-size:15px;
	color:#424242;
	margin-bottom:50px;
}
.likenone span {
	display:inline-block;
	margin-top:60px;
}
</style>
</head>
<body>
	<div class="profile">
		<div class="active">
			<div class="act-title"><a href="mypage_activity.do"><p>나의 활동</p></a><a href="mypage_activity2.do"><p class="ab" style="color:#35c5f0;">판매 활동</p></a><a href="mypage_activity3.do"><p>문의 답변</p></a><a class="myhome" href="mypage_profile1.do"><span>마이홈으로</span></a></div>
			<div class="month">2021년 02월</div>
			<c:if test="${pcount == 0 }">
				<div class="likenone"><span>아직 판매중인 콘텐츠가 없습니다.<br>
						판매할 물건들을 한번 판매해보세요!</span></div>
			</c:if>
			<c:forEach var="vo" items="${list}">
			<a href="store_page.do?ino=${vo.ino}"><div class="textbox">
				<div class="panmebox"><img src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage }"></div>
				<div class="panbox1"><span class="panmeb1">상품번호</span><span class="pan1">${vo.ino}</span></div>
				<div class="panbox2"><span class="panmeb">회사명</span><span class="pan">${vo.company }</span><span class="panmeb2">컬러</span><span class="pan">${vo.color }</span></div>
				<div class="panbox2"><span class="panmeb">상품이름</span><span class="pan">${vo.ititle }</span><span class="panmeb2">가격</span><span class="pan">${vo.goods_price }</span></div>
				<c:if test="${vo.status == 0 }">
					<div class="panbox2"><span class="panmeb">판매상태</span><span class="pan">대기중</span></div>
				</c:if>
				<c:if test="${vo.status == 1 }">
					<div class="panbox2"><span class="panmeb">판매상태</span><span class="pan">판매중</span></div>
				</c:if>
				<hr class="textbar">
			</div></a>
			</c:forEach>
		</div>
	</div>
</body>
</html>