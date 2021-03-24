<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.myhouse.vo.*"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
 <!-- 금액 총 합계  -->
    <script>
    $(document).ready(function(){
    /** 전체선택 **/
		$("#all").change(function(){
			
			$("#all:checked").length == 0
			if($(this).is(":checked")){
				//선택 - 하위 checkbox 선택
				$("input[name='chk']").prop("checked",true);
			}else{
				//해제 - 하위 checkbox 해제
				$("input[name='chk']").prop("checked",false);
			}	
		});
		/**전체선택후 개별선택시 전체선택 체크해제**/
		$("input[name='chk']").click(function(){
			  $("#all").prop("checked", false);
			 });
		/** 삭제 버튼 클릭 : 클릭된 체크박스의 id 값을 리턴 **/
		$("#btnDelete").click(function(){
			  var del_list =""; 	
			 $("input[name='chk']:checked").each(function(index){
				 del_list += $(this).attr("id") + ",";
			});

			//ajax를 이용하여 서버로 전송 후 삭제 진행
			$.ajax({
				  url:"shoppingBasket_proc_delete.do?bnonum="+del_list,
				  success:function(result){
					  alert("장바구니 삭제완료");
					  location.reload();
				  }
			});//ajax 
		});//btnDelete
    
	});//ready
    </script>
</head>
<body>
<jsp:include page="../header1.jsp" />
<c:choose>
	<c:when test="${map.count == 0}">
	 	<div class="commerce-cart-empty">
			<div class="commerce-cart-empty__content">
				<img class="commerce-cart-empty__content__image"
					src="http://localhost:9000/myhouse/images/BasketBanner.PNG" alt="장바구니가 비었습니다."><a
					class="button button--color-blue button--size-50 button--shape-4 commerce-cart-empty__content__button"
					href="http://localhost:9000/myhouse/store_index.do?category=0">상품 담으러 가기</a>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</c:when>

	<c:otherwise>
 	<div class="commerce-cart-wrap">
		<div class="container">
			<div class="commerce-cart row">
				<div class="commerce-cart__content-wrap col-12 col-md-7 col-lg-8">
					<div class="commerce-cart__content">
						<div data-sticky-enabled="false" data-sticky-disabled="true"
							data-sticky-always="false" data-sticky-ignore="true"
							data-direction="top" data-offset="81"
							class="sticky-container commerce-cart__header-wrap">
						</div>
						<ul class="commerce-cart__content__group-list">
						<c:forEach var="row" items="${map.list}" varStatus="i">
							<li class="commerce-cart__content__group-item"><article
									class="commerce-cart__group">
									<h1 class="commerce-cart__group__header">${row.goods_name}</h1>
									<ul class="commerce-cart__group__item-list">
										<li class="commerce-cart__group__item"><article
												class="commerce-cart__delivery-group">
												<ul class="commerce-cart__delivery-group__product-list">
													<li class="commerce-cart__delivery-group__product-item"><article
															class="carted-product">
															<div class="carted-product__select">
														
															</div>
															<a class="product-small-item product-small-item--clickable"
																href="http://localhost:9000/myhouse/store_page.do?ino=${row.ino}">
																<div class="product-small-item__image">
																	<img src="http://localhost:9000/myhouse/resources/upload/${row.goods_simage}">
<!-- 																		srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
 -->															</div>
																<div class="product-small-item__content">
																	<h1 class="product-small-item__title">${row.goods_name}</h1>
																	<p class="product-small-item__caption">사장님이 미쳤습니다 무료배송</p>
																</div></a>
															<a href="shoppingBasket_proc_delete.do?bno=${row.bno}">
															<button class="carted-product__delete" type="button"
																aria-label="삭제">
																<svg width="12" height="12" viewBox="0 0 12 12"
																	fill="currentColor" preserveAspectRatio="xMidYMid meet">
																	<path fill-rule="nonzero"
																		d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
															</button>
															</a>
															<ul class="carted-product__option-list">
																<li class="carted-product__option-list__item"><article
																		class="selling-option-item">
																		<button class="selling-option-item__delete"
																			type="button" aria-label="삭제">
																		</button>
																		<div class="selling-option-item__controls">
																			<div class="selling-option-item__quantity">
																				<div class="input-group select-input option-count-input">
																				수량 : ${row.bcount}개
																				</div>
																			</div>
																			<p class="selling-option-item__price">
																				<span class="selling-option-item__price__number">${row.goods_price}</span>원
																			</p>
																		</div>
																	</article></li>
															</ul>
															<div class="carted-product__footer">
																<span class="carted-product__footer__left">
																<!-- <button class="carted-product__edit-btn" type="button">옵션변경</button> -->
																	<!-- <button class="carted-product__order-btn" type="button">바로구매</button> -->
																	</span><span
																	class="carted-product__subtotal"><span
																	class="carted-product__subtotal__number">상품 금액 : ${row.money}</span>원</span>
															</div>
														</article></li>
												</ul>
												<footer class="commerce-cart__delivery-group__footer">
													<p class="commerce-cart__delivery-group__total">배송비
														무료</p>
												</footer>
											</article></li>
									</ul>
								</article></li>
						 </c:forEach>
						</ul>
					</div>
				</div>
			
				<div class="commerce-cart__side-bar-wrap col-12 col-md-5 col-lg-4">
					<div data-sticky-enabled="false" data-sticky-disabled="false"
						data-sticky-always="false" data-sticky-ignore="false"
						data-direction="top" data-offset="81"
						class="sticky-container commerce-cart__side-bar-container"
						style="position: sticky; top: 81px;">
						<div class="sticky-child commerce-cart__side-bar"
							style="position: relative;">
							<dl
								class="commerce-cart__summary commerce-cart__side-bar__summary">
								<div class="commerce-cart__summary__row">
									<dt>총 상품금액</dt>
									<dd>
										<span class="number">${map.sumMoney}</span>원
									</dd>
								</div>
								<div class="commerce-cart__summary__row">
									<dt>배송비</dt>
									<dd>
										+ <span class="number">무료 </span>
									</dd>
								</div> 
								<div class="commerce-cart__summary__row commerce-cart__summary__row--total">
									<dt>결제금액</dt>
									<dd>
										<span class="number">${map.sumMoney}</span>원
									</dd>
								</div>
							</dl>
							<div class="commerce-cart__side-bar__order">
								<button
									class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn"
									type="button">${map.count}개 상품 구매하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="../footer.jsp" /> 
	<!-- </form> -->
	</c:otherwise>
</c:choose>

</body>
</html>