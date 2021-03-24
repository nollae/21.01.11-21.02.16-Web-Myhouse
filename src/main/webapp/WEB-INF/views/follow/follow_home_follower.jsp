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

<div id="body" class="users follower" data-s_id="df7d44686e01a9ed062dc28c9a59fc97" style="padding-bottom: 0px;">
    
<div id="user-share-data" data-user-nickname="기림팀장만믿어요" data-user-cover-img-url="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-default_images-default_user_cover3.jpg/850/850" data-follower-count="3" data-user-id="11910848" data-user-profile="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610431937_facebook_2501568490139803.jpg/160/160"></div>

<header id="user-header" class="user-header">
  <div class="user-header__cover" style="background-image: url(https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-default_images-default_user_cover3.jpg/2560/none);"></div>
  <img class="user-header__profile" src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610431937_facebook_2501568490139803.jpg/320/320" srcset="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610431937_facebook_2501568490139803.jpg/320/320 1.5x, https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610431937_facebook_2501568490139803.jpg/425/425 3x">
  <div class="user-header__info">
    <p class="user-header__name">
      <a href="http://localhost:9000/myhouse/follow_list.do">
        기림팀장만믿어요
</a>    </p>
    <p class="user-header__follow">
      <a href="/users/F-3JTT08DjY/followee">
        팔로잉 4
</a>      |
      <a href="/users/F-3JTT08DjY/followee">
        팔로워
        <span class="user-header__follow__follower">
          3
        </span>
</a>    </p>
      <button class="btn user-header__btn user-header__btn--follow" data-user="11910848">팔로우</button>
  </div>
  <div id="btn-share-user-wrap">
    <button id="btn-share-user">
      <span class="icon-common-action__f-1"></span>
    </button>
    <div id="share-sns-tooltip" class="tooltip-share-sns hidden" data-type="user" data-id="11910848" style="right: ">
     <!--data-title="" data-username=""-->
    <a class="btn-share-sns facebook" href="#" target="_blank"><span class="icon icon-sns-square-facebook"></span></a>
    <div class="btn-share-sns kakaostory" href="#" target="_blank"><span class="icon icon-sns-square-kakao-story"></span></div>
    <div class="btn-share-sns kakaotalk" href="#" target="_blank"><span class="icon icon-sns-square-kakao-talk"></span></div>
    <a class="btn-share-sns naver" href="#" target="_blank"><span class="icon icon-sns-square-naver"></span></a>
</div>

  </div>
</header>



<div class="myhome-nav">
  <nav class="page-navigation myhome-nav__contents">
    <ul>
        <li class="page-navigation__item"><a target="_self" href="http://localhost:9000/myhouse/follow_home_followee.do">팔로잉</a></li>
  <li class="page-navigation__item page-navigation__item--active"><a target="_self" href="http://localhost:9000/myhouse/follow_home_follower.do">팔로워</a></li>

    </ul>
  </nav>
  
</div>


<div id="follow_content">
    <div class="title">팔로워</div>
    <div id="users">
        <div id="empty_message">
            팔로워가 없습니다.
        </div>
    <div class="user" id="11910615">
    <a target="_blank" href="/users/11910615">
        <div class="image" style="background-image: url('https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1610430931_naver_98fa1c51c220430f705f88ee4aa119fab6005b2b158b188714085614b7112149.jpg/320/320')"></div>
        <div class="name">귤먹고갈래</div>
</a>
        <div class="button follow user_11910615">
                <a data-remote="true" href="/users/11910615/follow"></a>
        </div>
</div>
<div class="user" id="7109166">
    <a target="_blank" href="/users/7109166">
        <div class="image" style="background-image: url('https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-default_images-avatar.png/320/320')"></div>
        <div class="name">기림6</div>
</a>
        <div class="button follow user_7109166">
                <a data-remote="true" href="/users/7109166/follow"></a>
        </div>
</div>
<div class="user" id="11910649">
    <a target="_blank" href="/users/11910649">
        <div class="image" style="background-image: url('https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-default_images-avatar.png/320/320')"></div>
        <div class="name">영화:)</div>
</a>
        <div class="button follow user_11910649">
                <a data-remote="true" href="/users/11910649/follow"></a>
        </div>
</div></div>
</div>
  </div>

<jsp:include page="../footer.jsp" />
</body>
</html>