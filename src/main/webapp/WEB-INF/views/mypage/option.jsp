<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
		$(document).ready(function(){
			
			 function readInputFile(input) {
				    if(input.files && input.files[0]) {
				        var reader = new FileReader();
				        reader.onload = function (e) {
				            $('#p_img').attr("src", e.target.result);
				        }
				        reader.readAsDataURL(input.files[0]);
				    }
				} 

				$("#p_picture").on('change', function(){
				     readInputFile(this);
				});
		
				
				
				//파일선택
				$("input[type='file']").on('change',function(){
					if(window.FileReader){
						var fileName = $(this)[0].files[0].name;
						$("#fname").text("").text(fileName);
					}
				});
			
				
				
				$("#emailbox").focusout(function(){
					if($("#emailbox").val() != ""){
						$(".emailbox2-1").css("display","none");
						$(".emailbox2").css("display","block");
					}else{
						$(".emailbox2").css("display","none");
						$(".emailbox2-1").css("display","block");
						$("#emailbox").focus();
					}
				});
				
				$("#emailbox1").focusout(function(){
					if($("#emailbox1").val() != "선택하세요"){
						$(".emailbox2-1").css("display","none");
						$(".emailbox2").css("display","block");
					}else{
						$(".emailbox2").css("display","none");
						$(".emailbox2-1").css("display","block");
						$("#emailbox1").focus();
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
	height:596px;
	text-align:center;
}
.review {
	display:inline-block;
	width:1000px;
	height:auto;
	margin-top:50px;
	padding-bottom:20px;
}
.option {
	display:inline-block;
	border:1px solid lightgray;
	width:1000px;
	height:1010px;
	margin-left:50px;
	box-shadow: 0 1px 4px 0 rgba(14, 14, 14, 0.1);
}
.option1 {
	display:inline-block;
	margin-top:60px;
	margin-bottom:100px;
	width:900px;
}
.option1 span {
	font-size:24px;
	font-weight:bold;
	float:left;
}
.option2 {
	display:inline-block;
	width:900px;
	margin-bottom:40px;
}
.option2 span {
	float:left;
}
.op1 {
	display:inline-block;
	font-size:15px;
}
.op2 {
	font-size:13px;
	color:#757575;
	display:inline-block;
	margin-top:10px;
	margin-left:-30px;
}
.op2-1{
	font-size:13px;
	color:#757575;
	display:inline-block;
	margin-top:10px;
	margin-left:-40px;
}
.op3 {
	font-size:15px;
	margin-top:12px;
}
.emailbox {
	border:1px solid lightgray;
	border-radius:7px;
	float:left;
	display:inline-block;
	width:190px;
	height:40px;
	margin-top:-23px;
	margin-left:48px;
	padding-left:10px;
}
.select {
	width:196px;
	height:44px;
	float:left;
	display:inline-block;
	margin-top:-23px;
}
.select select {
	border:1px solid lightgray;
	display:inline-block;
	padding-left:10px;
	border-radius:7px;
	width:190px;
	height:42px;
	-webkit-appearance: none;
    -moz-appearance: none;
}
.email1 {
	display:inline-block;
	float:left;
	margin:0px;
	font-size:18px;
	margin-top:-15px;
	margin-left:10px;
	margin-right:10px;
	color:lightgray;
	border:1px solid white;
}
.emailbox2 {
	font-size:13px;
	font-weight:bold;
	color:#9e9e9e;
	margin-top:27px;
	padding-right:390px;
}
.emailbox2-1 {
	font-size:13px;
	font-weight:bold;
	color:tomato;
	margin-top:27px;
	margin-left:20px;
	width:300px;
}
.emailbox-op3,
.emailbox-op2 {
	border:1px solid lightgray;
	border-radius:7px;
	float:left;
	display:inline-block;
	width:500px;
	height:40px;
	margin-left:50px;
	padding-left:10px;
}
.emailbox-op2 {
	margin-top:-23px;
}
.gender {
	font-size:15px;
	display:inline-block;
	margin-left:5px;
}
.genderbox {
	display:inline-block;
	float:left;
	margin-left:80px;
}
.memberupdate {
	width:290px;
	height:40px;
	font-size:18px;
	color:white;
	background-color:#35c5f0;
	border-radius:4px;
	border:1px solid #35c5f0;
	margin-top:20px;
	float:left;
	margin-left:110px;
}
.memberupdate:hover {
	background:rgb(16,175,222);
}
.p_image {
	width:198px;
	height:198px;
	float:left;
	margin-left:20px;
	background-size : 100%
}
input[type="file"] {
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    z-index: 10;
    opacity: 0;
    cursor: pointer;
    z-index: 6;
}
::-webkit-file-upload-button {
    cursor: pointer;
}
.p_image>img{
	width:198px;
	height:198px;
}
.emailbox2-1{
	display:none;
}
#p_picture {
	z-index: 10;
}
#p_img {
	position:absolute;
}
.been{
	margin-bottom:100px;
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
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1" style="color:#35c5f0;">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_option.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">회원정보수정</li></a>
			<a href="mypage_password.do"><li class="nav2-2">비밀번호변경</li></a>
			<a href="mypage_memberdelete.do"><li class="nav2-2">회원탈퇴</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="option">
			<div class="option1"><span>회원정보수정</span></div>
			<form name="optionUpdateForm" action="option_update_proc.do" method="post" enctype="multipart/form-data">
				<div class="option2">
					<span class="op1">이메일</span><br>
					<span class="op2-1">* 필수항목</span>
					<input type="text" class="emailbox" id="emailbox" value=${str2[0]} name="email1"  disabled>
					<p class="email1">@</p>
					<div class="select">
						<select  class="email" id="emailbox1" name="email2"  disabled>
							<option valuse="${str2[1]}">${str2[1]}</option>
							<option valuse="naver.com">naver.com</option>
							<option valuse="daum.net">daum.net</option>
							<option valuse="gmail.com">gmail.com</option>
						</select>
					</div>
					<div class="emailbox2">이메일을 변경하시려면 운영자에게 이메일을 보내주세요.</div>
					<div class="emailbox2-1">이메일을 입력해주세요</div>
				</div>
				<div class="option2">
					<span class="op1">별명</span><br>
					<span class="op2">* 필수항목</span>
					<input type="text" class="emailbox-op2" placeholder="별명을 적어주세요" value="${ovo.nickname}" name="nickname">
				</div>
				<div class="option2">
					<span class="op3">홈페이지</span>
					<input type="text" class="emailbox-op3" placeholder="https:ohou.se" value="${ovo.homepage}" name="homepage">
				</div>
				<div class="option2">
					<span class="op3">성별</span>
					<div class="genderbox">
					<c:if test="${ovo.gender =='남성'}">
						<input type="radio" name="gender" value="남성" style="width:20px;height:20px;border:1px;" checked><p class="gender" >남성</p>
						<input type="radio" name="gender" value="여성" style="width:20px;height:20px;border:1px;"><p class="gender" >여성</p>
					</c:if>
					<c:if test="${ovo.gender =='여성'}">
						<input type="radio" name="gender" value="남성" style="width:20px;height:20px;border:1px;"><p class="gender" >남성</p>
						<input type="radio" name="gender" value="여성" style="width:20px;height:20px;border:1px;"checked><p class="gender" >여성</p>
					</c:if>
					<c:if test="${ovo.gender == null}">
						<input type="radio" name="gender" value="남성" style="width:20px;height:20px;border:1px;"checked><p class="gender" >남성</p>
						<input type="radio" name="gender" value="여성" style="width:20px;height:20px;border:1px;"><p class="gender" >여성</p>
					</c:if>
					</div>
				</div>
				<div class="option2">
					<span class="op3">생년월일</span>
					<input type="text" class="emailbox-op3" placeholder="생년월일을 적어주세요" value='${ovo.birth }' name="birth">
				</div>
				<div class="option2">
					<span class="op3">프로필 이미지</span>
					<c:if test="${ovo.member_spimage != null }">
						<div class="p_image"  id="profile_image">
							<img src="http://localhost:9000/myhouse/resources/upload/${ovo.member_spimage}" id="p_img">
							<input type="file"  id="p_picture" name="file1" style="width:198px;height:198px;border:1px;">
						</div>
					</c:if>
					<c:if test="${ovo.member_spimage == null }">
						<div class="p_image"  id="profile_image">
							<img src="http://localhost:9000/myhouse/resources/upload/pro.png" id="p_img">
							<input type="file"  id="p_picture" name="file1" style="width:198px;height:198px;border:1px;">
						</div>
					</c:if>
				</div>
				<div class="option2">
					<span class="op3">한줄 소개</span>
					<input type="text" class="emailbox-op3" placeholder="자기를 소개해주세요." name="intro" value="${ovo.intro }">
				</div>
				<div class="option2">
					<button type="submit" class="memberupdate">회원 정보 수정</button>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
	<div class="been"></div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>