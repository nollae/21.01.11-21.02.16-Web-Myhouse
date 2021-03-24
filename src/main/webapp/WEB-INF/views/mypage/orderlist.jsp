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
.mid1 {
	display:inline-block;
	width:1136px;
	height:auto;
	text-align:center;
	border:1px solid red;
	margin-top:20px;
}

.orderstatus {
	height:200px;
}
.orderstatus img {
	width:11px;
	height:8px;
}
.gigan {
	width:58px;
	height:30px;
	background-color:#f5f5f5;
	border:1px solid #f5f5f5;
	color:#757575;
	font-weight:bold;
	margin-right:6px;
	margin-left:30px;
	float:left;
}
.jumun {
	width:85px;
	height:30px;
	background-color:#f5f5f5;
	border:1px solid #f5f5f5;
	color:#757575;
	font-weight:bold;
	float:left;
}
.profile h2 {
	font-weight:bold;
	margin-top:40px;
	margin-bottom:30px;
}
.besong{
	margin-bottom:50px;
}
/*  */

.order-list__item__title {
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
	-webkit-box-align: center;
	align-items: center;
	height: 50px;
	border-bottom: 2px solid #ededed;
	padding-left: 20px;
	margin-top:30px;
}

.order-list__item__title__order{
	color: #424242;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	min-width: 160px;
	font-weight: 700;
	font-size: 18px;
	line-height: 25px;
}
.order-list__item__title__link{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	color: inherit;
	text-decoration: none;
	cursor: pointer;
	touch-action: manipulation;
	position: relative;
	display: block;
	font-size: 13px;
	line-height: 25px;
	text-align: right;
	padding-right: 40px;
	margin-left: auto;
	min-width: 50px;
}
.order-list__item__production{
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
}
.order-list__item__production__wrap {
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
	margin-bottom:40px;
}
.order-list__item__production__item{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	-webkit-box-align: center;
	align-items: center;
	padding: 20px;
	min-height: 110px;
	display: flex;
}
.order-list__item__production__item__wrap{
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
	width: 100%;
	-webkit-box-flex: 1;
	flex: 1 0 0px;
	align-items: center;
}
.order-list__item__production__item__img{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	border: 0;
	width: 100px;
	height: 100px;
	margin-right: 10px;
	border-radius: 4px;
}
.order-list__item__production__item__info{
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
	height: 100%;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-flex: 1;
	flex: 1 0 0px;
}
.order-list__item__production__item__info__wrap{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	margin-right: 10px;
	display: flex;
	-webkit-box-direction: normal;
	-webkit-box-orient: vertical;
	flex-direction: column;
	-webkit-box-flex: 1;
	flex: 1 0 0px;
	max-width: 45%;
}

.order-list__item__production__item__info__brand{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	color: inherit;
	text-decoration: none;
	cursor: pointer;
	touch-action: manipulation;
	display: block;
	font-size: 16px;
	line-height: 20px;
	font-weight: 500;
	margin-bottom: 10px;
}
.order-list__item__production__item__info__name{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	color: inherit;
	text-decoration: none;
	cursor: pointer;
	touch-action: manipulation;
	display: block;
	font-size: 18px;
	line-height: 25px;
	font-weight: 700;
}
.order-list__item__production__item__info__option{
	color: #424242;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 18px;
	line-height: 30px;
}
.order-list__item__production__item__info__price{
	color: #424242;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 18px;
	line-height: 30px;
}
.order-list__item__production__item__info__status{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 18px;
	line-height: 30px;
	color: #35c5f0;
}
.order-list__item__production__item__delivery {
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	-webkit-box-direction: normal;
	-webkit-box-orient: vertical;
	flex-direction: column;
	width: 150px;
	min-height: 110px;
}
.order-list__item__production__item__seller{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-tap-highlight-color: transparent;
	display: flex;
	-webkit-box-direction: normal;
	-webkit-box-orient: vertical;
	flex-direction: column;
	justify-content: center;
	text-align: center;
	width: calc(100% - 40px);
	height: 65px;
	padding: 5px;
	border-radius: 4px;
	background-color: #f5f5f5;
	font-size: 14px;
	margin: 0 auto 10px;
}
.order-list__item__production__item__seller__delivery-pay{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	text-align: center;
	font-size: 14px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	color: #757575;
	margin-bottom: 15px;
}
.order-list__item__production__item__seller__brand{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	text-align: center;
	font-size: 14px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-weight: 600;
}
.order-list__item__production__item__seller__brand__phone{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	text-align: center;
	font-size: 14px;
	font-weight: 600;
	-webkit-tap-highlight-color: transparent;
	text-decoration: none;
	cursor: pointer;
	touch-action: manipulation;
	margin-left: 10px;
	color: #35c5f0;
}
.besong {
	border:1px solid lightgray;
	box-shadow: 1px 5px 5px 2px rgba(17, 17, 17, 0.1);
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
			<a href="mypage_orderlist.do"><li class="nav2-2"   style="color:#35c5f0; border-bottom:5px solid #35c5f0;">주문배송내역</li></a>
			<a href="mypage_question.do"><li class="nav2-2">나의문의</li></a>
			<a href="mypage_notice.do"><li class="nav2-2">공지사항</li></a>
			<a href="service_center.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<h2>배송내역</h2>
<div class="besong">
	<c:if test="${ocount == 0}">
		<div class="besongnull"><span>현재 구입한 상품이 존재하지 않습니다.</span></div>
	</c:if>
	<c:forEach var="vo" items="${list}">
	 <div class="order-list__item__title">
		<div class="order-list__item__title__order">${vo.ino} | ${vo.idate}</div>
		<a class="order-list__item__title__link" href="store_page.do?ino=${vo.ino}">상세보기</a>
	</div>
	<div class="order-list__item__production">
	<div class="order-list__item__production__wrap">
		<div class="order-list__item__production__item">
			<div class="order-list__item__production__item__wrap">
				<img class="order-list__item__production__item__img" src="http://localhost:9000/myhouse/resources/upload/${vo.interior_simage }">
				<div class="order-list__item__production__item__info">
					<div class="order-list__item__production__item__info__wrap">
						<a class="order-list__item__production__item__info__brand" href="#">${vo.company }</a>
						<a class="order-list__item__production__item__info__name" href="#">${vo.ititle}</a>
					</div>
					<div class="order-list__item__production__item__info__wrap">
						<div class="order-list__item__production__item__info__option">${vo.season } / ${vo.color }</div>
						<div class="order-list__item__production__item__info__price">${vo.goods_price }원 | 1개</div>
						<div class="order-list__item__production__item__info__status">입금완료 | 업체직접배달</div>
					</div>
				</div>
			</div>
			<div class="order-list__item__production__item__delivery"></div>
		</div>
		<div class="order-list__item__production__item__seller">
			<div class="order-list__item__production__item__seller__delivery-pay">착불 배송비는 상품 상세정보 참고</div>
			<div class="order-list__item__production__item__seller__brand">
				${vo.ititle}<a href="tel:031-761-6003" class="order-list__item__production__item__seller__brand__phone">${vo.company}</a>
			</div>
		</div>
	</div>
	</div>
	</c:forEach>
	
	
	
</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>