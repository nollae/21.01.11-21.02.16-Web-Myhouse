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
<script>
	$(document).ready(function(){
		
		$("#share").click(function(){
			if($("#share1").css("visibility") == "hidden") {
				$("#share1").css("visibility","visible");
			}else if($("#share1").css("visibility") == "visible") {
				$("#share1").css("visibility","hidden");				
			}
		});
		
		
		
		
		
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
.right1 {
	display:inline-block;
	width:750px;
	height:auto;
	margin-top:20px;
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
.likepic {
	display:inline-block;
	width:695px;
	height:auto;
	margin-top:10px;
}
.likepic img {
	width:219px;
	height:219px;
	padding-right:10px;
	padding-bottom:10px;
}
.likenone {
	text-align:center;
	font-size:15px;
	color:#424242;
}
.likenone span {
	display:inline-block;
	margin-top:60px;
}
/*  */
.praise-feed {
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 20px 0px;
}
.row{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	flex-wrap: wrap;
	box-sizing: border-box;
	margin-right: -10px;
	margin-left: -10px;
}
.praise-feed__item{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	color: inherit;
	text-decoration: none;
	cursor: pointer;
	touch-action: manipulation;
	position: relative;
	display: block;
	margin-bottom:10px;
	margin-right:10px;
	overflow: hidden;
	background-color: #ededed;
}
.praise-feed__item__type{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	cursor: pointer;
	-webkit-tap-highlight-color: transparent;
	border: none;
	position: absolute;
	display: block;
	color: #fff;
	background: rgba(0,0,0,.74);
	padding: 4px;
	right: 10px;
	top: 10px;
	border-radius: 4px;
	font-size: 12px;
}
.praise-feed__item__image{
	width:100%;
}
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
			<a href="mypage_picture.do"><li class="nav2-2">사진</li></a>
			<a href="scrap_all.do"><li class="nav2-2">스크랩북</li></a>
			<a href="mypage_like.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">좋아요</li></a>
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
	<div class="right1">
		<c:if test="${lcount  == 0}">
			<div class="likenone"><span>아직 좋아한 콘텐츠가 없습니다.<br>
					마음에 드는 콘텐츠를 발견하면 좋아요를 눌러보세요!</span></div>
			</c:if>
		<c:if test="${lcount != 0 }">
		<div class="col-12 offset-lg-1 col-lg-8 wrap--contents">
			<div class="praise-feed">
				<div class="row" style="width:800px;">
				<c:forEach var="vo" items="${list}">
						<div class="praise-feed__item-wrap col-6 col-lg-4">
							<a class="praise-feed__item" href="community_page.do?pno=${vo.pno}">
								<img class="praise-feed__item__image" src="http://localhost:9000/myhouse/resources/upload/${vo.photo_simage}?pno=${vo.pno}">
								<span class="praise-feed__item__type">사진</span>
							</a>
						</div>
				</c:forEach>
				</div>
			</div>
		</div>
		</c:if>
		
		
		
	</div>



</div>


</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>