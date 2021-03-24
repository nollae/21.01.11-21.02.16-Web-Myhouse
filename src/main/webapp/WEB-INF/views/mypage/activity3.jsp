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
.QAimgbox {
	width:150px;
	height:150px;
	display:inline-block;
	float:left;
	margin-left:50px;
	margin-bottom:20px;
}
.QAimgbox img {
	width:150px;
	height:150px;
	margin-bottom:10px;
	border-radius:7px;
}
.QAbox,
.QAbox1 {
	display:inline-block;
	font-size:16px;
	width:600px;
	height:50px;
	float:left;
	margin-left:10px;
}
.QAbox{
	margin-top:10px;
}
.QAbox2{
	display:inline-block;
	font-size:16px;
	width:600px;
	height:20px;
	float:left;
	margin-left:10px;
	margin-top:15px;
}
.QAbox2 span{
	float:left;
	font-size:14px;
	margin-left:10px;
}
.QAbox span,
.QAbox1 span{
	float:left;
	margin-left:10px;
	margin-top:3px;
	display:inline-block;
	font-size:18px;
}
.blue-1 {
	color:#35c5f0;
	font-weight:bold;
	font-size:20px;
	float:left;
}
.red-1{
	color:#ff005a;
	font-weight:bold;
	font-size:20px;
	float:left;
}
.QAdate {
	float:right;
	font-size:12px;
	color:#bdbdbd;
}
.textbar {
	clear:left;
	opacity:0.1;
	margin-top:10px;
}
.active a {
	color:black;
}
.ab{
	border-bottom: 5px solid #35c5f0;
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
			<div class="act-title"><a href="mypage_activity.do"><p>나의 활동</p></a><a href="mypage_activity2.do"><p >판매 활동</p></a><a href="mypage_activity3.do"><p class="ab" style="color:#35c5f0;">문의 답변</p></a><a class="myhome" href="mypage_profile1.do"><span>마이홈으로</span></a></div>
			<div class="month">2021년 02월</div>
			<c:if test="${qcount == 0 }">
			<div class="likenone"><span>아직 문의 답변한 상품이 없습니다.<br>
					문의가 들어오면 답변해보세요!</span></div>
			</c:if>
			<c:forEach var="vo" items="${list}">
			<a href="#"><div class="textbox">
				<div class="QAimgbox"><img src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage }"></div>
				<div class="QAbox2"><span>상품번호 </span><span>${vo.gno }</span></div>
				<div class="QAbox"><span class="blue-1">Q</span><span>${vo.qcontent }</span><p class="QAdate">${vo.qdate }</p></div>
				<div class="QAbox1"><span class="red-1">A</span><span>${vo.qreply }</span><p class="QAdate">${vo.qdate_r }</p></div>
				<hr class="textbar">
			</div></a>
			</c:forEach>
		</div>
	</div>
</body>
</html>