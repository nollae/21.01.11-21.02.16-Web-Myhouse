<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
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
	#order_result>.image.success_vbank {
	    width: 160px;
	    height: 172px;
	    background-image: url(http://localhost:9000/myhouse/images/mobile_order_group.png);
	    background-position: top -265px left 0px;
	    background-size: 335px;
	}
	#order_result>.image {
	    margin: 0 auto 24px;
	}
	#order_result>.vbank_info  {
	    margin-bottom: 24px;
	}
	#order_result>.vbank_info>.title {
	    font-size: 18px;
	    color: #757575;
	    padding-bottom: 12px;
	    font-weight: bold;
	    border-bottom: 1px solid #dcdcdc;
	    text-align: center;
	    margin-top: 24px;
	}
	#order_result>.vbank_info>.field {
	    overflow: hidden;
	    font-size: 16px;
	    padding: 12px 0;
	    border-bottom: 1px solid #dcdcdc;
	}
	#order_result>.vbank_info>.field>.title {
	    width: 100px;
	    float: left;
	    text-align: center;
	    border-right: 1px solid #dcdcdc;
	}
	#order_result>.vbank_info>.field>.content {
	    float: left;
	    color: #35c5f0;
	    font-weight: bold;
	    text-align: left;
	    padding: 0 24px;
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
<script>

</script>
</head>
<body>
<div id="order_result" data-cost="99000" data-new="Old">
      <div class="image success_vbank"></div>
      <div class="vbank_info">
        <div class="title">아래의 표를 참조해서 입금해주세요.</div>
        <div class="field">
          <div class="title">은행명</div>
          <div class="content">
            국민은행
          </div>
        </div>
        <div class="field">
          <div class="title">예금주</div>
          <div class="content">
            주식회사 버킷플레이스
          </div>
        </div>
        <div class="field">
          <div class="title">계좌번호</div>
          <div class="content">
            36789071568033
          </div>
        </div>
        <div class="field">
          <div class="title">입금금액</div>
          <div class="content">
            99,000원
          </div>
        </div>
        <div class="field">
          <div class="title">기한</div>
          <div class="content">
              2021.01.23까지
          </div>
        </div>
      </div>
      <a href="/user_shopping_pages/order_list">
        <div class="icon">주문현황보기</div>
	</a>  
</div>
</body>
</html>