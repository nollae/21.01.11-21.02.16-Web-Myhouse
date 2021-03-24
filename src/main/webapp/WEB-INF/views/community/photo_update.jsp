<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://localhost:9000/myhouse/js/myhouse.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!--이미지 미리보기-->
<!-- <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script> -->
    <script type="text/javascript">
    
    $(document).ready(function() {
    	  if (window.File && window.FileList && window.FileReader) {
    	    $("#imageSelector").on("change", function(e) {
    	        $('img.card-collection-form__card-image__image').removeAttr('src');
    	      	var files = e.target.files,
    	        filesLength = files.length;
    	      	for (var i = 0; i < filesLength; i++) {
    	        	var f = files[i]
    	        	var fileReader = new FileReader();
    	        	fileReader.onload = (function(e) {
    	          	var file = e.target;
    	          	$('img.card-collection-form__card-image__image').attr('src', e.target.result);
    	          
    	        });
    	        fileReader.readAsDataURL(f);
    	      }
    	      	$('label.card-collection-form__card-image-upload').css('display','none');
              	$('div.card-collection-form__card-image').css('display','')
    	    });
    	  } else {
    	    alert("브라우저를 업데이트 해주세요");
    	  }
    	  
    	 $("button.card-collection-form__card-image__action").click(function(){
          	$('label.card-collection-form__card-image-upload').css('display','');
          	$('div.card-collection-form__card-image').css('display','none')
		});
    	  
    	  
    	 $("#btnUploadPhoto").click(function(){
           	if($('label.card-collection-form__card-image-upload').css('display')=='block'){
   				$("label.card-collection-form__card-image-upload").css("border","2px solid red");
   				return false;
   			}else{
   				updatePhotoForm.submit();		
   			}
 		});
    	  
    	  function popup(){
              var url = "tag.do";
              var name = "상품태그하기";
              var option = "width = 350, height = 500, top = 100, left = 200, location = no"
              window.open(url, name, option);
         }
    	 $('#tag_btn').click(function(){
    		popup(); 
    	 });
    	 
    	$(document).on("click","button#gname",function(){
    	 	$(this).parent().remove();
    	 	var tag = $('#ptag').val();
    	 	var gno = $(this).parent().children('#tag_gno').val()+",";
			tag =  tag.replace(gno, "");
			$('#ptag').val(tag);
    	 });
    	  
    
	    $("#btn_sch").click(function() {
	    	if ($("#inp_sch").val() == ""){
				alert("검색할 데이터를 입력해주세요");
				$("#inp_sch").focus();
				return false; 
			} else {
				var inp_sch = $("#inp_sch").val();
				var btn_sch = $("#btn_sch").val();
				var value = $("#inp_sch").val();
				/* alert(inp_sch);  */
				var popupWidth =1300;
				var popupHeight =700;
				var popupX = (window.screen.width / 2) - (popupWidth / 2);
				var popupY= (window.screen.height / 2) - (popupHeight / 2);
				
				var win = window.open('http://localhost:9000/myhouse/product_review.do?value='+value, "PopupWin", 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
				
			}
		});

		$("#inp_sch").keydown(function(key) {
		 	var value=$(this).val();
		});
	    
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
    }); 
</script>
	
<style>		
	input[type="file"] {
		display: block;
	}
		
	.imageThumb {
		max-height: 450px;
		max-width: 450px;
		border: 2px solid;
		padding: 1px;
		cursor: pointer;
	}
		
	.pip {
		display: inline-block;
		margin: 10px 10px 0 0;
	}
		
	.remove {
		display: block;
		background: #35c5f0;
		border: 1px solid black;
		color: white;
		text-align: center;
		cursor: pointer;
	}
		
	.remove:hover {
		background: white;
		color: black;
	}
	
	div.card-collection-form-logo-wrap{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0 auto -10px;
		text-align: left;
		padding: 20px 20px 0;
	}
	
	a.card-collection-form-logo{
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		text-align: left;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
	}
	
	h1.card-collection-form__title{
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		margin-bottom: 40px;
		font-weight: 700;
		color: #000;
		font-size: 30px;
	}
	
	form.card-collection-form{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: 1136px;
		box-sizing: border-box;
		min-height: 1px;
		position: relative;
		margin-top: 40px;
		max-width: 943px;
	}
	
	div.card-collection-form__metadata{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		-webkit-box-pack: justify;
		justify-content: space-between;
		-webkit-box-align: center;
		align-items: center;
		margin: 0 -5px 30px;
	}
	
	div.card-collection-form__metadata__left{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 1 auto;
		min-width: 1px;
		max-width: 100%;
	}
	
	div.input-group{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
		position: relative;
		display: inline-block;
		margin: 0 5px 10px;
		width: auto;
	}
	
	select.form-control_selected{
		-webkit-font-smoothing: antialiased;
		-webkit-tap-highlight-color: transparent;
		font-family: inherit;
		font-weight: inherit;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
		display: block;
		box-sizing: border-box;
		height: 40px;
		padding: 0 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		outline: 0;
		padding-right: 30px;
		background-image: none;
		font-size: 15px;
		width: 100%;
	}
	
	span.select-input__icon{
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-tap-highlight-color: transparent;
		position: absolute;
		top: 10px;
		right: 10px;
		padding: 5px;
		font-size: 0;
		cursor: default;
		color: rgba(0,0,0,.3);
		pointer-events: none;
	}
	
	span.select-input__icon svg path{
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 0;
		cursor: default;
		color: rgba(0,0,0,.3);
		pointer-events: none;
		fill: currentColor;
		fill-rule: evenodd;
		d: path("M 0 3 l 5 5 l 5 -5 Z");
		-webkit-tap-highlight-color: transparent;
	}
	
	.card-collection-form__card-item{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		position: relative;
		margin: 0 -12px;
		padding: 0 0 40px;
		display: flex;
		-webkit-box-align: stretch;
		align-items: stretch;
	}
		
	.card-collection-form__card-image-upload{
		-webkit-font-smoothing: antialiased;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		font-size: inherit;
		display: block;
		position: relative;
		width: 100%;
		margin: 0;
		border: none;
		background: #f5f5f5;
		border-radius: 8px;
		font-family: inherit;
		transition: opacity .1s;
		opacity: .7;
		height: 100%;
	}
	input.hidden_input{
		margin: 0;
		padding: 0;
		font-family: inherit;
		font-weight: inherit;
		font-size: inherit;
		display: none;
	} 
	span.content{
		-webkit-font-smoothing: antialiased;
		list-style: none;
		cursor: pointer;
		font-family: inherit;
		-webkit-tap-highlight-color: transparent;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		font-size: 0;
		text-align:center;
	}
	span.ptext{
		-webkit-font-smoothing: antialiased;
		list-style: none;
		cursor: pointer;
		font-family: inherit;
		-webkit-tap-highlight-color: transparent;
		display: block;
		font-size: 15px;
		font-weight: 900;
		line-height: 20px;
		color: #757575;
	}
	svg.sicon{
		-webkit-font-smoothing: antialiased;
		list-style: none;
		cursor: pointer;
		font-family: inherit;
		font-size: 0;
		fill: currentcolor;
		-webkit-tap-highlight-color: transparent;
		display: inline-block;
		width: 48px;
		height: 48px;
		margin: 0 auto 10px;
		color: #bdbdbd;
	}
	
	svg.sion > path{
		-webkit-font-smoothing: antialiased;
		list-style: none;
		cursor: pointer;
		font-family: inherit;
		font-size: 0;
		color: #bdbdbd;
		d: path("M 11.952 9.778 l 2.397 -5.994 A 1.778 1.778 0 0 1 16 2.667 h 16 c 0.727 0 1.38 0.442 1.65 1.117 l 2.398 5.994 h 10.174 c 0.982 0 1.778 0.796 1.778 1.778 v 32 c 0 0.981 -0.796 1.777 -1.778 1.777 H 1.778 A 1.778 1.778 0 0 1 0 43.556 v -32 c 0 -0.982 0.796 -1.778 1.778 -1.778 h 10.174 Z M 24 38 c 6.075 0 11 -4.925 11 -11 s -4.925 -11 -11 -11 s -11 4.925 -11 11 s 4.925 11 11 11 Z");
		-webkit-tap-highlight-color: transparent;
	}
	button.tag_btn{
		list-style: none;
		touch-action: manipulation;
		user-select: none;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #fff;
		display: block;
		padding: 1px 8px 3px;
		font-size: 13px;
		line-height: 18px;
		font-weight: 700;
		border-radius: 26px;
	}
	button.filter_bar_tag{
		list-style: none;
		touch-action: manipulation;
		user-select: none;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		display: block;
		padding: 1px 8px 3px;
		font-size: 14px;
		line-height: 18px;
		font-weight: 700;
		border-radius: 26px;
	}
	svg.tagIcon{
		width: 12;
		height: 12;
		fill: currentcolor;
		margin: 0 -4px 0 7px;
		vertical-align: -1px;
	}
	div.goods_list_wrap{
		padding:10px 0;
	}
	div#gname{
		padding:5px 0;
	}
	
	.input-file-button{
		    padding: 6px 25px;
		    background-color:#35c5f0;
		    border-radius: 4px;
		    color: white;
		    cursor: pointer;
		}
		.layout-navigation-search__input__text{
			display:inline;
		}
		.review-my-home__search__form__button{
			padding: 9px 25px;
			outline:0;
		    background-color:#35c5f0;
		    border-radius: 4px;
		    color: white;
		    cursor: pointer;
		    display:inline;
		}
		 #ptag{
			/* display:none;  */
			float: right;
			width:150px;
		} 
		
		button{
			border: 1px solid transparent;
		}
	
</style>
</head>

<body>

<div class="card-collection-form-logo-wrap"><a class="card-collection-form-logo" aria-label="오늘의집" href="http://localhost:9000/myhouse/index.do"><svg class="icon" width="147" height="50" viewBox="0 0 147 50" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path fill="#35C5F0" d="M38.42 0H8.35C4.03 0 0 4.02 0 8.33v33.34C0 45.98 4.03 50 8.35 50h33.41c4.33 0 8.35-4.02 8.35-8.33V8.33C50.11 4.02 46.1 0 41.76 0h-3.34z"></path><path fill="#FFF" d="M36.73 26.02a3.31 3.31 0 0 1-3.31-3.3 3.31 3.31 0 0 1 3.31-3.31 3.31 3.31 0 0 1 3.31 3.3 3.31 3.31 0 0 1-3.31 3.31zm-2.47 8.7h-19.1V22.08l9.55-6.65 5.47 3.81a7.35 7.35 0 0 0-.86 3.47 7.4 7.4 0 0 0 4.94 6.97v5.02zm2.47-19.4c-.84 0-1.65.14-2.4.4l-7.93-5.5a2.97 2.97 0 0 0-3.39 0l-11.86 8.24a2.96 2.96 0 0 0-1.27 2.43v16.13a2.96 2.96 0 0 0 2.97 2.95h23.72a2.96 2.96 0 0 0 2.96-2.96v-7.44a7.4 7.4 0 0 0 4.61-6.85 7.4 7.4 0 0 0-7.41-7.4z"></path><g fill="#000"><path d="M77.46 37.1h-5.72v-5.18a1.68 1.68 0 0 0-3.37 0v5.18h-5.72a1.68 1.68 0 1 0 0 3.36h14.8a1.68 1.68 0 1 0 0-3.36M66.19 18.53c0-5.32 2.43-6.12 3.87-6.12 1.45 0 3.88.8 3.88 6.12v.42c0 5.32-2.43 6.12-3.87 6.12-1.45 0-3.87-.8-3.87-6.12v-.42zm3.87 9.9c4.47 0 7.25-3.63 7.25-9.48v-.42c0-5.85-2.78-9.48-7.24-9.48s-7.25 3.63-7.25 9.48v.42c0 5.85 2.78 9.48 7.25 9.48zm29.67-8.52H81.64a1.69 1.69 0 1 0 0 3.37h18.08a1.68 1.68 0 1 0 0-3.37m-1.8 17.96c-8.22 2.13-10.97.92-11.78.3-.52-.4-.76-.94-.76-1.72v-1H97.3c.93 0 1.69-.76 1.69-1.69v-5.88c0-.93-.76-1.68-1.69-1.68H83.7a1.68 1.68 0 1 0 0 3.36h11.92v2.52H83.7c-.94 0-1.69.76-1.69 1.69v2.68c0 1.82.72 3.34 2.07 4.38 1.39 1.08 3.41 1.61 6.05 1.61 2.38 0 5.26-.44 8.63-1.3a1.68 1.68 0 0 0 1.21-2.06 1.69 1.69 0 0 0-2.05-1.2M84.55 17H97.1a1.69 1.69 0 1 0 0-3.37H86.24V9.62a1.68 1.68 0 0 0-3.38 0v5.7c0 .94.76 1.69 1.69 1.69m59.83-8.5c-.93 0-1.7.75-1.7 1.68v13.57a1.69 1.69 0 0 0 3.38 0V10.18c0-.93-.75-1.69-1.68-1.69m-8.52 14.82a1.69 1.69 0 0 0 2.16 1 1.68 1.68 0 0 0 1.01-2.15c-.05-.15-1.16-3.1-3.92-5.21l4.29-4.76a1.68 1.68 0 0 0 .28-1.8 1.69 1.69 0 0 0-1.54-1h-10.5a1.68 1.68 0 1 0 0 3.36h6.72l-3.1 3.44v.01l-4.88 5.4a1.68 1.68 0 0 0 1.26 2.81c.46 0 .92-.19 1.25-.55l3.96-4.4c2.1 1.48 3 3.8 3.01 3.85m5.88 15.34h-8.14a.95.95 0 0 1-.95-.94v-2.26h10.04v2.26c0 .52-.42.94-.95.94m2.64-10.85c-.93 0-1.69.75-1.69 1.68v2.6h-10.04v-2.6a1.68 1.68 0 0 0-3.37 0v8.23a4.32 4.32 0 0 0 4.32 4.3h8.14a4.32 4.32 0 0 0 4.32-4.3v-8.23c0-.93-.75-1.68-1.68-1.68m-34.1-15.39c2.57 0 2.7 4.91 2.7 5.9 0 .98-.13 5.88-2.7 5.88-2.57 0-2.7-4.9-2.7-5.89 0-.98.13-5.89 2.7-5.89m0 15.15a5.33 5.33 0 0 0 4.8-3.04c.83-1.56 1.27-3.7 1.27-6.22s-.44-4.65-1.27-6.2a5.33 5.33 0 0 0-4.8-3.05 5.33 5.33 0 0 0-4.8 3.04c-.84 1.56-1.28 3.7-1.28 6.21s.44 4.66 1.28 6.22a5.33 5.33 0 0 0 4.8 3.04"></path><path d="M120.65 8.5c-.93 0-1.69.75-1.69 1.68v20.6c-2.23.69-6.66 1.3-12.04 1.3h-2.57a1.68 1.68 0 1 0 0 3.37h2.57c3.07 0 8.37-.27 12.05-1.19v5.6a1.68 1.68 0 0 0 3.37 0V10.19c0-.93-.76-1.69-1.69-1.69"></path></g></g></svg></a></div>
	<form class="card-collection-form container" name="updatePhotoForm" action="update_photo_proc.do" method="post" enctype="multipart/form-data">
		<h1 class="card-collection-form__title">사진 수정</h1>
		<div class="card-collection-form__metadata">
		<input type="hidden" name="pno" value="${pvo.pno}">
			<div class="card-collection-form__metadata__left">
				<div class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control_selected" id="ptype" name="ptype">
						<option selected="" value="" disabled="">주거형태</option>
						<option value ="원룸&오피스텔" <c:if test="${pvo.ptype eq '원룸&오피스텔'}"> selected </c:if>>원룸&amp;오피스텔</option>
						<option value="아파트"  <c:if test="${pvo.ptype eq '아파트'}"> selected </c:if>>아파트</option>
						<option value="빌라&연립"  <c:if test="${pvo.ptype eq '빌라&연립'}"> selected</c:if>>빌라&amp;연립</option>
						<option value="단독주택"  <c:if test="${pvo.ptype eq '단독주택'}"> selected</c:if>>단독주택</option>
						<option value="사무공간"  <c:if test="${pvo.ptype eq '사무공간'}"> selected</c:if>>사무공간</option>
						<option value="상업공간"  <c:if test="${pvo.ptype eq '상업공간'}"> selected</c:if>>상업공간</option>
						<option value="기타"  <c:if test="${pvo.ptype eq'기타'}"> selected</c:if>>기타</option>
						</select>
						<span class="select-input__icon"><svg class="icon" width="10" height="10" style="fill: currentColor" preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
				</div>
				<div class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control_selected"  id="pstyle" name="pstyle">
						<option selected="" value="" disabled="">스타일</option>
						<option value="모던" <c:if test="${pvo.pstyle eq '모던'}"> selected </c:if>>모던</option>
						<option value="북유럽" <c:if test="${pvo.pstyle eq '북유럽'}"> selected </c:if>>북유럽</option>
						<option value="빈티지" <c:if test="${pvo.pstyle eq '빈티지'}"> selected </c:if>>빈티지</option>
						<option value="내추럴" <c:if test="${pvo.pstyle eq '내추럴'}"> selected </c:if>>내추럴</option>
						<option value="프로방스&로맨틱" <c:if test="${pvo.pstyle eq '프로방스&로맨틱'}"> selected </c:if>>프로방스&amp;로맨틱</option>
						<option value="클래식&앤틱" <c:if test="${pvo.pstyle eq '클래식&앤틱'}"> selected </c:if>>클래식&amp;앤틱</option>
						<option value="한국&아시아" <c:if test="${pvo.pstyle eq '한국&아시아'}"> selected </c:if>>한국&amp;아시아</option>
						<option value="유니크" <c:if test="${pvo.pstyle eq '유니크'}"> selected </c:if>>유니크</option>
						</select>
						<span class="select-input__icon"><svg class="icon" width="10" height="10" style="fill: currentColor"
							preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
				</div>
			</div>
		</div>
		<section class="card-collection-form__card-section">
			<div class="card-collection-form__card-section__overview-container">
				<div data-sticky-enabled="false" data-sticky-disabled="false"
					data-sticky-always="false" data-sticky-ignore="false"
					data-direction="top" data-offset="0"
					class="sticky-container card-collection-form__card-section__overview-wrap"
					style="position: sticky; top: 0px;">
					<div class="sticky-child card-collection-form__card-section__overview"
						style="position: relative; box-sizing: border-box; height: 300px;">
						<ul class="card-collection-form__card-overview"></ul>
					</div>
				</div>
			</div>
			<div class="card-collection-form__card-section__content">
				<ol class="card-collection-form__card-section__list">
					<li class="card-collection-form__card-section__list__item">
						<div class="card-collection-form__card-item">
							<div class="card-collection-form__card-item__image-wrap" draggable="true">
							<label class="card-collection-form__card-image-upload card-collection-form__card-item__image" style="display:none;">
								<input type="file" class="hidden_input" id="imageSelector" name="file1" accept="image/jpeg, image/jpg, image/png">	
								<span class="content">
								<svg class="sicon" width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet">
								<path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path>
								</svg>
								<span class="ptext">사진 올리기<br></span></span>
							</label>
							
							<div class="card-collection-form__card-image card-collection-form__card-item__image" style="padding-bottom: 66.5333%;">
								<img class="card-collection-form__card-image__image" src="http://localhost:9000/myhouse/resources/upload/${pvo.photo_simage }">
								<div class="card-collection-form__card-image__actions">
									<button class="card-collection-form__card-image__action" type="button" aria-label="삭제" title="삭제">
										<svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M6 19V7h12v12a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2zM19 4v2H5V4h3.5l1-1h5l1 1H19z"></path></svg>
									</button>
								</div>
							</div>
								
							</div>
							
							<div class="card-collection-form__card-item__content">
								<div class="card-collection-form__card-item__content__row">
									<textarea placeholder="사진에 대해서 설명해주세요."
										class="form-control text-area-input" id="pcontent" name="pcontent" style="height: 200px;">${pvo.pcontent }</textarea>
								</div>
								<div class="card-collection-form__card-item__content__row">
									<!-- <div class="keyword-input">
										<button id='tag_btn' class='tag_btn' type='button'>
										상품 태그하기
										</button> -->
									
									<div id="search_btn"class="layout-navigation-search__combobox" role="combobox"
									aria-haspopup="listbox" aria-expanded="false">
										<div class="layout-navigation-search__input">
											<input type="text" class="layout-navigation-search__input__text" value=""
												autocomplete="off" size="1" id="inp_sch"
												aria-autocomplete="list" placeholder="스토어 물품추가"
												aria-label="스위트홈 통합검색">
											<button class="review-my-home__search__form__button" type="button" id="btn_sch">검색</button>
											<svg class="layout-navigation-search__input__icon" width="24"
												height="24" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2"
												preserveAspectRatio="xMidYMid meet">
													<path d="M22 22l-5-5"></path>
													<circle cx="11" cy="11" r="8"></circle></svg>
												<input type="hidden" id="ptag" name="ptag" value="${pvo.ptag}">
										</div>
									</div>
									<div class="goods_list_wrap">
											<ul id="goods_list">
											 <c:forEach var="tag" items="${taglist}"> 
													<li><input type="hidden" id="tag_gno" value="${tag.gno}">
												<button id='gname' class='filter_bar_tag' type='button'>${tag.ititle}
														<svg class='tagIcon' width='12' height='12' viewBox='0 0 12 12' fill='currentColor' preserveAspectRatio='xMidYMid meet'>"
															<path d='M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z'></path>"
														</svg>
													</button>
												</li>
											</c:forEach>
											</ul>
										</div>
								</div>
							</div>
						</div></li>
				</ol>
			</div>
		</section>

		<div data-sticky-enabled="true" data-sticky-disabled="false"
			data-sticky-always="true" data-sticky-ignore="false"
			data-direction="bottom" data-offset="0"
			class="sticky-container card-collection-form__footer-wrap"
			style="height: 71px;">
			<div class="sticky-child card-collection-form__footer"
				style="position: fixed; left: 0px; right: 0px; bottom: 0px;">
				<div class="card-collection-form__footer__left"></div>
				<div class="card-collection-form__footer__right">
					<button type="button" class="button button--color-blue button--size-50 button--shape-4 card-collection-form__footer__submit"
						id="btnUploadPhoto">올리기</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>