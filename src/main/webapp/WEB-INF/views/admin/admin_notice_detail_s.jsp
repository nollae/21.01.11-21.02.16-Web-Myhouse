<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈멍 :: 공지사항/이벤트 - 수정</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#btnNoticeUpdate").click(function(){
		if($(".notice_select").val() == "선 택") {
			alert("구분을 선택해주세요");
			$(".notice_select").focus();
			return false;
		} else if($("#btitle").val() == ""){
			alert("제목을 입력해주세요.");
			$("#btitle").focus();
			return false;
		} else {
			//서버로전송
			noticeUpdateForm.submit(); 
			
		}
		
	}); 
	
	
});
		
</script>
<style>
   * {
     font-family: 'Noto Sans KR';
   }
   #newsroom-main {
      display:inline-block;
      margin:0 atuo;
      overflow:hidden;
      width:853px; height:970px;
      padding: 10px 18px 80px 17px;
      border:1px #e3e3e3 solid;
      margin-bottom:40px;
      position:absolute;
      
   }
   div {
      border: 0;
       margin: 0;
       padding: 0;
       font-size: 11px;
   }
   #newsroom-main .main-logo{
      display:inline-block;
      margin:20px 0 30px 117px;
       font-size:50px;
   }
   #newsroom-main .main-logo span {
      font-weight:bold;
   }
   #newsroom-main .main-section1 {
       margin: 0 auto;
       width: 820px;
       height: 50px;
   }
   #newsroom-main .main-section1 .section1-category {
       height: 41px;
       border-bottom: 1px #ff0045 solid;
       padding-left:24px;
       margin-left:0;
   }
   ul, li {
       list-style: none;
       border: 0;
       margin: 0;
       padding: 0;
       font-size: 12px;
   }
   
   #newsroom-main .main-section1 .section1-category li {
       position: relative;
       float: left;
       width: 385px;
       height: 40px;
       border-top: 1px #dadada solid;
       border-left: 1px #dadada solid;
       border-right: 1px #dadada solid;
       text-align: left;
       z-index: 5;
   }
   #newsroom-main .main-section1 .section1-category .selected {
       margin-left: -1px;
       border-left: 1px #ff0045 solid;
       border-top: 1px #ff0045 solid;
       border-right: 1px #ff0045 solid;
       border-bottom:none;
       z-index: 10;
   }
   /* #newsroom-main .main-section1 .section1-category li.first {
       margin-left: 0 !important;
   } */
   #newsroom-main .main-section1 .section1-category li a {
       position: absolute;
       display: block;
       width: 383px;
       height: 30px;
       padding-top:12px;
       letter-spacing: -1px;
       font-weight: bold;
       text-align: center;
       font-size:15px;
       
   }
   #newsroom-main .main-section1 .section1-category .selected a {
       height: 40px;
       color: #333;
       background-color: #fff;
   }
   a, a:visited {
       border: 0;
       margin: 0;
       padding: 0;
       color: #666;
       text-decoration: none;
       cursor: pointer;
   }
   #newsroom-main .main-section2 {
       position: relative;
       display: inline-block;
       float: left;
       width: 853px;
       margin-top: 15px;
   }
   .main-section2 .section2-title {
       display: inline-block;
       float: left;
       width: 815px;
       height: 35px;
       border-top: 1px #cbcbcb solid;
       border-bottom: 1px #ebebeb solid;
   }
   .main-section2 .section2-title li {
       float: left;
       height: 19px;
       padding: 10px 3px 5px 5px;
       text-align: center;
       color: #999;
       font-size: 11px;
   }
   .main-section2 .section2-title .title-0 {
      width:40px;
      padding-left:20px;
   }
   .main-section2 .section2-title .title-1 {
      width: 80px;
      padding-left:0;
   }
   .main-section2 .section2-title .title-2 {
      width: 440px;
   }
   .main-section2 .section2-title .title-3 {
      width: 85px;
   }
   .main-section2 .section2-title .title-4 {
      width: 90px;
   }
   .main-section2 .section2-title .title-5 {
      width: 50px;
   }
   .main-section2 .section2-cont {
      display: inline-block;
       float: left;
       padding: 10px 35px 10px 0;
       background-position: 0 bottom;
       background-image: url(http://localhost:9000/myhouse/images/newsroom201301_dot.gif);
       background-repeat: repeat-x;
   }
   .main-section2 .section2-cont li {
      float: left;
       text-align: center;
       color: #999;
       font-size: 11px;
   }
   .main-section2 .section2-cont li.cont-0 {
      width: 39px;
      padding-left:20px;
   }
   .main-section2 .section2-cont li.cont-1 {
      width: 72px;
      padding-left:5px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-2 {
       padding-top: 3px;
      width: 46px;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn  {
       width: 37px;
       height: 15px; 
       display: block;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn img {
      width: 37px;
       height: 17px;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn label {
      display: none; 
       position: absolute;
       width: 70px;
       height: 20px;
       margin: -18px 0 0 -12px;
       background-image:url(http://localhost:9000/myhouse/images/notice_label.png);
       background-repeat:no-repeat;
       background-size: 70px 20px;
   }
   
   .main-section2 .section2-cont li.cont-3 {
      padding-top: 2px;
      width: 44px;
      padding-left:15px;
   }
   .main-section2 .section2-cont li.cont-3 .cont3-label {
      width: 31px;
       height: 15px;
       display: block;
       background-image:url(http://localhost:9000/myhouse/images/notice_con1.png);
       background-repeat:no-repeat;
       background-size: 28px 18px;
   }
   .main-section2 .section2-cont li.cont-3 .cont3-label.normal {
      width: 31px;
       height: 15px;
       display: block;
       background-image:url(http://localhost:9000/myhouse/images/notice_con3.png);
       background-repeat:no-repeat;
       background-size: 28px 18px;
   }
   .main-section2 .section2-cont li.cont-4 {
      width: 365px;
       padding: 2px 50px 0 30px;
       text-align: left;
   }
   .main-section2 .section2-cont li.cont-5 {
      width: 75px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-6 {
      width: 99px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-7 {
      width: 48px;
       padding-top: 2px;
   }
   
   a {
       border: 0;
       margin: 0;
       padding: 0;
       color: #636363;
       text-decoration: none;
       cursor: pointer;
   }
   label {
      cursor:default;
   }
   .main-section2 .section2-cont li.cont-8 {
      display:none;
       width: 831px;
       height: 430px;
       overflow-y: auto !important;
   }
   .main-section2 .section2-cont li.cont-8 .cont8-wrap {
       margin: 20px 0;
       font-size: 12px;
       color: #777;
       text-align: left;
   }
   #newsroom-main .main-section3 {
       position: relative;
       display: inline-block;
       float: left;
       width: 853px;
       height:10px;
       margin-left:-17px;
   }
   .main-section3 .section-paging {
       width: 853px;
       height: 39px;
       margin-top: 30px;
   }
   .section-paging {
       position: relative;
       display: inline-block;
       float: left;
       text-align: left;
       padding-top: 0;
   }
   .paging-page {
       position: relative;
       width: 50%;
       height: 22px;
       text-align: center;
       z-index: 2;
       margin-left:210px;
   }
   .main-section3 .paging-page .prev-off {
       width: 20px;
       height: 20px !important;
       margin-top: 4px;
       padding: 0 !important;
       vertical-align: top;
       background-image: url(http://localhost:9000/myhouse/images/arrow_left.png);
       background-repeat:no-repeat;
       background-size: 15px 15px;
   }
   .main-section3 .paging-page .next {
       background-image: url(http://localhost:9000/myhouse/images/arrow_right.png);
       width: 20px;
       height: 20px !important;
       margin-top: 4px;
       margin-left:4px;
       padding: 0 !important;
       vertical-align: top;
       background-repeat: no-repeat;
       background-size: 15px 15px;
   }
   .main-section3 .paging-page a {
       height: 16px;
       padding-top: 3px;
       color: #ababab;
       font-size: 11px;
   }
   .main-section3 .paging-page a.selected, .main-section3 .paging-page a:hover {
      color: #333;
       padding-top: 3px;
       border: 0;
       background-color: #fff;
   }
   .paging-page a {
       display: inline-block;
       height: 17px;
       color: #666;
       padding: 5px 7px 0 7px;
       margin-left: 1px;
       font-size: 12px;
       font-weight: bold;
       text-align: center;
       overflow: hidden;
   }
   .paging-page a.selected {
       height: 16px;
       padding: 4px 7px 0 7px;
       margin-left: 1px;
       color: #fff;
       background-color: #767676;
   }
   a {
       border: 0;
       margin: 0;
       padding: 0;
       color: #636363;
       text-decoration: none;
       cursor: pointer;
   }
   a, a:visited {
       border: 0;
       margin: 0;
       padding: 0;
       color: #666;
       text-decoration: none;
       cursor: pointer;
   }
   
   
   /* aside */
   .content {
      width:1040px;
      margin: 0 auto;
   }
   .content .admin_main {
      float:left;
      width:220px; height:970px;
      background-color:#eee;
      padding:20px 0 0 15px;
   }
   
   .content .admin_main ul {
      width:195px;
      height:200px;
      margin-top:20px;
   }
   .content .admin_main ul li {
      list-style-type:none;
      padding: 4px 0;
      margin:25px 0 5px 15px;
   }   
   .content .admin_main ul li img {
      width:15px;
      height:15px;
   }
   .content .admin_main ul li a {
      color:black;
      font-size:17px;
      font-weight:bold;
      text-align:center;
      text-decoration:none;
      margin-left:10px;
   }   
   
   .content .admin_main ul li a:hover {
      text-decoration:underline;
   }
   .content .admin_main div {
      background-color: #fff;
      padding-top:7px;
      width:195px;
      height:145px;
   }
   .content .admin_main div img{
      margin:10px 0 0 62px;
      width:80px; 
      height:80px;
   }
   .content .admin_main .admin_icon2 {
      display:inline-block;
      font-size:20px;
      margin:7px 0 0 27px;
      color: #333;
      text-align:center;
      font-weight:bold;
   }
  
   /** 수정본 **/
   
   .udp_title>ul>li {
		display:inline-block;
		font-size:26px;
		border:1px solid gray;
		width:500px;
		margin-top:30px;
		margin-bottom:50px;
	}
	.udp_title .udp_t1 {
		clear:left;
		border-left:2px solid black;
		border-top:2px solid black;
		border-right:2px solid black;
		border-bottom:none;
	}
	.udp_title .udp_t2 {
		clear:left;
		margin-left:-4px;
		border-left:none;
		border-bottom:2px solid black;
		border-top:2px solid lightgray;
		border-right:2px solid lightgray;
	}
	.udp_title ul{
		text-align:center;
	}
	.udp_title1{
		display:inline-block;
		width:770px;
		margin-left:15px;
		border-bottom:1px solid lightgray;
		padding:11px 0;
	}
	.udp_title1 label,
	.file_chum label {
		border:1px solid lightgray;
		background-color: lightgray;
		border-radius:5px;
		display:inline-block;
		float:left;
		width:80px; height:30px;
		text-align:center;
		padding-top:3px;
	}
	.file_chum label {
		margin-left:15px;
		margin-top:10px;
	}
	.file_chum input {
		margin-top:15px;
		margin-left:20px;
	}
	.udp_title1>ul>li {
		display:inline-block;
	}
	.udp_title1 input {
		width:655px; height:35px;
		margin-left:20px;
	}
	.udp_text {
		margin-top:15px;
	}
	.udp_text label {
		border:1px solid lightgray;
		background-color: lightgray;
		border-radius:5px;
		display:inline-block;
		float:left;
		width:80px; height:500px;
		padding-top:230px;
		margin-left:15px;
		text-align:center;
	}
	.udp_text textarea {
		width:655px; height:500px;
		margin-left:20px;
		display:inline-block;
		clear:left;
	}
	/** 버튼 **/
	.udp_btnbox {
		display:inline-block;
		float:right;
	}
	.udp_btnbox button {
		display:inline-block;
		width:80px;
		height:30px;
		margin-right:10px;
		margin-top:20px;
		padding:4px 10px;
     	border-radius:5px;
      	border:none;
	}
	.udp_btnbox button:hover {
		color:white;
	}
	.udp_btnbox button:hover {
		background-color:#333;
      	color:white;
	}
	.udp_btnbox button {
		text-decoration:none;
	}
	.udp_btnbox button {
		color:black;
		font-weight:bold;
     	font-size:14px;
	}
	
	.udp_title1 select {
		margin-left:20px;
		width:110px;
		height:28px;
	}
   .udp_title1 select option {
   		text-align:center;
   }
   /** file-input **/
	span#fname {
		display:inline-block;
		width:190px;
		margin-left:-176px;
		background-color:white;
		font-size:12px
	}
	.footer{
	display:inline-block;
	}
	.noticewriteinput{
	padding-left:10px;
	}
	.noticewriteinput1{
	padding:10px;
	}
   </style>

</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"></jsp:include>

   <!-- content -->
   <div style="margin:0 auto;"></div>
   <div style="width:100%; height:50px;"></div>
   <div class="content">
      <aside class="admin_main">
         <nav>
            <div>
               <img src="http://localhost:9000/myhouse/images/admin.png"><br>
               <span class="admin_icon2">[ 관리자 시스템 ]</span>
            </div>
            <ul>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="notice_list_admin.do?rpage=1">공지사항</a></li>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="store_list.do?rpage=1">스토어관리</a></li>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="member_list.do?rpage=1">회원관리</a></li>
          	</ul>
         </nav>
      </aside>

   
   <div class="board_wrap" id="newsroom-main">
      <span class="main-logo">SweetHome <span>'NEWS'</span> ROOM</span>
      <div class="main-section2">
            <div class="udp_title1">
            	<form name="noticeUpdateForm" action="admin_notice_detail_sProc.do" method="post" class="admin_notice_Update" enctype="multipart/form-data">
            	<input type="hidden" name="nno" value="${noticeVO.nno}">
					<ul>
						<li class="udp_title1">
							<label>구분</label>
							<select class="noticewriteinput">
								<option value="일반">일반</option>
								<option value="약관">약관</option>
								<option value="이벤트">이벤트</option>
							</select>
						</li>
						<li class="udp_title1">
							<label >제목</label>
							<input class="noticewriteinput" type="text" name="ntitle" id="btitle" class="udp_t3" value="${noticeVO.ntitle}">
						</li>
						<li class="udp_text">
							<label>내용</label>
							<textarea class="noticewriteinput1" rows="10" cols="50" name="ncontent" id="bcontent">${noticeVO.ncontent}</textarea>
						</li>
						<li class="udp_btnbox">
							<button type="button" class="btn_style" id="btnNoticeUpdate">수정</button>
							<a href="http://localhost:9000/myhouse/admin_notice_detail.do?nno=${noticeVO.nno}"><button type="button" class="btn_style">뒤로</button></a>
							<a href="notice_list_admin.do?rpage=1"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
     	 </div>
     </div>
      <div class="main-section3">
         <div class="section-paging">
            <div class="paging-page">
         </div>
      </div>
   	</div>
</div>
   </div>
	<div class="footer">
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>