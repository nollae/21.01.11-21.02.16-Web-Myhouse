<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import=" java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	String bpart = request.getParameter("bpart");
	String rpage = request.getParameter("rpage");

	BoardDAO dao = new BoardDAO();
 	//1. 선택한 페이지값
	
 	SessionVO svo = (SessionVO)session.getAttribute("svo");
	//2-1. 페이지값에 따라서 start, end count 구하기
	//1페이지(1~10), 2페이지(11~20) ...
	int start =0;
	int end = 0;
	int pageSize = 7; // 한페이지당 출력되는 row
	int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
	int dbCount = dao.getListCount(bpart); //DB연동 후 전체로우수 출력    
	int reqPage = 1; //요청페이지
	
	//2-2. 전체페이지 수 구하기 - 화면출력
	if(dbCount % pageSize == 0) {
		pageCount = dbCount/pageSize;
	}else {
		pageCount = dbCount/pageSize +1;
	}
	
	//2-3. start, end 값 구하기
	if(rpage != null) {
		reqPage = Integer.parseInt(rpage);
		start = (reqPage -1) * pageSize +1;
		end = reqPage*pageSize;
	} else { 
		start = reqPage;
		end = pageSize;
	} 
	ArrayList<BoardVO> list = dao.getList(start, end, bpart); 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스위트홈 :: 공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script>
<style>
	
	
	*{
		box-sizing: border-box;
	}
	div, main, section {
		display: block;
	}
	#newsroom-main {
		display:inline-block;
		margin:0 atuo;
		overflow:hidden;
		heigth:auto;
		width:853px;
		padding: 10px 18px 80px 17px;
		border:1px #e3e3e3 solid;
		margin-bottom:40px;
	}
	div {
		border: 0;
	    margin: 0;
	    padding: 0;
	    font-size: 11px;
	}
	#newsroom-main .main-logo{
		display:inline-block;
		margin:20px 0 30px 100px;
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
	    padding-left: 24px;
	    margin-left: 0;
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
	    width: 770px;
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
	    border-bottom: none;
	    z-index: 10;
	}
	/* #newsroom-main .main-section1 .section1-category li.first {
	    margin-left: 0 !important;
	} */
	#newsroom-main .main-section1 .section1-category li a {
	       position: absolute;
	    display: block;
	    width: 766px;
	    height: 30px;
	    padding-top: 12px;
	    letter-spacing: -1px;
	    font-weight: bold;
	    text-align: center;
	    font-size: 15px;
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
	    color: black;
	    font-size: 12px;
	    font-weight:500;
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
		width: 60px;
	}
	.main-section2 .section2-cont {
		display: inline-block;
	    float: left;
	    padding: 10px 35px 10px 0;
	    background-position: 0 bottom;
	    background-image: url(http://localhost:9000/myhouse/images/newsroom201301_dot.gif);
    	background-repeat: repeat-x;
	}
	/* .main-section2 .section2-cont:hover {
		background-color: #e9e9e9;  
	} */
	.cont-8:hover{
		background-color:white;
	}
	.main-section2 .section2-cont li {
		float: left;
	    /* text-align: center; */
	    color: #999;
	    font-size: 11px;
	    margin-lefit:50px;
	}
	.main-section2 .section2-cont li.cont-0 {
		width: 39px;
		padding-left:20px;
	}
	.main-section2 .section2-cont li.cont-1 {
		width: 72px;
		text-align:center;
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
	.main-section2 .section2-cont li.cont-3 .normal {
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
		text-align:center;
    	padding-top: 2px;
	}
	.main-section2 .section2-cont li.cont-6 {
		width: 99px;
		text-align:center;
    	padding-top: 2px;
	}
	.main-section2 .section2-cont li.cont-7 {
		width: 48px;
		text-align:center;
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
	    overflow-y: auto !important;
	    margin-left:20px;
	    margin: 20px;
	    padding:20px;
	    line-height: 21px;
	    border: 1px solid #999;
	}
	.udp_text{
	  overflow-y: hidden; overflow-x: hidden;
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
	    height:30px;
	    margin-left:-17px;
	}
	.main-section3 .section-paging {
	    width: 853px;
	    height: 70px;
	    margin-top: 30px;
	}
	.section-paging #ampaginationsm {
		width:60%; 
		height:60px; 
		text-align:center; 
		margin-left:190px; 
		margin-top:10px;
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
	    height: 40px;
	    text-align: center;
	    z-index: 2;
	    margin-left:210px;
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
		width: 1100px;
	    margin: 0 auto;
	    padding: 50px 0 110px 20px;
	    
	}
	.admin_main {
		float:left;
		margin: 0 auto;
		width:220px; 
		/*height:970px;*/
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
	/* 버튼 */
	.main-section3 .admin_btn {
		float:right;
		margin-right:20px;
	}
	.main-section3 .admin_btn:hover {
		float:right;
		margin-right:20px;
	}
	.main-section3 .admin_btn .btn_style {
		margin-right:6px;
		padding:4px 10px;
		border-radius:5px;
		font-weight:bold;
		font-size:14px;
		border:none;
	}
	 .blind {
		position: absolute !important;
	    clip: rect(0,0,0,0);
	    clip-path: polygon(0 0,0 0,0 0);
	    width: 1px;
	    height: 1px;
	    margin: -1px;
	    overflow: hidden;
	    white-space: nowrap;
	} 
	.inp_chkbox {
		float:left;
		line-height:20px;
	}
	label {
		cursor:pointer;
	}
	.main-section3 .admin_btn .btn_style:hover {
		background-color:#333;
		color:white;
	}
	.inp_label:checked + label::before {
    	background-image: url(http://localhost:9000/myhouse/images/mb_check_on.png);
    	background-size: 13px;
	}
	.inp_chkbox::before {
	    content: '';
	    display: inline-block;
	    width: 18px;
	    height: 18px;
	    margin-right: 9px;
	    vertical-align: middle;
	    background-image:url(http://localhost:9000/myhouse/images/mb_check_off.png);
	    background-repeat: no-repeat;
	    background-size: 13px;
	}
	.am-pagination-default > .active > a {
	 	background-color:#35c5f0;
	 	border-color: #35c5f0;
	}
	.am-pagination-default > .active > a:hover {
	 	background-color:#ff0045;
	 	border-color: #ff0045;
	}
	.am-pagination-default > li > a {
		color:#666;
	}
	.am-pagination-default > .disabled > a {
		color:#ccc;
	}
	</style>
<script>
	$(document).ready(function(){
		// 공지사항/이벤트 페이지 변경
		$("#first").click(function(){
			$("#first").addClass('selected');
			$("#second").removeClass('selected');
		});
		$("#second").click(function(){
			$("#second").addClass('selected');
			$("#first").removeClass('selected');
		});
		//open/close 변경
			$(".open").click(function(){
				var bid = $(this).attr("id");
				//alert(bid);
				var status = $(this).attr("src");
				if(status == "http://localhost:9000/myhouse/images/notice_open.png") {
					$("li#"+bid).css("display","block");
					$(this).attr("src","http://localhost:9000/myhouse/images/notice_close.png");
					//$("#cont8-wrap").css("display","block");
					$(".cont-8#"+bid).load("http://localhost:9000/myhouse/admin_notice_detail.do?nno="+bid+" .udp_text"); 
					
				} else {
					$("li#"+bid).css("display","none");
					$(this).attr("src","http://localhost:9000/myhouse/images/notice_open.png");
					//$("#cont8-wrap").css("display","none");
				}
		});
			
			
			//페이지 번호 및  링크
		      var pager = jQuery("#ampaginationsm").pagination({
		         maxSize : 9,
		         totals:${dbCount},
		         page :${reqPage},
		         pageSize :${pageSize},
		         
		         lastText : '&raquo;&raquo;',
		         firstText : '&laquo;&laquo;',
		         preTest : '&laquo;',
		         nextTest : '&raquo;',
		         
		         btnSize : 'sm'
		      });
		      
		      jQuery("#ampaginationsm").on('am.pagination.change',function(e){
		    	  //클릭 시 페이지이동
		    	  $(location).attr('href','http://localhost:9000/myhouse/notice_list_admin.do?rpage='+e.page);
		      });
			
			
			
			
			//체크박스        
			function allCheckFunc(obj) {
				$("[name=checkTerms]").prop("checked", $(obj).prop("checked"));
				//alert($("[name=checkAll]:checked").val());
				
			}
			/* 체크박스 체크시 전체선택 체크 여부 */
			function oneCheckFunc(obj) {
				var allObj = $("[name=checkAll]");
				var objName = $(obj).attr("name");

				if($(obj).prop("checked")){
					checkBoxLength = $("[name="+ objName +"]").length;
					checkedLength = $("[name="+ objName +"]:checked").length;                

					if(checkBoxLength == checkedLength){
						allObj.prop("checked", true);    
					}else{
						allObj.prop("checked", false);
					}
				}else{
					allObj.prop("checked", false); 
				}
			}

			$(function(){
				$("[name=checkAll]").click(function(){
					allCheckFunc(this);
						});
				});
				$("[name=checkTerms]").each(function(){
					$(this).click(function(){
						oneCheckFunc($(this));
					});                
				});
				
				  $("#btnDelete").click(function(){
		                var del_list = "";
		                var count = 0;
		                
		                $("input[name=checkTerms]:checked").each(function(i){
		                    count++;
		                    //del_list += "bid=" $(this).attr("id")+"&";
		                    del_list += "nno="+$(this).attr("id")+"&";
		                     /* var tr=$(".cont-0#"+bid);
		                     tr.remove(); */
		                 });
		                if(count == 0){
		                     alert("한 개 이상 선택하셔야 삭제가 가능합니다.")
		                     return false;
		                  }else{
		                     //서버전송                         
		                     //alert(del_list);
		                     
		                     
		                     $.ajax({
		                         url:"noticeDeleteProc.do?"+del_list,
		                         success:function(result) {
		                          if(result != 0) {
		                        	  location.reload();
		                          } else {
		                        	  return false;
		                          }
		                            
		                         }
		                      });
		                     
		                     
		                  }
		                   
		         });  //btnDelete
		});  
		
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"></jsp:include>

<!-- content -->
<div class="content">
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
			</nav>
		</aside>
	<div class="board_wrap" id="newsroom-main">
		<span class="main-logo">SweetHome <span>'NEWS'</span> ROOM</span>
				<div class="main-section1">
			<ul class="section1-category">
				<li id="first" class="first selected"><a href="#">공지사항</a></li>
			</ul>
		</div>
		<div class="main-section2">
			<ul class="section2-title">
				<li class="title-0">
					<input class="blind inp_label" type="checkbox" name="checkAll" id="checkAll">
					<label for="checkAll" class="inp_chkbox"></label>
				</li>
				<li class="title-1">번호</li>
				<li class="title-2">제목</li>
				<li class="title-3">담당</li>
				<li class="title-4">작성일</li>
				<li class="title-5">조회수</li>
			</ul>
			<div id="nesListNew">
			
			<c:forEach var="vo" items="${noticeList}"  varStatus="index">
				<ul class="section2-cont">
					<li class="cont-0">
						<input class="blind inp_label" type="checkbox" name="checkTerms" id="${vo.nno}">
						<label for="${vo.nno}" class="inp_chkbox"></label>
					</li>
						<li class="cont-1">${vo.rno}</li>
						<li class="cont-2">
							<a id="test1" class="cont2-btn">
								<img src="http://localhost:9000/myhouse/images/notice_open.png" class="open" id="${vo.nno}">
								<label></label>
							</a>
						</li>
						<li class="cont-3">
								<label class="normal"></label>
						<%-- 
						<% if(vo.getBpart() != null) { %>
							<% if(vo.getBpart().equals("공지사항/약관")) { %>
								<label class="cont3-label"></label>
							<% } else {%> 
							<% } %>
						<% } else { %>
								<label class="cont3-label"></label>
						<% } %>
						 --%>
						</li>
						<li class="cont-4">
							<a href="admin_notice_detail.do?nno=${vo.nno}">${vo.ntitle}</a>
						</li>
						<li class="cont-5">관리자</li>
						<li class="cont-6">${vo.ndate}</li>
						<li class="cont-7">-</li>
						<li class="cont-8" id="${vo.nno}" >
							<div class="cont8-wrap" id="${vo.nno}">
							<a href="admin_notice_detail.do?nno=${vo.nno}"></a>
							</div>
						</li>
				</ul>
				</c:forEach>
				
				
			</div>
		</div>
		<div class="main-section3">
			<div class="section-paging">
				<div class="admin_btn">
					<a href="admin_notice_write.do"><button type="button" class="btn_style">글쓰기</button></a>
					<button type="button" class="btn_style" id="btnDelete">삭제</button>
				</div>
				<div id="ampaginationsm"></div>
			</div>
		</div>
	</div>
</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>