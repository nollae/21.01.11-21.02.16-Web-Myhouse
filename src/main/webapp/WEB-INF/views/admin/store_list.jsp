<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 	 ClassDAO dao = new ClassDAO();
	TutorDAO dao_tutor = new TutorDAO();	
	
	//1. 선택한 페이지값
	String rpage= request.getParameter("rpage");
	
	//2-1. 페이지 값에 따라서 start, end count 구하기
	//1페이지(1~10) , 2페이지(11~20)...
	int start =0;
	int end=0;
	int pageSize=10; //한 페이지당 출력되는 row
	int pageCount = 1;//전체 페이지수 : 전체 리스트 row / 한 페이지당 출력되는 row
	int dbCount = dao.getListCount();// DB연동 후 전체로우수 출력
	int reqPage = 1;//요청페이지
	
	//2-2. 전체페이지 수 구하기
	if(dbCount%pageSize==0){
		pageCount= dbCount/pageSize;
	}else{
		pageCount= dbCount/pageSize+1;
	
	}
	
	//2-3. start, end 값 구하기
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage -1) * pageSize +1 ;
		end = reqPage * pageSize;
	}else{
		start = reqPage;
		end = pageSize;
	}


	ArrayList<ClassVO> list = dao.getCList(start,end); 
	int i=0; */
	
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스위트홈 :: 스토어관리 </title>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script> <!-- 제이쿼리 라이브러리 -->
<style>
	
	#newsroom-main {
		display:inline-block;
		margin:0 atuo;
		overflow:hidden;
		heigth:auto;
		width:853px;
		padding: 10px 18px 120px 17px;
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
		margin:20px 0 30px 90px;
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
	    border-bottom:none;
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
	    color: black;
	    font-size: 12px;
	}
	.main-section2 .section2-title .title-0 {
		width:40px;
		padding-left:20px;
	}
	.main-section2 .section2-title .title-1 {
		width: 80px;
		padding-left:0;
	}
	.main-section2 .section2-title .title-1-1 {
		margin-left:35px;
	}
	.main-section2 .section2-title .title-2 {
		width: 400px;
	}
	.main-section2 .section2-title .title-3 {
		width: 85px;
	}
	.main-section2 .section2-title .title-4 {
		width: 90px;
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
    	background-image:url(http://localhost:9000/myhouse/images/wait.png); 
    	background-repeat:no-repeat;
	    background-size: 28px 18px;
	}
	#status1{
		background-image:url(http://localhost:9000/myhouse/images/complete.png); 
	}
	.main-section2 .section2-cont li.cont-4 {
		width: 413px;
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
	    overflow-y: hidden !important;
	    overflow-x: hidden;
	    padding:5px;
	    border: 1px solid #999;
	    margin-top:10px;
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
	.cont-8:hover {
		background-color:white;
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
	.content .admin_main {
		float:left;
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
		margin-top:0px;
		margin-right:25px;
	}
	.main-section3 .admin_btn:hover {
		float:right;
	}
	.accept, .reject {
    margin:5px 0;
    width:55px;
    height:35px;
    color:white;
     border:none;
     font-size:14px;
     border-radius: 5px;
     border:3px solid white;
	}
	.accept:hover, .reject:hover{
    border:3px solid #999;
    }
    .accept:active, .reject:active{
    border:3px solid black;
    }
     .main-section3 .accept{
     background-color: rgb(99,206,197);
     }
      .main-section3 .reject{
     background-color: rgb(233,136,137);
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
	#ampaginationsm{
		margin:30px 0 0 200px;
		text-align: center;
	}
	</style>
<script>
	$(document).ready(function(){
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
		
		$("[name=checkTerms]").each(function(){
			$(this).click(function(){
				oneCheckFunc($(this));
			});                
		});
		//open/close 변경
		$("img[name=open]").click(function(){
			var i=$(this).attr("id");
			var status = $(this).attr("src");
			if(status == "http://localhost:9000/myhouse/images/notice_open.png") {
				var url="http://localhost:9000/myhouse/admin/class_iframe.jsp?cno="+$(this).attr("alt");
				$("#cont-8-"+i).css("display","block").height("450px");
				$("#"+i).attr("src","http://localhost:9000/myhouse/images/notice_close.png");
				$("#cont8-wrap-"+i).load(url+" .section2-cont");
			} else {
				$("#cont-8-"+i).css("display","none").height("0px");
				$("#"+i).attr("src","http://localhost:9000/myhouse/images/notice_open.png");
			}
		});
		
		//페이지 번호 및 링크
		var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,
	        totals:${dbCount},
	        page :${reqPage},
	        pageSize :${pageSize},
			
			lastText : '&raquo;&raquo;',
			firstText : '&laquo,&laquo',
			prevTest : '&laquo;',
			nextTest : '&raquo;',
			
			btnSize : 'sm'
		});
		
		jQuery("#ampaginationsm").on('am.pagination.change',function(e){
			$(location).attr('href','http://localhost:9000/myhouse/store_list.do?rpage='+e.page); 
			//location.href('이동페이지')';
		});
		
/* 		 $("#accept").click(function(){
			 $("#wbutton").val("accept");
			 ClassMForm.submit(); 
		 });
		 
		 $("#reject").click(function(){
			 $("#wbutton").val("reject");
			 ClassMForm.submit(); 
		 }); */
		 $("#reject").click(function(){
	          var inos = "";
	          var count = 0;
	          
	          $("input[name=checkTerms]:checked").each(function(i){
	              count++;
	              //del_list += "bid=" $(this).attr("id")+"&";
	              inos += "inos="+$(this).attr("value")+"&";
	               /* var tr=$(".cont-0#"+bid);
	               tr.remove(); */
	           });
	          if(count == 0){
	               alert("한 개 이상 선택하셔야 삭제가 가능합니다.")
	               return false;
	            }else{
	               //서버전송                         
	               $.ajax({
	                   url:"stateUpdate.do?"+inos,
	                   success:function(result) {
	                    if(result != 0) {
	                  	  location.reload();
	                    } else {
	                  	  return false;
	                    }
	                      
	                   }
	                }); 
	               
	               
	            }
	             
	   });  //reject
	   
	   $("#accept").click(function(){
	          var inos = "";
	          var count = 0;
	          
	          $("input[name=checkTerms]:checked").each(function(i){
	              count++;
	              //del_list += "bid=" $(this).attr("id")+"&";
	              inos += "inos="+$(this).attr("value")+"&";
	               /* var tr=$(".cont-0#"+bid);
	               tr.remove(); */
	           });
	          if(count == 0){
	               alert("한 개 이상 선택하셔야 삭제가 가능합니다.")
	               return false;
	            }else{
	               //서버전송                         
	               $.ajax({
	                   url:"stateUpdate2.do?"+inos,
	                   success:function(result) {
	                    if(result != 0) {
	                  	  location.reload();
	                    } else {
	                  	  return false;
	                    }
	                      
	                   }
	                }); 
	               
	               
	            }
	             
	   });  //reject
		
	});
	
	function getselectbox(){
		 document.getElementById("cid_1").value()=document.getElementById("selectbox").value();
	}
	
	


	
	function allCheck() { 
		var all = document.getElementById("checkAll");
		/* var chk = document.getElementById("check1");
		var privacy = document.getElementById("termsPrivacy"); */
		var chk_list = document.getElementsByName("checkTerms");
		
		if(all.checked) {
			for(var i=0;i<chk_list.length;i++) {
				chk_list[i].checked = true;
			}
			
		}   else {
			for(var i=0;i<chk_list.length;i++) {
				chk_list[i].checked = false;
			}
		}
		
	}
	
	 
	
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"></jsp:include>

	<!-- content -->
	<div style="margin:0 auto;">
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
		<span class="main-logo">SweetHome <span>'STORE'</span> ROOM</span>
		<div class="main-section1">
			<ul class="section1-category">
				<li id="first" class="first selected"><a href="#">스토어관리</a></li>
			</ul>
		</div>
		<div class="main-section2">
			<ul class="section2-title">
				<li class="title-0">
					<input class="blind inp_label" type="checkbox" name="checkAll" id="checkAll" onchange="allCheck()">
					<label for="checkAll" class="inp_chkbox"></label>
				</li>
				<li class="title-1">번호</li>
				<li class="title-1-1">승인 상태</li>
				<li class="title-2">상품 제목</li>
				<li class="title-3">판매자</li>
				<li class="title-4">작성일</li>
			</ul>
			<div id="nesListNew">
			<form name="ClassMForm" action="class_listProc.jsp" method="get" class="join">
			<input type="hidden" name="wbutton" value="" id="wbutton">
				<c:forEach var="i" begin="0" end="${list.size()-1}">
					<ul class="section2-cont">
						<li class="cont-0">
							<input class="blind inp_label" type="checkbox" name="checkTerms"
							 id="check${i}" value="${list.get(i).getIno()}">
							<label for="check${i}" class="inp_chkbox"></label>
						</li>
						<li class="cont-1">${list.get(i).getRno()}</li>
						<li class="cont-2">
							<a id="test1" class="cont2-btn">
								<img src="http://localhost:9000/myhouse/images/notice_open.png" id="${i}" name="open" >
								<label></label>
							</a>
						</li>
						<li class="cont-3">
							<label class="cont3-label" id="status${list.get(i).getStatus()}" ></label>
						</li>
						<li class="cont-4">
							<a href="http://localhost:9000/myhouse/store_content.do?ino=${list.get(i).getIno()}">${list.get(i).getItitle()}</a>
						</li>
						
						<li class="cont-5">${m_list.get(i).getEmail()}</li>
						<li class="cont-6">${list.get(i).getIdate()}</li>
						<li class="cont-8" id="cont-8-${i}" >
							<iframe width="855px"  height="800px"  frameborder=0  src="store_page_sample.do?ino=${list.get(i).getIno()}">
							</iframe>
						</li>
					</ul>
				</c:forEach>
			</form>
	
				
			</div>
		</div>
		<div class="main-section3">
			<div class="admin_btn">
					<button type="button" class="accept" id="accept">수락</button>
					<button type="button" class="reject" id="reject">거절</button>
			</div>
			<div id="ampaginationsm"></div>
		</div>
			
		</div>
	</div>
	</div>
</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>