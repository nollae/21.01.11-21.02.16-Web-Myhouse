<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <h1>알람 내소식</h1> -->

	<jsp:include page="../header_login.jsp" />

	<div id="body" class="notifications feed"
		data-s_id="0aaebb5c39d5910695ef81b9755e6790"
		style="padding-bottom: 0px;">


		<ul class="sub-navigation">
			<li class="sub-navigation__item"><a
				class="sub-navigation__item__link active"
				href="http://localhost:9000/myhouse/allam_mynews.do"> 내 소식 </a></li>
			<li class="sub-navigation__item"><a
				class="sub-navigation__item__link"
				href="http://localhost:9000/myhouse/allam_following.do"> 팔로잉 </a></li>
		</ul>


		<div id="content">
			<div id="notifications">
				<div class="title">내 소식</div>
				<div id="empty_message">결과가 존재하지 않습니다.</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/42948840?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161276378</div>
						<div class="message">폴센 데이베드 아쿠아텍스 소파베드 / 추가상품 -
							추가커버만(실버그레이) 상품의 구매가 확정되었습니다. 포토리뷰 작성하고 500포인트 받아가세요!</div>
						<div class="time">2일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/42948840?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161276379</div>
						<div class="message">폴센 데이베드 아쿠아텍스 소파베드 / 기본(매트+다크그레이) 상품의
							구매가 확정되었습니다. 포토리뷰 작성하고 500포인트 받아가세요!</div>
						<div class="time">2일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161127237</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 가로x깊이:
							가로1500x깊이400 / 높이(프레임색상): 1500 (검정) 상품의 구매가 확정되었습니다. 포토리뷰 작성하고
							500포인트 받아가세요!</div>
						<div class="time">2일 전</div>
					</a>
				</div>
				<div class="notification ">
					<a href="/users/11910848"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610431937_facebook_2501568490139803.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/users/11910848?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161122853</div>
						<div class="message">기림팀장만믿어요님이 나를 팔로우합니다.</div>
						<div class="time">2일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/11910615"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/users/11910615?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161122773</div>
						<div class="message">귤먹고갈래님이 나를 팔로우합니다.</div>
						<div class="time">2일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43933631?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">161065129</div>
						<div class="message">순수원목 선반장 4colors (가로3단) / 색상: 03.우드 /
							사이즈: 가로3단 500 상품은 잘 받으셨나요? 무사히 받았다면 구매를 확정해주세요!</div>
						<div class="time">3일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43909364?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160143974</div>
						<div class="message">모노블 더길어진 반전매력 재활용 분리수거함 3P / 모노블 더길어진
							반전매력 재활용 분리수거함 3P 상품은 잘 받으셨나요? 무사히 받았다면 구매를 확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160117960</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 조절좌세트
							상품은 잘 받으셨나요? 무사히 받았다면 구매를 확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160117961</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 보강대
							400mm 검정 상품은 잘 받으셨나요? 무사히 받았다면 구매를 확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160117962</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 안전좌
							(4개기본) 검정 상품은 잘 받으셨나요? 무사히 받았다면 구매를 확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160117963</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 가로x깊이:
							가로1500x깊이400 / 높이(프레임색상): 1500 (검정) 상품은 잘 받으셨나요? 무사히 받았다면 구매를
							확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43850213?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">160116501</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 가로x깊이:
							가로1000x깊이300 / 높이(프레임색상): 1200 (검정) 상품은 잘 받으셨나요? 무사히 받았다면 구매를
							확정해주세요!</div>
						<div class="time">5일 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43933631?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">159015519</div>
						<div class="message">순수원목 선반장 4colors (가로3단) / 색상: 03.우드 /
							사이즈: 가로3단 500 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43909364?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158687279</div>
						<div class="message">모노블 더길어진 반전매력 재활용 분리수거함 3P / 모노블 더길어진
							반전매력 재활용 분리수거함 3P 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158634771</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 안전좌
							(4개기본) 검정 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158634774</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 조절좌세트
							상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158634776</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 가로x깊이:
							가로1500x깊이400 / 높이(프레임색상): 1500 (검정) 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43852671?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158634778</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 추가상품 - 보강대
							400mm 검정 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43850213?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158634787</div>
						<div class="message">경량랙 무볼트 조립식 철제 앵글선반 4단 / 가로x깊이:
							가로1000x깊이300 / 높이(프레임색상): 1200 (검정) 상품의 배송이 시작되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43933631?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158492066</div>
						<div class="message">[먼데이하우스] 순수원목 선반장 4colors (가로3단) 주문이
							결제되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
				<div class="notification unchecked">
					<a href="/users/2"> <img class="profile_image"
						src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1512439280629_knGlCsma.jpg/320/320"
						alt="320">
					</a> <a class="check_link" target="_blank"
						href="/orders/43909364?affect_type=NotificationNews&amp;affect_id=0">
						<div class="id" style="display: none;">158452361</div>
						<div class="message">[네이쳐리빙] 모노블 더길어진 반전매력 재활용 분리수거함 3P 주문이
							결제되었습니다.</div>
						<div class="time">1주 전</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />

</body>
</html>