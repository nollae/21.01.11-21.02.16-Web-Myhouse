<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			$("#memdel").click(function(){
				if($("input[name='gender']:checked").length == 0){
					alert("필수체크가 되지않았습니다 위 약관을 읽고 체크해주세요.");
					$("#gen").focus();
					return false;
				}else if($("input[name='choice']:checked").length == 0){
					alert("필수체크가 되지않았습니다 위 약관을 읽고 체크해주세요.");
					$("#chk").focus();
					return false;
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
	height:auto;
	margin-left:50px;
	box-shadow: 0 1px 4px 0 rgba(14, 14, 14, 0.1);
	margin-bottom:50px;
}
.member  {
	display:inline-block;
	margin-top:60px;
	margin-bottom:40px;
	width:900px;
}
.member1 {
	display:inline-block;
	margin-top:10px;
	width:900px;
}
.member1-1 {
	display:inline-block;
	width:900px;
	margin-bottom:10px;
}
.member1-1 span {
	font-size:15px;
	float:left;
	color:#424242;
}
.member2 {
	display:inline-block;
	width:900px;
	height:350px;
	border:1px solid lightgray;
}
.member span {
	font-size:24px;
	font-weight:bold;
	float:left;
	color:#424242;
}
.member1 span {
	font-size:18px;
	font-weight:bold;
	float:left;
	color:#424242;
	margin-bottom:10px;
}
.mem {
	display:inline-block;
	width:900px;
	margin-top:20px;
	margin-left:20px;
}
.mem span {
	float:left;
	font-size:15px;
	font-weight:bold;
	color:#424242;
	margin-bottom:10px;
}
.mem1 {
	margin-left:10px;
}
.mem1 li {
	float:left;
	font-size:13px;
	margin-left:20px;
}
.none {
	list-style:none;
}
.mem2 {
	margin-left:20px;
	margin-top:10px;
	display:inline-block;
}
.mem2 span {
	float:left;
	margin-left:10px;
	font-size:13px;
}
.mem3 {
	display:inline-block;
	width:850px;
}
.mem3 span {
	float:left;
	margin-left:10px;
	font-size:13px;
}
.member3 {
	display:inline-block;
	width:900px;
	margin-top:25px;
	margin-bottom:50px;
}
.member3 input,
.member3 p{
	float:left;
}
.member3 p,
.member3 span {
	margin-top:-1px;
}
.member3 p {
	font-size:18px;
	color:#424242;
	margin-left:5px;
}
.member3 span{
	font-size:18px;
	font-weight:bold;
	color:#ff7777;
}
.member3 .mem4-1 {
	float:right;
}
.member3 .mem4 {
	float:right;
	font-weight:bold;
}
.red {
	margin-left:5px;
	margin-top:-1px;
	color:#ff7777;
	font-weight:bold;
	font-size:18px;
	float:left;
}
.mem4-1 {
	margin-right:5px;
}
.member4 {
	border:1px solid lightgray;
	width:900px;
	height:127px;
	margin-left:48px;
	margin-bottom:50px;
}
.member4 div {
	display:inline-block;
	margin-right:20px;
	margin-top:30px;
	width:230px;
}
.member4 input,
.member4 span {
	float:left;
}
.member4 span {
	font-size:15px;
	color:#424242;
	margin-left:4px;
}
.mem5 {
	width:890px;
	height:140px;
	font-size:15px;
	text-indent:10px;
	padding-top:10px;
	padding-left:10px;
	border:4px solid lightgray;
}
.member5 {
	width:900px;
	height:200px;
	margin-left:48px;
	margin-top:50px;
	background-color:#f7f8fa;
	border:1px solid lightgray;
	border-radius:3px;
}
.gray {
	margin-left:5px;
	margin-top:-1px;
	color:#bdbdbd;
	font-weight:bold;
	font-size:18px;
	float:left;
}
.mem6 {
	display:inline-block;
	width:900px;
	margin-top:25px;
	margin-bottom:10px;
}
.mem6 span {
	float:left;
	margin-left:20px;
	font-size:18px;
	font-weight:bold;
	color:#424242;
}
.mem6 img {
	float:left;
	margin-left:5px;
	margin-top:2px;
}
.member6 span {
	float:left;
	margin-left:20px;
	font-size:15px;
	color:#3f474d;
	margin-bottom:6px;
}
.member7 {
	display:inline-block;
	width:900px;
	margin-bottom:40px;
	margin-top:100px;
}
.mem7,
.mem8 {
	float:left;
	margin-right:10px;
	width:150px;
	height:30px;
	font-size:16px;
	font-weight:bold;
	color:white;
	border:1px solid white;
	border-radius:5px;
}
.mem7 {
	background-color:#bdbdbd;
}
.mem8 {
	background-color:#35c5f0;
}
.back {
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
			<a href="mypage_option.do"><li class="nav2-2">회원정보수정</li></a>
			<a href="mypage_password.do"><li class="nav2-2">비밀번호변경</li></a>
			<a href="mypage_memberdelete.do"><li class="nav2-2"  style="color:#35c5f0; border-bottom:5px solid #35c5f0;">회원탈퇴</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="option">
		<form name="memberdelete" action="mypage_member_delete_proc.do" method="post">
			<div class="member"><span>회원탈퇴 신청</span></div>
			<div class="member1"><span>회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해 주세요.</span></div>
			<div class="member2">
				<div class="mem"><span>회원탈퇴 시 처리내용</span></div>
				<div class="mem1">
					<ul>
						<li>오늘의집 포인트·쿠폰은 소멸되며 환불되지 않습니다.</li><br>
						<li>오늘의집 구매 정보가 삭제됩니다.</li>
						<li>소비자보호에 관한 법률 제6조에 의거,계약 또는 청약철회 등에 관한 기록은 5년, 대금결제 및 재화등의 공급에 관한 기록은 5년, 소비자의 불만 또는 분쟁처리</li><br> 
						<li class="none">에 관한 기록은 3년 동안 보관됩니다. 동 개인정보는 법률에 의한 보유 목적 외에 다른 목적으로는 이용되지 않습니다.</li>
					</ul>
				</div>
				<div class="mem"><span>회원탈퇴 시 게시물 관리</span></div>
				<div class="mem2">
					<span>회원탈퇴 후 오늘의집 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로</span>
					<span>게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후,</span>
					<span> 탈퇴를 신청하시기 바랍니다.</span>
				</div>
				<div class="mem"><span>회원탈퇴 후 재가입 규정</span></div>
				<div class="mem3">
					<span>탈퇴 회원이 재가입하더라도 기존의 오늘의집 포인트는 이미 소멸되었기 때문에 양도되지 않습니다.</span>
				</div>
			</div>
			<div class="member3">
				<input type="checkbox" id="gen" name="gender" value="필수" style="width:20px;height:20px;border-radius:100%;"><p>위 내용을 모두 확인하였습니다. <span>필수</span></p>
				<p class="mem4">1670-0876<p class="mem4-1">고객센터</p></p>
			</div>
			<div class="member1"><span>오늘의집 회원에서 탈퇴하려는 이유가 무엇인가요? (복수선택 가능) </span><p class="red">필수</p></div>
			<div class="member4">
				<div><input type="checkbox" name="choice" id="chk" value="필수" style="width:20px;height:20px;border:1px;"><span>이용빈도 낮음</span></div>
				<div><input type="checkbox" name="choice" value="필수" style="width:20px;height:20px;border:1px;"><span>재가입</span></div>
				<div><input type="checkbox" name="choice" value="필수" style="width:20px;height:20px;border:1px;"><span>콘텐츠/제품정보/상품 부족</span></div><br>
				<div><input type="checkbox" name="choice" value="필수" style="width:20px;height:20px;border:1px;"><span>개인정보보호</span></div>
				<div><input type="checkbox" name="choice" value="필수" style="width:20px;height:20px;border:1px;"><span>회원특혜/쇼핑혜택 부족</span></div>
				<div><input type="checkbox" name="choice" value="필수" style="width:20px;height:20px;border:1px;"><span>기타</span></div>
			</div>
			<div class="member1"><span>오늘의집 서비스 이용 중 어떤 부분이 불편하셨나요?</span><p class="gray">선택</p></div>
			<div class="member1-1"><span>오늘의집에 떠나는 이유를 자세히 알려주시겠어요? 여러분의 소중한 의견을 반영해 더 좋은 서비스로 꼭 찾아뵙겠습니다.</span></div>
			<textarea placeholder="  탈퇴 사유 작성 전 아래 내용을 참고해주세요.
  -오늘의집 이용 빈도가 낮아졌다면 어떤 이유로 자주 사용하지 않게 되었는지 구체적인 사유를 남겨주세요
  -인테리어 콘텐츠/제품정보/상품 등 찾으려고 했던 정보가 부족하거나 없었다면 어떤 정보가 필요하신지 자세하게 남겨주세요
  -기타 사유를 포함하여 오늘의집 이용중 불편하셨던 점이나 앱 기능 등 전반적으로 개선되었으면 하는 부분을 자세하게 남겨주세요
  -다시 돌아오셨을 때 지금보다 더 발전된 오늘의집이 되어있을 수 있도록 다양하고 충분한 의견 부탁드립니다 ^^*" class="mem5"></textarea>
  			<div class="member5">
  				<div class="mem6"><span>개인정보보호에 대한 안내</span><img src="http://localhost:9000/myhouse/images/mypage/update.png"></div>
  				<div class="member6">
  					<span>고객님께 개인정보보호에 대한 안내드립니다.</span><br>
					<span>오늘의집에서는 고객 여러분의 개인 정보를 개인정보보호 방침에 따라 안전하게 관리하고 있습니다.</span><br>
					<span>또한 최근 언론을 통해 보도된 개인정보유출 사고는 오늘의집과 관련이 없음을 안내해 드리며, 고객님께서</span> 
					<span>안전하게 이용하실 수 있도록 보안에 더욱 힘쓰겠습니다. 감사합니다.</span>
  				</div>
  			</div>
			<div class="member7">
				<button type="submit" class="mem7" id="memdel">탈퇴신청</button>
				<a href="mypage_profile1.do"><button type="button" class="mem8">취소하기</button></a>
			</div>
			</form>
		</div>
	</div>
</div>
</div>
	<div class="back"></div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>