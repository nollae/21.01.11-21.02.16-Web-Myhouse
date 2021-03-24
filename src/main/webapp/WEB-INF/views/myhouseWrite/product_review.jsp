<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진태그등록</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">

 <script>
	$(document).ready(function(){
		//선택등록 버튼 
		$("#btnInsert").click(function(){
			var chk_list = $(opener.document).find("#ptag").val();
			var choice = confirm("등록하시겠습니까?");
			if(choice){
				$("input[type=checkbox]:checked").each(function(i){
					chk_list += $(this).attr("id") + ",";
					var gno =  $(this).attr("id");
					var gname = $(this).parent().children('div.info').children('h1').children('span.production-item__header__name').text();
					var output = "<li><input type='hidden' id='tag_gno' value='"+gno+"'><button id='gname' class='filter_bar_tag' type='button'>"+gname ;
					output += "	<svg class='tagIcon' width='12' height='12' viewBox='0 0 12 12' fill='currentColor' preserveAspectRatio='xMidYMid meet'>"
					output += "<path d='M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z'></path>"
					output +="</svg></button></li>";
					$(opener.document).find('#goods_list').append(output);
				});	
				
				$(opener.document).find("#ptag").val(chk_list);
				
				window.close();
			}			
		});
	});
 </script>
 <style>
	 .search-page__title{
	 	display:block;
	 	text-align:center;
	 }
	 
	 .ul{
	 		display: block;
			padding: 0 30px;
	 }
	 
	.list_item{
			margin-left:85px;
			float: left;
			padding: 35px 10px;
			list-style-type: none;	
	
	}
	
	.list_item>.image{
			height: 200px;
			width: 200px;
			border-radius:8px;
	}
	
	.search-page container{
		width: 750px;
		display: block;
		margin: auto;
		padding:50px 0 0 0 ;
	}
	
	.info{
		text-align:center;
		margin:auto;
	}
	.btn_style{
		 top: 30px;
	 	 left: 1090px;
	 	 position: fixed;
	  	width:100px;
	    background-color: #35c5f0;
	    border: #35c5f0;
	    color:#fff;
	    padding:20px 0;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 15px;
	    margin: 4px;
	    cursor: pointer;
	    border-radius:4px;
	}
	.search-item{
	/*  border:2px solid #35c5f0; */
	 margin:auto;
	 width:1100px;
	}

 </style>
<body>
<article class="search-page container">
			<div class="logo">
				<img src="http://localhost:9000/myhouse/images/logo.png">
			</div>
	<section class="search-page__title" style="font-weight:bold">‘${value}’ 검색 결과 
		<span class="search-page__number">${interior_list.size()+community_list.size()}개</span>
	</section>
	<section class="search-item">
		<div class="scroller-wrap search-store__scroller scroller-wrap--enabled">
			<div class="scroller">
				<div class="scroller__content-wrap" tabindex="-1">
						<ul>
							<c:forEach var="vo" items="${interior_list}">
							<li class="list_item">
							<input type="checkbox" id="${vo.gno}">
										<a href="http://localhost:9000/myhouse/store_page.do?gno=${vo.gno}"></a>
											<img class="image" src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}">
											<div class="production-item-image__dark-overlay"></div>
										<div class="info">
											<h1 class="production-item__header">
												<span class="production-item__header__brand">${vo.company}</span>
												<span class="production-item__header__name">${vo.ititle}</span>
											</h1>
											<span class="production-item-price">
												<span class="production-item-price__price">${vo.goods_price}</span>
											</span>
										</div>
							</li>
								</c:forEach>
								</ul>
					</div>
				</div>
		</div>
	</section>
	<button type="button" class="btn_style" id="btnInsert">태그 등록</button>
</article>
</body>
</html>