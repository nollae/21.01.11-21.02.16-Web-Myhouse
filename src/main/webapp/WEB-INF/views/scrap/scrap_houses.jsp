<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
	
		$("#share").click(function(){
			if($("#share1").css("visibility") == "hidden") {
				$("#share1").css("visibility","visible");
			}else if($("#share1").css("visibility") == "visible") {
				$("#share1").css("visibility","hidden");				
			}
		});
	
	
	
	
});

</script>

</head>
<style>
.sharebox {
    border-radius:10px;
	margin-top:30px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    background: #fff;
    font-size: 0;
    box-shadow: 2px 2px 12px 2px rgba(5,7,10,.4);
    z-index: 100;
    transition: opacity .3s ease,transform .3s ease;
    width:255px;
	height:65px;
	visibility:hidden;
    background: transparent;
    float:right;
}

.sharebox img {
	margin-left:10px;
	margin-top:7px;
}
.sharebox img:hover {
	opacity:0.5;
}
.collection-book-actions__share-icon{
	

}
.drop-down1{
	float:right;
}
.collection-book-owner__link{
	margin-left:18px;
}
.likenone1 {
	text-align:center;
	font-size:15px;
	color:#424242;
	width:1200px;
}
.likenone span {
	display:inline-block;
	margin-top:60px;
}
</style>
<body>
<!-- header -->
	<jsp:include page="../header1.jsp" />

	<div class="container collection-feed">
		<main>
			<header class="row collection-book-header">
				<div>
					<h1 class="collection-book-title__book-name">????????????</h1>
					<p class="collection-book-owner">

						<a class="collection-book-owner__link" href="mypage_profile1.do"><img
							class="profile-image"
							<c:if test="${prof.member_spimage != null }">
								src="http://localhost:9000/myhouse/resources/upload/${prof.member_spimage}"
							</c:if>
							<c:if test="${prof.member_spimage == null }">
								src="http://localhost:9000/myhouse/resources/upload/pro.png"
							</c:if>
							srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
							class="collection-book-owner__name">${prof.nickname }</span></a>
					</p>
				</div>
				<div class="collection-book-actions">
					<div class="drop-down1">
						<a id="share"><svg class="collection-book-actions__share-icon" width="24"
								height="24" viewBox="0 0 24 24" fill="currentColor"
								preserveAspectRatio="xMidYMid meet">
								<path
									d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg></a>
					</div>
					<div class="sharebox" id="share1">
					<a href ="https://www.facebook.com/login.php?skip_api_login=1&api_key=966242223397117&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fsharer.php%3Fu%3Dhttps%253A%252F%252Fozip.me%252FknTZP3P&cancel_url=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Fclose_window%2F%3Fapp_id%3D966242223397117%26connect%3D0%23_%3D_&display=popup&locale=ko_KR">
					<img src="http://localhost:9000/myhouse/images/mypage/face.png" class="img1"></a>
					<a href="https://accounts.kakao.com/login/kakaostory?continue=https%3A%2F%2Fstory.kakao.com%2Fs%2Fshare%3Furl%3Dhttps%253A%252F%252Fozip.me%252FBjp8kie%26kakao_agent%3Dsdk%252F1.39.10%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fohou.se%26app_key%3D3019c756ec77dd7e0a24e56d9d784f77%26text%3D%25EA%25B7%25A4%25EB%25A8%25B9%25EA%25B3%25A0%25EA%25B0%2588%25EB%259E%2598%25EB%258B%2598%25EC%259D%2598%2520%25EC%258A%25A4%25ED%2581%25AC%25EB%259E%25A9%25EB%25B6%2581%25EC%259D%2584%2520%25EA%25B3%25B5%25EC%259C%25A0%25ED%2595%25A9%25EB%258B%2588%25EB%258B%25A4">
					<img src="http://localhost:9000/myhouse/images/mypage/story.png" class="img2"></a>
					<a href="https://accounts.kakao.com/login?continue=https://sharer.kakao.com/talk/friends/picker/shortlink/4ZVJ2ambHv%2540Thph%2540Pn3z%255Di%253Bs%252FEeampeRHVN%253BcHct%255BDqjvlqQau6LH%253E%2560C8%255Bgp_0pi">
					<img src="http://localhost:9000/myhouse/images/mypage/kaka.png" class="img3"></a>
					<a href="http://share.naver.com/web/shareView.nhn?url=https%3A%2F%2Fozip.me%2FBjp8kie&title=%EA%B7%A4%EB%A8%B9%EA%B3%A0%EA%B0%88%EB%9E%98%EB%8B%98%EC%9D%98%20%EC%8A%A4%ED%81%AC%EB%9E%A9%EB%B6%81%EC%9D%84%20%EA%B3%B5%EC%9C%A0%ED%95%A9%EB%8B%88%EB%8B%A4">
					<img src="http://localhost:9000/myhouse/images/mypage/blog.png" class="img4"></a>
				</div>
				</div>
			</header>
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="81"
				class="sticky-container collection-feed__navi">
				<div class="sticky-child" style="position: relative;">
					<nav class="page-navigation collection-book-nav">
						<ul style="transform: translateX(0px);">
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_all.do">?????? (${acount})</a></li>
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_product.do"
								target="_self">?????? (${count })</a></li>
							<li class="page-navigation__item"><a class="active"
								href="http://localhost:9000/myhouse/scrap_houses.do" target="_self">??????
									(${hcount})</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="142"
				class="sticky-container collection-feed__edit-panel">
				<div class="sticky-child" style="position: relative;">
					<div class="collection-feed__edit-panel__wrap">
						<div class="collection-feed__edit-panel__left">
							<div class="collection-feed-filter__empty"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="virtualized-list collection-feed-collections row"
				style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
				<c:if test="${hcount == 0 }">
					<div class="likenone1"><span>?????? ???????????? ???????????? ????????????.<br>
							????????? ?????? ???????????? ???????????? ???????????? ???????????????!</span></div>
				</c:if>	
				<c:forEach var="vo" items="${list }">
				<div class="col-6 col-md-4">
					<div class="collection__wrap">
						<a href="community_page.do?pno=${vo.pno}">
						<div class="collection collection--project">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="http://localhost:9000/myhouse/resources/upload/${vo.photo_simage}?pno=${vo.pno}"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=512&amp;h=342&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=720&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=1024&amp;h=683&amp;c=c&amp;webp=1 3x">
								</div>
								<div class="collection__info">
									<p class="collection__info__sub-title">${vo.pstyle } - ${vo.ptype }</p>
									<p class="collection__info__title">${vo.pcontent }</p>
								</div>
							</div></a>
					</div>
				</div>
				</c:forEach>
			</div>
		</main>
	</div>
	
	
	<%-- 	<jsp:include page="../footer.jsp" /> --%>
</body>
</html>