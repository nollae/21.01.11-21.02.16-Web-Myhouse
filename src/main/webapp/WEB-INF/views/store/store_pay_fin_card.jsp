<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	html, body {
	    line-height: 1;
	    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	    -webkit-font-smoothing: antialiased;
	    letter-spacing: -0.4px;
	    font-size: 13px;
	    color: #424242;
	}
	div {
	    display: block;
	}
	div {
		margin:0;
		padding:0;
	}
	a {
	    color: inherit;
	    text-decoration: none;
	}
	#order_result {
	    width: 100%;
	    max-width: 370px;
	    margin: 48px auto;
	    text-align: center;
	}
	#order_result>.image.success_card {
	    width: 160px;
	    height: 154px;
	    background-image: url(http://localhost:9000/myhouse/images/mobile_order_group.png);
	    background-position: top -101px left 0px;
	    background-size: 335px;
	}
	#order_result>.image {
	    margin: 0 auto 24px;
	}
	#order_result>a>div {
	    display: inline-block;
	    padding: 12px 24px;
	    border: 2px solid #35c5f0;
	    color: #35c5f0;
	    font-weight: bold;
	}
	
	.icon {
	    background-repeat: no-repeat;
	    background-size: 400px;
	}
</style>
</head>
<body>
<!-- header -->
	<jsp:include page="../header1.jsp" />
<div id="order_result" data-cost="7900" data-new="Old">
      <div class="image success_card"></div>

      <a href="/user_shopping_pages/order_list">
        <div class="icon">주문현황보기</div>
</a>  
</div>
<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>