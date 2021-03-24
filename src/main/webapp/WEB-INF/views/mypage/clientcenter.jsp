<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<script src="webpack:///./node_modules/vue/dist/vue.runtime.esm.js"></script>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#qa").click(function(){
			if($("#qa1").css("display") == "none") {
				$("#qa1").css("display","inline-block");
			}else if($("#qa1").css("display") == "inline-block") {
				$("#qa1").css("display","none");				
			}
		});
		
		
		$("#chat").click(function(){
			if($("#chat-frame-box").css("visibility") == "hidden") {
				$("#chat-frame-box").css("visibility","visible");
			}else if($("#chat-frame-box").css("visibility") == "visible") {
				$("#chat-frame-box").css("visibility","hidden");				
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
.center {
	width:1131px;
	height:250px;
	border:1px solid #35c5f0;
	display:inline-block;
	margin-left:50px;
	margin-top:40px;
	border-radius:4px;
	text-align:center;
	font-size:15px;
}
.center1 {
	width:1131px;
	height:410px;
	background-color:#effbff;
	margin-top:40px;
	margin-left:50px;
}
.centerbox {
	margin-top:38px;
	height:100px;
}
.centerbox span {
	display:inline-block;
	padding-bottom:5px;
	color: #424242;
	font-weight:bold;
}
.mon,
.mon1 {
	width:220px;
	height:60px;
	font-size:18px;
	color:white;
	background-color:#35c5f0;
	border-radius:4px;
	border:1px solid #35c5f0;
	margin-top:20px;
}
.mon:hover,
.mon1:hover {
	background:rgb(16,175,222);
}
.mon:active {
	border:1px solid #35c5f0;
}
.go {
	display:inline-block;
	width:200px;
	font-size:24px;
	font-weight:bold;
	margin-top:60px;
	padding-right:800px;
	float:left;
	margin-left:30px;
}
.go1 {
	float:left;
	width:400px;
	height:200px;
	margin-left:90px;
	margin-top:60px;
	margin-right:50px;
}
.juso {
	font-size:15px;
	display:inline-block;
	padding-right:50px;
	margin-bottom:10px;
	color:#35c5f0;
	text-decoration:underline;
}
.juso1 {
	float:left;
	font-size:18px;
	margin-bottom:5px;
	color:#424242;
}
.mon1 {
	margin-top:70px;
	margin-left:-310px;
}
.center2 {
	width:300px;
	height:200px;
	float:left;
	margin-top:60px;
}
.center2 span {
	float:left;
	display:inline-block;
	font-size:18px;
	font-weight:bold;
	margin-bottom:10px;
	color: #09addb;
}
.center3 ul {
	list-style:none;
	margin-left:70px;
}
.center3 li {
	display:inline-block;
	font-size:18px;
	font-weight:bold;
	color:#424242;
	margin-right:35px;
	margin-left:10px;
}
.centerbar,
.centerbar1 {
	width:950px;
	margin-left:135px;
	opacity:0.5;
}
.center4,
.qa1 {
	width:950px;
	margin-left:90px;
	display:inline-block;
	margin-top:16px;
}
.center4 span {
	float:left;
	font-size:18px;
}
.Q {
	margin-right:5px;
	color:#35c5f0;
	font-weight:bold;
}
.centerbar1 {
	margin-top:20px;
	margin-bottom:15px;
}
.qa1 span {
	font-size:18px;
	float:left;
	margin-bottom:5px;
}
.qa1 {
	display:none;
}
/*  */
#twc-chat-plugin #chat-frame-box {
    box-sizing: border-box;
    position: fixed;
    right: 25px;
    z-index: 20;
    border-radius: 10px;
    overflow: hidden;
    background-color: #fff;
    transition: 0.4s cubic-bezier(0.25, 0.8, 0.5, 1);
    box-shadow: 2px 2px 25px rgba(94, 94, 94, 0.5);
}

element.style {
    height: 730px;
}
#twc-chat-plugin #chat-frame-box iframe {
    width: 410px;
    border: 0;
    vertical-align: top;
}
.chatbox {
	visibility:hidden;
}
</style>
</head>
<body>

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
			<a href="mypage_notice.do"><li class="nav2-2">공지사항</li></a>
			<a href="mypage_clientcenter.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="center">
		<div class="centerbox">
			<span>코로나19로 인해 고객센터를 잠정적으로 축소하여 운영중입니다.</span><br>
			<span>전화 및 1:1문의하기 상담이 지연되고 있는 점 너른 양해 부탁드립니다.</span><br>
			<span>순차적으로 최대한 빠르게 안내해 드리도록 노력하겠습니다.</span>
		</div>
		<button class="mon" id="chat">1:1 문의하기</button>
	</div>
	<div class="center1">
		<div class="go">고객센터</div>
		<div class="go1">
			<span class="juso1">운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span><br>
			<span class="juso1">이메일 : cs@bucketplace.net</span> <span class="juso">주소&nbsp;복사</span><br>
			<span class="juso1">전화 : 1670-0876</span>
			<button class="mon1">1:1 문의하기</button>
		</div>
		<div class="center2">
			<span>배송은 얼마나 걸리나요?</span><br>
			<span>주문 취소는 어떻게 하나요?</span><br>
			<span>제품의 자세한 정보를 알고 싶어요.</span><br>
			<span>제품이 불량일 때는?</span>
		</div>
	</div>
	<div class="center3">
		<ul>
			<li style="color:#35c5f0;">전체</li>
			<a href="#"><li>주문/결제</li></a>
			<a href="#"><li>배송관련</li></a>
			<a href="#"><li>취소/환불</li></a>
			<a href="#"><li>반품/교환</li></a>
			<a href="#"><li>증빙서류발급</li></a>
			<a href="#"><li>회원정보변경</li></a>
			<a href="#"><li>서비스/기타</li></a>
		</ul>
		<hr class="centerbar">
	</div>
	<div class="center4" id="qa">
		<span class="Q">Q</span><span>[긴급] 고객센터 전화 상담과 1:1문의하기 상담이 가능한가요?</span>
	</div>
	<div class="qa1" id="qa1">
		<span class="Q">A</span><span>현재 코로나19 로 인해 고객센터 운영이 일부 축소되어 전화 및 1:1문의하기 답변에 평소보다 많은 시간이 소요되고 있습니다.</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;응대 지연으로 불편함을 드려 대단히 죄송합니다.</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;궁금하신 사항은 1:1문의하기로 남겨주시면 순차적으로 최대한 빠르게 안내해 드리겠습니다.</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>주문 내역은 어떻게 확인할 수 있나요?</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>비회원주문 및 전화주문이 가능한가요?</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>신용카드 무이자 할부가 되나요?</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>신용카드 결제 후 할부 개월 수를 변경 가능한가요?</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>주문 후 결제 방법을 변경하고 싶은데 어떻게 해야 하나요?</span>
	</div>
	<hr class="centerbar1">
	<div class="center4">
		<span class="Q">Q</span><span>결제 시 에러 메시지가 나오는 경우 해야하나요?</span>
	</div>
	<hr class="centerbar1">
	<div id="twc-chat-plugin" class="">
		<div id="chat-icon" style="transform: scale(0);">
			<img src="https://storage.googleapis.com/cloud-gate-cdn/image/icon_webchat_v2.png">
			<div class="loader">Loading...</div>
		</div>
		<div id="chat-frame-box" style="bottom: 25px;" class="chatbox">
		<iframe id="chat-frame" src="https://webchat.thecloudgate.io/webChat?channelType=chat&amp;brandKey=GkuoN89G8pns6pIjYHM9og" style="height: 730px;">
		</iframe>
		</div>
		
	</div>
	
</div>
</div>
</body>
</html>