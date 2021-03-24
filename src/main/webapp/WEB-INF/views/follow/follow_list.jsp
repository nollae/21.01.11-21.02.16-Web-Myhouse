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
<jsp:include page="../header_login.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-3 wrap--profile">
				<div data-sticky-enabled="false" data-sticky-disabled="false"
					data-sticky-always="false" data-sticky-ignore="false"
					data-direction="top" data-offset="81" class="sticky-container"
					style="position: sticky; top: 81px;">
					<div class="sticky-child" style="position: relative">
						<div class="user-profile">
							<div class="user-profile__share">
								<button type="button">
									<span class="icon--common-action"
										style="background-position-x: -360px; background-position-y: -280px; width: 24px; height: 24px"></span>
								</button>
								<div class="share-tooltip--normal-user-show">
									<div class="share-tooltip__tooltip"
										style="right: 0; top: 100%; transition: opacity .3s ease, transform .3s ease, visibility 0s .3s; opacity: 0; transform: translateY(-16px); visibility: hidden">
										<a class="share-tooltip__btn-share"
											href="https://www.facebook.com/sharer.php?u=https://ozip.me/HUyNzm3"
											target="_blank" rel="noopener noreferrer"><span
											class="icon icon-sns-square-facebook"></span></a>
										<button class="share-tooltip__btn-share">
											<span class="icon icon-sns-square-kakao-story"></span>
										</button>
										<a class="share-tooltip__btn-share"
											href="http://share.naver.com/web/shareView.nhn?url=https://ozip.me/HUyNzm3&amp;title=기림팀장만믿어요님의 유저홈에 놀러오세요!"
											target="_blank" rel="noopener noreferrer"><span
											class="icon icon-sns-square-naver"></span></a>
									</div>
								</div>
							</div>
							<div class="user-profile__container">
								<div class="user-profile__profile-image">
									<img
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610431937_facebook_2501568490139803.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610431937_facebook_2501568490139803.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610431937_facebook_2501568490139803.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610431937_facebook_2501568490139803.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 3x">
								</div>
								<div class="profile-info">
									<div class="profile-info__name">
										<span>기림팀장만믿어요</span>
									</div>
									<div class="profile-info__follow-state">
										<div class="profile-info__follow-state__text">
											<a href="http://localhost:9000/myhouse/follow_home_follower.do">팔로워 <span
												class="highlight">2</span></a>
										</div>
										<div class="profile-info__follow-state__vertical-bar"></div>
										<div class="profile-info__follow-state__text">
											<a href="http://localhost:9000/myhouse/follow_home_followee.do">팔로잉 <span
												class="highlight">4</span></a>
										</div>
									</div>
									<div class="profile-info__actions">
										<button class="profile-info__btn profile-info__btn--secondary"
											type="button">팔로우</button>
									</div>
								</div>
							</div>
							<div class="user-profile__empty"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="horizontal-line"></div>
			<div class="col-12 offset-lg-1 col-lg-8 wrap--contents">
				<div class="contents">
					<p class="contents__empty">게시물이 없어요 ㅠ</p>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="../footer.jsp" />

</body>
</html>