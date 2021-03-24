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
	height:80px;
	margin-top:10px;
}
.imgbox {
	width:60px;
	height:60px;
	display:inline-block;
	float:left;
	margin-left:50px;
}
.imgbox img {
	width:60px;
	height:60px;
	margin-bottom:10px;
}
.messagebox {
	display:inline-block;
	font-size:16px;
	margin-top:18px;
	margin-left:-400px;
	margin-bottom:20px;
	clear:left;
}
.messagebox span {
	color:#35c5f0;
	font-weight:bold;
}
.datebox {
	float:right;
	font-size:12px;
	margin-top:40px;
	margin-right:50px;
	color:#bdbdbd;
}
.textbar {
	clear:left;
	opacity:0.1;
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
			<div class="act-title"><a href="mypage_activity.do"><p class="ab" style="color:#35c5f0;">나의 활동</p></a><a href="mypage_activity2.do"><p>판매 활동</p></a><a href="mypage_activity3.do"><p>문의 답변</p></a><a class="myhome" href="mypage_profile1.do"><span>마이홈으로</span></a></div>
			<div class="month">2021년 02월</div>
			<c:forEach var="vo" items="${list }">
			<c:if test="${vo.photo_simage != null }">
				<a href="community_page.do?pno=${vo.pno}"><div class="textbox">
					<div class="imgbox"><img src="http://localhost:9000/myhouse/resources/upload/${vo.photo_simage }"></div>
					<div class="messagebox"> 사진 을 <span>좋아요</span> 했어요.</div>
					<!-- <div class="datebox">2021년 1월 14일 23시 15분</div> -->
					<hr class="textbar">
				</div></a>
			</c:if>
			</c:forEach>
			<c:if test="${lcount == 0}">
				<div class="likenone"><span>아직 좋아한 콘텐츠가 없습니다.<br>
					마음에 드는 콘텐츠를 발견하면 좋아요를 눌러보세요!</span></div>
			</c:if>
		</div>
	</div>
</body>
</html>