<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	String email = request.getParameter("email");

	sh_TutorDAO dao_tutor = new sh_TutorDAO();
	sh_TutorVO vo_tutor = dao_tutor.getTutorContent(email);

	sh_ClassDAO dao_class = new sh_ClassDAO();
	ArrayList<sh_ClassVO> list_class = dao_class.getMakeClass(email);
	ArrayList<sh_ClassVO> list_class_open = dao_class.getMakeClassOpen(email);
	ArrayList<sh_ClassVO> list_class_wait = dao_class.getMakeClassWait(email);
	
--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스윗트홈 :: 회원관리</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<style>
	*{
		box-sizing: border-box;
	}
	div, main, section {
		display: block;
	}
	body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button, pre {
	    margin: 0;
	    padding: 0;
	    font-size: 14px;
	    color: #111;
	    font-family: 'Noto Sans KR';
	    font-weight: 400;
	}
	.admin_content{
		width: 1040px;
    	margin: 0 auto;
    	padding: 50px 0 120px 0;
	}
	/* aside */
   .admin_main {
      float:left;
      width:220px; 
      height:762px;
      background-color:#eee;
      padding:20px 0 0 15px;
   }
   
   .admin_main ul {
      width:195px;
      height:200px;
      margin-top:20px;
   }
   .admin_main ul li {
      list-style-type:none;
      padding: 4px 0;
      margin:25px 0 5px 15px;
   }   
   .admin_main ul li img {
      width:15px;
      height:15px;
   }
   .admin_main ul li a {
      color:black;
      font-size:17px;
      font-weight:bold;
      text-align:center;
      text-decoration:none;
      margin-left:10px;
   }   
   
   .admin_main ul li a:hover {
      text-decoration:underline;
   }
   .admin_main div {
      background-color: #fff;
      padding-top:7px;
      width:195px;
      height:145px;
   }
   .admin_main div img{
      margin:10px 0 0 62px;
      width:80px; 
      height:80px;
   }
   .admin_main .admin_icon2 {
      display:inline-block;
      font-size:20px;
      margin:7px 0 0 27px;
      color: #333;
      text-align:center;
      font-weight:bold;
   }
	.ad_title{
		width: 1040px;
		height: 35px;
		font-weight: bold; 
		text-align: center;
		color: #333;
		border: 1px solid lightgray;
		font-size: 25px;
		margin:10px 0; 
		padding-top:3px;
	}
	.admin_member_content { 
		width: 820px;
		height: 473px;
	}
	.admin_member_content, .admin_member_content th, .admin_member_content td { 
		border: 1px solid #333;	
		border-collapse: collapse;
	}
	table.admin_member_content th, table.admin_member_content td{
		color: #333;
	}
	table.admin_member_content th {
		font-weight:bold;
		text-align:center;
		font-family: 'Noto Sans KR';
		background-color: #c2c2c2;
		font-size: 16px;
		width: 100px;
		height: 115px;
	}
	table.admin_member_content tr:nth-child(1) th,
	table.admin_member_content tr:nth-child(2) th,
	table.admin_member_content tr:nth-child(4) th  {
		height: 40px;
	}
	table.admin_member_content tr:nth-child(1) td{
		padding-left:20px;
		width:150px;
		height:40px;
	}
	table.admin_member_content tr:nth-child(3) td,table.admin_member_content tr:nth-child(3) td img {
		text-align:center;
	}
	table.admin_member_content tr:last-child td{
		padding: 0;
	}
	table.admin_member_content tr:last-child td a > button{
		font-size: 14px;
		width: 80px;
		padding:4px 10px;
		border-radius: 5px;
		margin: 20px 20px 0 0;
		cursor: pointer;
		font-weight:bold;
		border:none;
	}
	table.admin_member_content tr:last-child td a > button:hover {
		background-color:#333;
		color:white;
	}
	table.admin_member_content tr:last-child td a > button:focus {
		outline:none;
	}
	
	table.admin_member_content tr:last-child td {
		text-align: right;
	}
	   	.footer{
	display:inline-block;
	}
	
	.photobox{
		text-align:center;
		background-color: #eee;
		width:500px;
		border : 1px solid #999;
		padding : 5px;
		margin: 20px 155px;
		border-radius:10px;
	}
	.phototable td{
		border:none;
	}
	table.admin_member_content tr:last-child td:nth-child(2){
		text-align:left;
		width:300px;
		padding:0 10px;
		overflow:hidden;
	}
	table.admin_member_content tr:last-child td.whiteborder{
	 border-left:1px solid white;
	 border-right:1px solid white;
	 border-bottom:1px solid white;
	}
	
</style>

</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"></jsp:include>

	<!-- content -->
	<div class="admin_content">
		<aside class="admin_main">
		   <nav>
		      <div>
		         <img src="http://localhost:9000/myhouse/images/admin_profile.png"><br>
		         <span class="admin_icon2">[ 관리자 시스템 ]</span>
		      </div>
		      <ul>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="notice_list_admin.do?rpage=1">공지사항</a></li>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="store_list.do?rpage=1">스토어관리</a></li>
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="member_list.do?rpage=1">회원관리</a></li>				</ul>
		      </ul>
		   </nav>
		</aside>
		<section class="admin_section1">
			<div class="ad_title">회원상세정보</div>
			 <table class="admin_member_content">
				<tr>
					<th>이메일</th>
					<td>${membervo.email}</td>
					<th>닉네임</th>
					<td>${membervo.nickname}</td>
					<th>가입일</th>
					<td>${membervo.mdate}</td>
				</tr>
				<tr>
					<th colspan="6">사진 게시물</th>
				</tr>
				<tr>
					<c:choose>
						<c:when test="${photolist ne null}">
							<td colspan="6">
								<c:forEach var="vo" items="${photolist}" varStatus="status">
									<div class="photobox">
											<span style="color:red; font-weight:bold; ">고유 번호 : ${vo.pno}</span> 
										<br>
											<table class="phototable">
											<tr>
												<td>
													<img  src="http://localhost:9000/myhouse/resources/upload/${vo.photo_simage}" style="border-radius: 7px;display:inline-block;width:100px; height:100px; margin:20px 5px 10px 0;">
												</td>
												<td>
													게시일 :<span style="margin:0 10px;">${vo.pdate}</span> <br>
													내용 :<span style="margin:0 10px;">${vo.pcontent}</span> <br>
												</td>
												</tr>
											</table>
									</div>
								</c:forEach>
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp; 사진 게시물이 없습니다.</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<th colspan="6">인테리어 게시물</th>
				</tr>
				<tr>
					<c:choose>
						<c:when test="${interiorlist ne null}">
							<td colspan="6">
								<c:forEach var="vo" items="${interiorlist}" varStatus="status">
									<div class="photobox">
											<span style="color:red; font-weight:bold; ">고유 번호 : ${vo.ino}</span> 
										<br>
											<table class="phototable">
											<tr>
												<td>
													<img  src="http://localhost:9000/myhouse/resources/upload/${vo.interior_simage}" style="border-radius: 7px;display:inline-block;width:100px; height:100px; margin:20px 5px 10px 0;">
												</td>
												<td>
													<span style="margin:0 10px;">제목 :</span> ${vo.ititle}<br>
													<span style="margin:0 10px;">게시일 :</span> ${vo.idate}<br>
													<span style="margin:0 10px;">회사 :</span> ${vo.company}<br>
												</td>
												</tr>
											</table>
									</div>
								</c:forEach>
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp; 사진 게시물이 없습니다.</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr class="whiteborder">
					<td colspan="6" class="whiteborder">
						<a href="#"><button type="button" class="btn_style" onClick="history.go(-1)">목록으로</button></a>
					</td> 
				</tr> 
			</table>
		</section>
	</div>
	<div class="footer">
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>