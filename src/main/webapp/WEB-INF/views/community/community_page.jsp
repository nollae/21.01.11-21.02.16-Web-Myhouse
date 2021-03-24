<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
	$(document).ready(function(){
		$("form.comment_feed_item_reply_no_comment").hide();
		$("form.comment_feed_item_reply").hide();
		$("form.comment_feed_item_comment_reply").hide();
		
		$("button#card_scrap").click(function(){
			if ($(this).hasClass("card_scrap")){
				$(this).removeClass("card_scrap");
				$(this).addClass("card_scrap_active");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button' id='taost-none2'><div class='toast-message__footer__close'>"
				output +="<svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output +="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output +="<div class='toast-message__body'>스크랩했습니다</div>"
				output +="<a class='button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button' href='/users/11910649/collections'>스크랩북 보기</a>"
				output +="<button class='button button--color-blue button--size-40 button--shape-4 toast-message__button toast-message__button--last'>폴더에 담기</button></div>"
				if($('div.toast-message').length == 1){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(3800);
			}else{
				$(this).removeClass("card_scrap_active");
				$(this).addClass("card_scrap");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
				output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
				if($('div.toast-message').length == 1){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(3800);
			} 
		});
		
		$(document).on("mouseleave","div.pop",function(){
			$('div.pop').remove();
		});
		
		$("button#likes_icon_btn").click(function(){
			var count = parseInt($(this).parent().children('span.comment_feed_item_footer_likes_count').text());
			var cno = $(this).parent().parent().children('.cno').val();
			if ($(this).children("svg").hasClass("badge")){
				$(this).children("svg").removeClass("badge");
				$(this).children("svg").addClass("badge_liked");
				$(this).parent().parent().children("button#likes_btn").removeClass("comment_feed_item_footer_likes_btn");
				$(this).parent().parent().children("button#likes_btn").addClass("comment_feed_item_footer_likes_btn_active");
				$(this).parent().parent().children("button#likes_btn").html("좋아요취소");
				if(count==0){
					$(this).parent().removeClass('comment_feed_item_footer_likes_zero');
					$(this).parent().addClass('comment_feed_item_footer_likes');
				}
				$(this).parent().children('span.comment_feed_item_footer_likes_count').text(count+1);
				
				$.ajax({
					url :"comment_like_proc.do?cno="+cno,
						success:function(result){
					}
				});
				
			}else{
				$(this).children("svg").removeClass("badge_liked");
				$(this).children("svg").addClass("badge");
				$(this).parent().parent().children("button#likes_btn").removeClass("comment_feed_item_footer_likes_btn_active");
				$(this).parent().parent().children("button#likes_btn").addClass("comment_feed_item_footer_likes_btn");
				$(this).parent().parent().children("button#likes_btn").html("좋아요");
				if(count==1){
					$(this).parent().removeClass('comment_feed_item_footer_likes');
					$(this).parent().addClass('comment_feed_item_footer_likes_zero');
				}
				$(this).parent().children('span.comment_feed_item_footer_likes_count').text(count-1);
				
				$.ajax({
					url :"comment_like_cancel_proc.do?cno="+cno,
						success:function(result){
					}
				});
			}
		});
		
		$("button#likes_btn").click(function(){
			var cno = $(this).parent().children('.cno').val();
			var count = parseInt($(this).parent().children().children('span.comment_feed_item_footer_likes_count').text());
			if ($(this).parent().children().children().children().hasClass("badge")){
				$(this).parent().children().children().children().removeClass("badge");
				$(this).parent().children().children().children().addClass("badge_liked");
				$(this).removeClass("comment_feed_item_footer_likes_btn");
				$(this).addClass("comment_feed_item_footer_likes_btn_active");
				$(this).html("좋아요취소");
				if(count==0){
					$(this).parent().children('span').removeClass('comment_feed_item_footer_likes_zero');
					$(this).parent().children('span').addClass('comment_feed_item_footer_likes');
				}
				$(this).parent().children().children('span.comment_feed_item_footer_likes_count').text(count+1);
				
				$.ajax({
					url :"comment_like_proc.do?cno="+cno,
						success:function(result){
					}
				});
				
			}else{
				$(this).parent().children().children().children().removeClass("badge_liked");
				$(this).parent().children().children().children().addClass("badge");
				$(this).removeClass("comment_feed_item_footer_likes_btn_active");
				$(this).addClass("comment_feed_item_footer_likes_btn");
				$(this).html("좋아요");
				if(count==1){
					$(this).parent().children('span').addClass('comment_feed_item_footer_likes_zero');
					$(this).parent().children('span').removeClass('comment_feed_item_footer_likes');
				}
				$(this).parent().children().children('span.comment_feed_item_footer_likes_count').text(count-1);
				
				$.ajax({
					url :"comment_like_cancel_proc.do?cno="+cno,
						success:function(result){
					}
				});
			} 
		});
		
		$("button#reply").click(function(){
			if($(this).parent().parent().children('.comment_feed_reply_list').length == 0){
				if($(this).parent().parent().children('form.comment_feed_item_reply_no_comment').css("display") == "none"){
					$('form.comment_feed_item_reply').css("display","none");
					$('form.comment_feed_item_reply_no_comment').css("display","none");
					$('form.comment_feed_item_comment_reply').css("display","none");
					$(this).parent().parent().children('form.comment_feed_item_reply_no_comment').show();
					$(".comment_content_input_text_mention").text($(this).parent().parent().children().children().children().attr('alt'));
				} else {
					$(this).parent().parent().children('form.comment_feed_item_reply_no_comment').css("display","none");
				}
			}else{
				if($(this).parent().parent().children('form.comment_feed_item_reply').css("display") == "none"){
					$('form.comment_feed_item_reply').css("display","none");
					$('form.comment_feed_item_reply_no_comment').css("display","none");
					$('form.comment_feed_item_comment_reply').css("display","none");
					$(this).parent().parent().children('form.comment_feed_item_reply').show();
					$(".comment_content_input_text_mention").text($(this).parent().parent().children().children().children().attr('alt'));
				} else {
					$(this).parent().parent().children('form.comment_feed_item_reply').css("display","none");
				}
			}
		});
		
		$("button#reply_btn").click(function(){
			$('form.comment_feed_item_reply').css("display","none");
			$('form.comment_feed_item_reply_no_comment').css("display","none");
			$('form.comment_feed_item_comment_reply').css("display","none");
			if($(this).parent().parent().parent().parent().parent().parent().children('form.comment_feed_item_comment_reply').css("display") == "none"){
				$(this).parent().parent().parent().parent().parent().parent().children('form.comment_feed_item_comment_reply').show();
				$(".comment_content_input_text_mention").text($(this).parent().parent().children().children().children().attr('alt'));
			} else {
				$(this).parent().parent().parent().parent().parent().parent().children('form.comment_feed_item_comment_reply').hide();
			}
		});
		
		$("button#btn_like").click(function(){
			var count = parseInt($(this).children('span.count').text());
			if ($(this).hasClass("btn_action")){
				$(this).removeClass("btn_action");
				$(this).addClass("btn_action_active");
				$(this).children('span.count').text(count+1);
				$.ajax({
						url :"like_proc.do?pno=${pvo.pno}",
						success:function(result){
							if(result=="") {
								location.href="http://localhost:9000/myhouse/login.do";
							}
						}
				});
				
			}else{
				$(this).removeClass("btn_action_active");
				$(this).addClass("btn_action");
				$(this).children('span.count').text(count-1);
				
				$.ajax({
					url :"like_cancel_proc.do?pno=${pvo.pno}",
					success:function(result){
					}
				});
			} 
		});
		
		$("button#btn_scrap").click(function(){
			var count = parseInt($(this).children('span.count').text());
			if ($(this).hasClass("btn_action")){
				$(this).removeClass("btn_action");
				$(this).addClass("btn_action_active");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button' id='taost-none2'><div class='toast-message__footer__close'>"
				output +="<svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output +="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output +="<div class='toast-message__body'>스크랩했습니다</div>"
				output +="<a class='button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button' href='/users/11910649/collections'>스크랩북 보기</a>"
				output +="<button class='button button--color-blue button--size-40 button--shape-4 toast-message__button toast-message__button--last'>폴더에 담기</button></div>"
				if($('div.toast-message').length == 1){
					$('div.toast-message').first().remove();
				}
				$(this).children('span.count').text(count+1);
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
				
				$.ajax({
					url :"scrap_proc.do?pno=${pvo.pno}",
					success:function(result){
						if(result==""){
							location.href="http://localhost:9000/myhouse/login.do";
						}
					}
				});
				
			}else{
				$(this).removeClass("btn_action_active");
				$(this).addClass("btn_action");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
				output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
				if($('div.toast-message').length == 1){
					$('div.toast-message').first().remove();
				}
				$(this).children('span.count').text(count-1);
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
				
				$.ajax({
					url :"scrap_cancel_proc.do?pno=${pvo.pno}",
					success:function(result){
					}
				});
			} 
		});
		
		$(document).on("click","button.toast-message__footer",function(){
			$(this).parent().remove();
		});
		
		
		$("button#btn_follow").click(function(){
			if ($(this).hasClass("card_detail_writer_follow")){
				$(this).removeClass("card_detail_writer_follow");
				$(this).addClass("card_detail_writer_following");
				$(this).html("팔로잉");
				$.ajax({
					url :"follow_proc.do?w_email=${pvo.email}",
					success:function(result){
						if(result==""){
							location.href="http://localhost:9000/myhouse/login.do";
						}
					}
				});
				
			}else{
				$(this).removeClass("card_detail_writer_following");
				$(this).addClass("card_detail_writer_follow");
				$(this).html("팔로우");
				
				$.ajax({
					url :"follow_cancel_proc.do?w_email=${pvo.email}",
					success:function(result){
						alert(result);
					}
				});
			} 
		});
		
		$('.comment_content_input_text').keydown(function(){
			if($(this).text()!=""){
				$("button.feed_form_submit").removeAttr("disabled");
				$("button.feed_form_submit").addClass("visible");
			}else{
				$("button.feed_form_submit").attr("disabled");
				$("button.feed_form_submit").removeClass("visible");
			}
		});
		
		
		$(".comment_btn").click(function(){
			var pno = "${pvo.pno}";
			var content =  $('.comment_content_input_text').html();
			$.ajax({
				url :"comment_write_proc.do?pno="+pno+"&content="+encodeURI(content),
				success:function(result){
					if(result==""){
						location.href="http://localhost:9000/myhouse/login.do";
					}else{
						alert("댓글이 정상적으로 등록되었습니다.")
						location.href="http://localhost:9000/myhouse/community_page.do?pno="+pno;
					}
				}
					
			});
		});
		
		$(".comment_reply_btn").click(function(){
			var pno = "${pvo.pno}";
			var tag= $('.comment_content_input_text_mention').html();
			var html = $(this).parent().parent().children().children().children().html();
			const content = html.split("&nbsp;");
			var cgroup =$(this).parent().parent().parent().parent().children('footer').children('.cno').val();
			$.ajax({
				url :"comment_reply_write_proc.do?pno="+pno+"&tag="+tag+"&content="+encodeURI(content[1])+"&cgroup="+cgroup,
				success:function(result){
					if(result==""){
						location.href="http://localhost:9000/myhouse/login.do";
					}else{
						alert("댓글이 정상적으로 등록되었습니다.")
						location.href="http://localhost:9000/myhouse/community_page.do?pno="+pno;
					}
				}
					
			});
		});
			
		$(document).on("click","button#comment_del",function(){
			var cno =$(this).parent().children('.cno').val();
			var rcount = $(this).parent().children('.rcount').val();
			var choice = confirm("댓글을 삭제하시겠습니까? 삭제한 댓글은 되돌릴 수 없습니다.");
			if (rcount > 0){
			 if(choice){
					$.ajax({
						url :"comment_update_proc.do?cno="+cno,
						success:function(result){
							location.href="http://localhost:9000/myhouse/community_page.do?pno=${pvo.pno}"
						}
					});
			 }
			}else{
			 if(choice){
					$.ajax({
						url :"comment_delete_proc.do?cno="+cno,
						success:function(result){
							location.href="http://localhost:9000/myhouse/community_page.do?pno=${pvo.pno}"
						}
					});
			 }
			}
		});
		
		$(document).on("click","button#reply_del",function(){
			var cno=$(this).parent().children('.cno').val();
			var m_cno= $(this).parent().parent().parent().parent().parent().parent().children('footer').children('.cno').val();
			var rcount= $(this).parent().parent().parent().parent().parent().parent().children('footer').children('.rcount').val();
			var choice = confirm("댓글을 삭제하시겠습니까? 삭제한 댓글은 되돌릴 수 없습니다.");
			if(rcount == 1){
				$.ajax({
					url :"comment_delete_proc.do?cno="+m_cno,
					success:function(result){
					}
				});
			}
			 if(choice){
					$.ajax({
						url :"comment_delete_proc.do?cno="+cno,
						success:function(result){
							location.href="http://localhost:9000/myhouse/community_page.do?pno=${pvo.pno}"
						}
					});
			 }
		});
		
		
		$(".production_tag_scoller_item").mouseover(function(){
			var gname = $(this).children().children().children("img").attr("alt");
			var gimg = $(this).children().children().children("img").attr("src");
			var company = $(this).children().children().children(".company").val();
			var gprice = $(this).children().children().children(".price").val();
			$('.pop').remove();
			$(this).addClass('tag_active');
			var output="<div class='pop'><div class='popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-1' data-popout='true'>"
				output += "<div class='_3nN5n open open-active'><div class='_2TAbe _1__Mp tag-item-content'><a class='tag-item-content__link' axis='1' direction='0,1' overflown='false,false' index='0' href='/productions/106089/selling'>"
				output += "<div class='_20T1P tag-item-content__item'><div class='asUT1'><picture>"
				output += "<source type='image/webp' src='https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156654428209403860.jpg?w=256&h=256&c=c'>"
				output += "<img class='_2TSZD' src='"+gimg+"'>"
				output += "</picture></div><div class='_3bqx7'><div class='_389Yp'>"+company+"</div><div class='_2WPGa'>"+gname+"</div>"
				output += "<div class='_2WAbO'>"+gprice+"원</div></div><div class='_35DZ7'><div class='tag-item-content__icon'>"
				output += "<svg class='tag_icon' width='1em' height='1em' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output += "<path fill='currentColor' fill-rule='nonzero' d='M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z'></path></svg></div></div></div></a></div></div></div></div>"
			$(".tag_detail").append(output);
		});
		
		$(".production_tag_scoller_item").mouseleave(function(){
			$(this).removeClass('tag_active');
			$('.pop').hide(1800);
		}); 
		
		$('.tag_detail').mouseover(function(){
			$('.pop').stop();
		});
		
		$('button.card-detail-edit-menu__button').click(function(){
			if($(this).parent().children('div').children('div.popout').css('display')=='block')
				$(this).parent().children('div').children('div.popout').css('display','none');
			else $(this).parent().children('div').children('div.popout').css('display','');
		});
		
		$('button.card-detail-edit-menu__item').click(function(){
			var choice = confirm("정말로 삭제하시겠습니까?");
			if(choice){
				$.ajax({
					url :"photo_delete_proc.do?pno=${pvo.pno}",
					success:function(result){
						location.href="http://localhost:9000/myhouse/community_index.do"
					}
				});
			}
		});
		
		var swiper = new Swiper('.swiper-container', {
		      slidesPerView: 6,
		      direction: getDirection(),
		      navigation: {
		        nextEl: '.swiper-button-next',
		        prevEl: '.swiper-button-prev',
		      },
		      on: {
		        resize: function () {
		          swiper.changeDirection(getDirection());
		        }
		      }
		    });

		    function getDirection() {
		      var windowWidth = window.innerWidth;
		      var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';

		      return direction;
		    }
		
	});
</script>
<style>
	div.card_detail{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		position: relative;
	}
	
	div.content{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: calc(100% - 120px);
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		width:1100px;
	}
	
	div.row{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
	}
	
	div.card_detail_content{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 66.6666666667%;
		max-width: 66.6666666667%;
		padding-right: 10px;
		padding-left: 10px;
		padding-bottom: 40px;
	}
	
	header.card_detail_header{
		box-sizing: border-box;
		position: relative;
		display: flex;
		-webkit-box-pack: justify;
		justify-content: space-between;
		color: #757575;
		margin: 40px 0 30px;
		font-size: 15px;
		line-height: 21px;
		border: none;
	}
	div.card_detail_list{
		color: #757575;
		font-size: 15px;
		line-height: 21px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
	}
	span.header_prop{
		display: inline-block;
	}
	
	span.header_prop:not(:last-child):after {
	    content: "|";
	    margin: 0 5px 0 2px;
	    color: #bdbdbd;
	}
	
	article.card_detail_card{
		margin: 0 0 60px;
	}
	div.card_detail_img_wrap{
		padding: 0; margin: 0;
	}
	

	div.card_detail_img{
		margin: 0;
		padding: 0;
		font-size: 0;
		position: relative;
		display: block;
		background-color: #ededed;
		overflow: hidden;
	}
	div.card_img_content{
		padding-bottom: 100%;
	}
	img.card_img{
		border: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
	}
	button.card_scrap{
		position: absolute;
		border: none;
		background: none;
		color: rgba(0,0,0,.3);
		transition: color .1s,opacity .1s;
		right: 20px;
		bottom: 20px;
		opacity: 0;
	}
	
	button.card_scrap_active{
		position: absolute;
		border: none;
		background: none;
		transition: color .1s,opacity .1s;
		right: 20px;
		bottom: 20px;
		color: #35c5f0;
		opacity: 0;
	}
	
	div.card_detail_img_wrap:active .card_detail_img .card_img_tag, 
	div.card_detail_img_wrap:hover .card_detail_img .card_img_tag,
	div.card_detail_img .card_img_tag_active,
	div.card_detail_img_wrap:active .card_scrap, div.card_detail_img_wrap:hover .card_scrap,
	div.card_detail_img_wrap:active .card_scrap_active, div.card_detail_img_wrap:hover .card_scrap_active {
    	opacity: 1;
	}
	
	svg.comm_icon{
		cursor: pointer;
		font-size: inherit;
		-webkit-tap-highlight-color: transparent;
		width: 48px;
		height: 48px;
	}
	div.card_img_tag{
		margin: 0;
		padding: 0;
		display: inline-block;
		position: absolute;
		font-size: 0;
		line-height: 0;
		transition: opacity .1s;
		opacity: 0;
		transform: translate(-50%,-50%);
		top: 35.2657%;
		left: 33.6957%;
	}
	
	button.tag{
		display: inline-block;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		font-size: 0;
		cursor: pointer;
	}
	
	svg.tag{
		width: 1em;
		height: 1em;
		-webkit-tap-highlight-color: transparent;
		font-size: 24px;
		color: rgba(53,197,240,.8);
		transition: color .1s;
	}
	
	div.card_detail_production_list{
		padding: 0;
		margin: 10px 0 -10px;
	}
	
	p.card_detail_description{
		padding: 0;
		display: block;
		font-size: 15px;
		line-height: 28px;
		color: #424242;
		white-space: pre-line;
		overflow-wrap: break-word;
		margin: 30px 0;
	}
	
	footer.card_detail_footer{
		box-sizing: border-box;
		position: relative;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
		margin: 0;
		padding: 0;
		border: none;
	}
	
	span.footer_prop:not(:last-child):after{
		 content: "·";
		 margin: 0 7px 0 4px;
		 color: #bdbdbd;
		 font-size: 13px;
		 font-weight: 400;
	}
	
	p.footer_metadata{
		margin: 0;
		padding: 0;
		color: #757575;
		font-size: 13px;
		line-height: 19px;
	}
	
	span.footer_prop{
		display: inline-block;
		margin: 0;
		padding: 0;
		font: inherit;
		color: inherit;
		background: none;
		border: none;
	
	}
	
	div.comment_section{
		border-top: 1px solid #ededed;
		margin: 60px 0 0;
		padding: 60px 0 0;
	}
	
	h1.comment_feed_header{
		padding: 0;
		font-weight: 700;
		color: #000;
		margin: 10px 0 20px;
		font-size: 18px;
	}
	span.comment_feed_count{
		font-weight: 700;
		font-size: 18px;
		color: #35c5f0;
	}
	
	form.comment_feed_form{
		margin: 0;
		padding: 0;
		display: flex;
		position: relative;
		margin-bottom: 30px;
	}
	
	div.comment_feed_form_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	img.comment_feed_form_user_img{
		border: 0;
		width: 30px;
		height: 30px;
		margin: 5px 10px 0 0;
		border-radius: 100%;
	}
	
	div.comment_feed_form_input{
		margin: 0;
		padding: 0;
		display: flex;
		position: relative;
		max-width: 100%;
		border: 1px solid #dbdbdb;
		border-radius: 4px;
		-webkit-box-flex: 1;
		flex: 1 1 0px;
		min-width: 0;
	}
	
	div.comment_feed_form_content{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 0px;
		min-width: 0;
	}
	
	div.comment_content_input{
		margin: 0;
		padding: 0;
		position: relative;
	}
	
	div.comment_content_input_text{
		display: block;
		width: 100%;
		min-height: 38px;
		border: none;
		background: none;
		color: #424242;
		margin: 0;
		padding: 8px 15px 9px;
		font-family: inherit;
		font-size: 15px;
		line-height: 1.4;
		resize: none;
		overflow: hidden;
		box-sizing: border-box;
	}
	
	div.comment_feed_form_actions{
		display: flex;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		padding: 7px 15px 7px 0;
		margin: 0 -7.5px;
		font-size: 0;
	}
	
	button.feed_form_submit{
		touch-action: manipulation;
		margin: 0 7.5px;
		padding: 0;
		border: none;
		background: none;
		transition: opacity .2s;
		font-size: 15px;
		font-weight: 700;
		cursor: default;
		color: #a3e4f8;
	}
	
	button.feed_form_submit.visible{
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		margin: 0 7.5px;
		padding: 0;
		border: none;
		background: none;
		transition: opacity .2s;
		color: #35c5f0;
		font-size: 15px;
		font-weight: 700;
	}
	ul.comment_feed_list,li.comment_feed_list_item{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		list-style: none;
		margin-top: 20px;
	}
	
	article.comment_feed_item{
		padding-left: 40px;
		margin-bottom: 30px;
	}
	
	p.comment_feed_item_content{
		color: #424242;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		padding: 0;
		position: relative;
		margin: -4px 0 4px;
		min-width: 0;
		max-width: 100%;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
	}
	
	a.comment_feed_author{
		list-style: none;
		overflow-wrap: break-word;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		font-size: 0;
		display: inline;
		margin: 0 10px 0 0;
		line-height: inherit;
	}
	
	a.comment_feed_author:active, 
	a.comment_feed_author:focus, a.comment_feed_author:hover {
 	   text-decoration: underline;
	}
	
	img.comment_feed_author_img{
		border: none;
		position: absolute;
		width: 30px;
		height: 30px;
		left: -40px;
		margin-right: 10px;
		border-radius: 100%;
		background-color: #dbdbdb;
		top: 5px;
	}
	
	span.comment_feed_author_name{
		border:none;
		color:#424242;
		font-weight:700;
		font-size: 15px;
	}
	
	span.comment_feed_content{
		color: #424242;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		-webkit-tap-highlight-color: transparent;
		white-space: pre-line;
	}
	
	span.removed{
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		-webkit-tap-highlight-color: transparent;
		white-space: pre-line;
		color: #bdbdbd;
	}
	
	span.removed svg{
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		white-space: pre-line;
		color: #bdbdbd;
		-webkit-tap-highlight-color: transparent;
		display: inline-block;
		width: 14px;
		height: 14px;
		margin-right: 5px;
	}
	
	span.comment_feed_item_content_content{
		color: #424242;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		-webkit-tap-highlight-color: transparent;
		white-space: pre-line;
	}
	
	span.comment_feed_item_content_content a:hover {
    	color: #a3e4f8;
	}
	
	footer.comment_feed_item_footer{
		box-sizing: border-box;
		position: relative;
		display: block;
		color: #757575;
		font-size: 13px;
		font-weight: 700;
	}
	footer.comment_feed_item_footer> ::after {
	    display: inline-block;
    	color: rgb(189, 189, 189);
    	content: "·";
    	font-size: 13px;
    	font-weight: 400;
    	margin: 0px 2px;
	}
	
	footer.comment_feed_item_footer>.comment_feed_item_footer_likes_zero::after{
		display:none;
	}
	
	time.comment_feed_item_footer_time{
		list-style: none;
		color: #757575;
		font-size: 13px;
		font-weight: 400;
	}
	
	span.comment_feed_item_footer_likes,
	span.comment_feed_item_footer_likes_zero{
		font-weight: 700;
	}
	
	button.comment_feed_item_footer_likes_icon{
		cursor: pointer;
		touch-action: manipulation;
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-weight: inherit;
		font-family: inherit;
	}
	
	footer.comment_feed_item_footer>a:active, footer.comment_feed_item_footer>a:focus,
	footer.comment_feed_item_footer>a:hover, footer.comment_feed_item_footer>button:active,
	footer.comment_feed_item_footer>button:focus, footer.comment_feed_item_footer>button:hover {
   		text-decoration: underline;
	}
	
	svg.badge,svg.badge_liked{
		width: 15;
		height: 14;
		vertical-align: -2px;
		margin-right: 3px;
	}
	
	
	svg.badge>path{
		stroke: #757575;
		stroke-width: 1.1px;
		fill: transparent;
		transition: stroke .1s,fill .1s;
	}
	svg.badge_liked>path{
		stroke-width: 1.1px;
		transition: stroke .1s,fill .1s;
		stroke: #35c5f0;
		fill: #35c5f0;
	}
	
	span.comment_feed_item_footer_likes_count{
		list-style: none;
		color: #757575;
		font-size: 13px;
		font-weight: 700;
	}
	
	span.comment_feed_item_footer_likes_zero>span.comment_feed_item_footer_likes_count{
		display: none;
	}
	button.comment_feed_item_footer_likes_btn,
	button.comment_feed_item_footer_reply_btn{
		cursor: pointer;
		touch-action: manipulation;
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-weight: 900;
		font-family: inherit;
	}
	button.comment_feed_item_footer_del_btn{
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		background: none;
		border: none;
		padding: 0;
		font-size: 13px;
		font-family: inherit;
		font-weight: 400;
		color: #bdbdbd;
	}
	
	button.comment_feed_item_footer_likes_btn_active{
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-family: inherit;
		font-weight: 400;
	}
	
	div.comment_feed_reply_list{
		margin: 0;
		padding: 0;
	}
	
	ul.comment_feed_reply_list{
		margin-top: 20px;
	}
	
	li.comment_feed_reply_item{
		margin: 0;
		padding: 0;
	}
	
	article.comment_feed__item{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		margin-bottom: 10px;
		padding: 20px 20px 20px 61px;
		border-radius: 8px;
		background-color: #f7f8fa;
	}
	a.comment_tag{
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		list-style: none;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		white-space: pre-line;
		-webkit-tap-highlight-color: transparent;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		color: #35c5f0;
	}
	
	div.card_detail_sidebar{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 33.3333333333%;
		max-width: 33.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
	}
	
	div.card_detail_sidebar_wrap{
		margin: 0;
		padding: 0;
		position: relative;
		min-height: 100%;
		padding-left: 40px;
		margin-left: 20px;
		border-left: 1px solid #ededed;
		display: block;
	}
	
	
	div.sticky_container_card_detail_sidebar{
		margin: 0;
		padding: 0;
		position: sticky;
		top: 81px;
	}
	
	div.sticky_container_card_detail_sidebar_inner{
		-webkit-box-orient: vertical;
		flex-direction: column;
		min-height: 600px;
		padding: 40px 0;
		display: flex;
		position: relative;
		box-sizing: border-box;
		height: 690.328px;
	}
	
	div.sticky_container_card_detail_sidebar_action_list{
		padding: 0;
		display: flex;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0 -5px 40px;
	}
	
	button.btn_action,button.btn_action_active{
		touch-action: manipulation;
		user-select: none;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		font-weight: 700;
		text-decoration: none;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		padding: 11px 10px;
		font-size: 17px;
		line-height: 26px;
		border-radius: 8px;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		position: relative;
		display: block;
		margin: 0 5px;
		text-align: center;
		z-index: 2;
	}
	

	button.btn_action:active, button.btn_action:hover {
	    background-color: #f0f0f0;
	    border-color: #f0f0f0;
	}
	
	button.btn_action>svg.actionIcon{
		width: 24;
		height: 24;
		margin: 0 0 -2px;
		vertical-align: -4px;
		fill: transparent;
		stroke: #424242;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
	}
	
	button.btn_action_active>svg.actionIcon{
		width: 24;
		height: 24;
		-webkit-tap-highlight-color: transparent;
		margin: 0 0 -2px;
		vertical-align: -4px;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
		fill: #35c5f0;
		stroke: transparent;
	}
	
	
	span.count{
		text-align: center;
		margin-left: 8px;
		font-size: 15px;
		font-weight: 400;
		color: #424242;
	}
	
	div.card_detail_sidebar_content{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
	}
	
	div.card_detail_write{
		margin: 0;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		position: relative;
		padding: 0 0 0 60px;
		min-height: 50px;
	}
	
	div.card_detail_writer_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		min-width: 0;
	}
	
	a.card_datail_writer_link{
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		display: inline;
		color: #424242;
		font-size: 15px;
		font-weight: 700;
		line-height: 21px;
		transition: opacity .1s;
	}
	
	a.card_detail_writer_link:active,
	a.card_detail_writer_link:hover {
   		opacity: .5;
	}
	
	img.card_detail_writer_img{
		line-height: 21px;
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 50px;
		height: 50px;
		border-radius: 100%;
		background-color: #ededed;
	}
	span.card_detail_writer_name{
		color: #424242;
		font-size: 15px;
		font-weight: 700;
		line-height: 21px;
		border: none;
		display: inline-block;
		margin: -3px 0 0;
	}
	p.card_detail_writer_intro{
		margin: 0;
		padding: 0;
		display: block;
		color: #757575;
		font-size: 12px;
		line-height: 18px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	button.card_detail_writer_follow,button.card_detail_writer_following{
		touch-action: manipulation;
		user-select: none;
		display: inline-block;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		border-radius: 4px;
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		padding: 4px 10px;
		line-height: 20px;
		font-weight: 700;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin-left: 6px;
		font-size: 12px;
	}
	
	button.card_detail_writer_following{
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #fff;
	}
	
	div.card_detail_card_list{
		padding: 0;
		position: relative;
		margin: 20px 0;
	}
	
	ul.card_detail_card_list{
		padding: 0;
		list-style: none;
		display: flex;
		flex-wrap: wrap;
		margin: -1px;
	}
	li.card_detail_card_list_item{
		margin: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		width: 50%;
		padding: 1px;
		box-sizing: border-box;
	}
	a.card_detail_card_list_item_link{
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: relative;
		display: block;
		padding-top: 100%;
		background-color: #ededed;
		overflow: hidden;
		border-top-left-radius: 6px;
	}
	img.card_detail_card_list_item_img{
		border: none;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform .2s;
	}
	
	a.card_detail_card_list_item_link:active img.card_detail_card_list_item_img,
	a.card_detail_card_list_item_link:hover img.card_detail_card_list_item_img {
  	  transform: translate(-50%,-50%) scale(1.05);
	}
	
	a.card_detail_card_list_more{
		position: absolute;
		right: 0;
		bottom: 12px;
		width: 80px;
		padding: 6px 0 7px;
		line-height: 19px;
		font-size: 15px;
		font-weight: 700;
		color: #fff;
		background-color: rgba(0,0,0,.5);
		text-align: center;
		transition: background-color .1s;
	}
	
	a.card_detail_card_list_more:hover{
		background-color: rgba(0,0,0,.8);
	}
	
	form.comment_feed_item_reply,
	form.comment_feed_item_comment_reply{
		margin: 0;
		display: flex;
		position: relative;
		padding: 10px 0 0 18px;
		margin-left: 40px;
		border: none;
		margin-bottom: 30px;
	}
	
	form.comment_feed_item_reply_no_comment{
		margin: 0;
		display: flex;
		position: relative;
		padding: 10px 0 0 18px;
		margin-left:0px;
		border: none;
		margin-bottom: 30px;
	}
	
	div.comment_feed_form_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	div.comment_feed_form_user>img{
		border: 0;
		width: 30px;
		height: 30px;
		margin: 5px 10px 0 0;
		border-radius: 100%;
	}
	a.comment_content_input_text_mention{
		touch-action: manipulation;
		color: #35c5f0;
		font-weight: 700;
		text-decoration: underline;
		cursor: text;
	}
		/* 스크랩 알림창 */
   .toast-message:last-of-type {
       padding-bottom: env(safe-area-inset-bottom);
   }
   .toast-message {
       display: flex;
       -webkit-box-pack: justify;
       justify-content: space-between;
       -webkit-box-align: center;
       align-items: center;
       width: 100%;
       height: 80px;
       border-radius: 8px;
       background-color: #fff;
       color: #424242;
       font-size: 15px;
       line-height: 1.3;
       transition: opacity .3s,transform .3s;
       box-shadow: 0 0 20px 0 rgba(0,0,0,.26);
       margin-bottom:10px;
   }
   .toast-message__footer {
      -webkit-box-flex: 0;
      flex:0 0 52px;
      text-align: center;
      height: 100%;
      position:relative;
      border:0;
      border-radius:8px;
      background-color: #fff;
   }
   .toast-message__footer__close {
      width: 44px;
      height: 44px;
      display: flex;
      -webkit-box-pack: center;
      justify-content: center;
      -webkit-box-align: center;
       align-items: center;
       background-color: #fff;
       border-radius:22px;
       cursor: pointer;
   }
   .toast-message__footer > * {
      position:absolute;
      left:50%;
      top:50%;
      transform : translate(-50%, -50%);
   }
   .toast-message__body {
      -webkit-box-flex: 1;
      flex: 1;
      position: relative;
      white-space: pre-wrap;
      font-weight:500;
   }
   .toast-message > .toast-message__button {
      margin-right : 8px;
   }
   .button--size-40 {
      padding : 9px 10px;
      font-size: 15px;
      line-height: 20px;
      font-weight:bold;
   }
   .button--color-blue-inverted {
      background-color : #fff;
      border: 1px solid #35c5f0;
      color: #35c5f0;
      border-radius:5px;
   }
   .toast-message > .toast-message__button--last {
      margin-right: 16px;
   }
   .button--size-40 {
      padding: 9px 10px;
      font-size:15px;
      line-height:20px;
      font-weight:bold;
   }
   .button--color-blue {
      background-color :#35c5f0;
      border: 1px solid #35c5f0;
      color: #fff;
      border-radius:5px; 
   }
   .toast-message-root {
       position: fixed;
       bottom: 20px;
       left: 50%;
       transform: translateX(-50%);
       z-index: 10000101;
       width: 470px;
       box-sizing: border-box;
       -webkit-box-flex: 0;
		flex: 0 0 auto;
   }
  .toast-message-root.toast-none {
      display:none;
   }
   /*스크랩 취소 */
   .toast-message__body:last-child {
      margin-right: 20px;
   }
   
   div.popout{
	   	color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		position: absolute;
		z-index: 100000;
		margin-top:10px;
		margin-left:360px;
		transform: translateX(-50%);
   }
   
   div._3nN5n{
   		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		transform-origin: 50% 0;
		box-sizing: border-box;
		pointer-events: auto;
		visibility: visible;
		opacity: 1;
		transform: none;
		transition: opacity .2s,transform .2s;
   }
   
   div._2TAbe{
	   	pointer-events: auto;
		visibility: visible;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		position: relative;
		border: none;
		box-shadow: 0 2px 6px 0 rgba(0,0,0,.2);
		background-color: hsla(0,0%,100%,.86);
		color: #fff;
		border-radius: 4px;
		margin-top: 15px;
   }
   
   a.tag-item-content__link{
	   	pointer-events: auto;
		visibility: visible;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
   }
   
   div._20T1P{
   		margin: 0;
		border: none;
		display: flex;
		align-items: center;
		width: 710px;
		padding: 10px;
		box-sizing: border-box;
		position: relative;
   }
   
   div.asUT1{
   		margin: 0;
		padding: 0;
		border: none;
		position: relative;
		flex: 0 0 auto;
		width: 80px;
		height: 80px;
		margin-right: 12px;
		border-radius: 2px;
		overflow: hidden;
   }
   
   picture{
   		pointer-events: auto;
		visibility: visible;
		color: inherit;
		cursor: pointer;
   }
   
   img._2TSZD{
  		 line-height: 1;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		pointer-events: auto;
		visibility: visible;
		color: inherit;
		cursor: pointer;
		font-family: "Noto Sans KR", "Noto Sans CJK KR", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-tap-highlight-color: transparent;
		border: none;
		width: 100%;
		height: 100%;
   }
   
   div._3bqx7{
   		margin: 0;
		padding: 0;
		border: none;
		flex: 1 0 0px;
   }
   div._389Yp{
   		padding: 0;
		border: none;
		margin: 0 0 2px;
		font-size: 11px;
		line-height: 17px;
		color: #757575;
   }
   
   div._2WPGa{
   		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		pointer-events: auto;
		visibility: visible;
		cursor: pointer;
		font-family: "Noto Sans KR", "Noto Sans CJK KR", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		border: none;
		height: 36px;
		font-size: 13px;
		line-height: 18px;
		color: #292929;
		display: -webkit-box;
		text-overflow: ellipsis;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		overflow: hidden;
   }
   
   div._2WAbO{
   		padding: 0;
		border: none;
		margin: 6px 0 0;
		font-size: 15px;
		font-weight: 800;
		line-height: 17px;
		color: #292929;
		-webkit-box-orient: vertical;
		overflow: hidden;
   }
   
   div._35DZ7{
   		margin: 0;
		padding: 0;
		border: none;
		flex: 0 0 auto;
		margin-left: 6px;
		color: #757575;
   }
   
   
   svg.tag_icon{
   		color: #757575;
		width: 1em;
		height: 1em;
		-webkit-tap-highlight-color: transparent;
		border: none;
   }
   
   div.comment-feed__reply-list__more{
   		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		margin-top: 15px;
		margin-bottom: 9px;
   }
   
   button.comment-feed__reply-list__more__btn{
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		padding: 5px 0;
		font-size: 13px;
		line-height: 20px;
		border: none;
		color: #35c5f0;
		background: none;
		font-weight: 700;
   }
   
   div.swiper-container{
   		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		padding: 0;
		margin: 10px 0 -10px;
   }
   
   div.production_tag_scoller_item{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding:0;
   }
   div.tag_active div.production_tag_scoller_item_content{
   		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		color: inherit;
		cursor: pointer;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		border: none;
		position: relative;
		overflow: hidden;
		box-sizing: border-box;
		width: 100px;
		height: 100px;
		border-radius: 34px;
		box-shadow: 0 0 0 2px #6cd5f4;
   }
    div.tag_active img{
    	transform: translate(-50%,-50%) scale(1.08);
    }
    
   a.production_tag_scoller_item_link{
   		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: relative;
		display: block;
   }
   
   div.production_tag_scoller_item_content{
   		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		color: inherit;
		cursor: pointer;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		border: none;
		position: relative;
		overflow: hidden;
		box-sizing: border-box;
		width: 100px;
		height: 100px;
		border-radius: 34px;
   }
   
   img.production_tag_scoller_item_image{
   		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		list-style: none;
		color: inherit;
		cursor: pointer;
		-webkit-tap-highlight-color: transparent;
		border: none;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform .2s;
   }
   
   div._2HVeX{
   		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 10px;
		border: none;
		background-color: #fff;
		color: #000;
		font-size: 20px;
		line-height: 0;
		border-radius: 100%;
		box-shadow: 0 2px 4px 0 rgba(0,0,0,.2);
		position: absolute;
		top: 50%;
		width: 40px;
		height: 40px;
		box-sizing: border-box;
		margin-top: -20px;
		z-index: 2;
		opacity: 0;
		cursor: pointer;
		transition: opacity .1s,background-color .1s,color .1s;
		left: -20px;
		display: block;
   }
	.production_tag_scoller_item_content:after {
	    content: "";
	    position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    box-sizing: border-box;
	    border: 1px solid rgba(0,0,0,.07);
	    border-radius: 24px;
	}

  .swiper-container {
      width: 100%;
      height: 100%;
   }
   .swiper-wrapper{
   		padding:10px 0;
   }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }

    @media (max-width: 760px) {
      .swiper-button-next {
        right: 20px;
        transform: rotate(90deg);
      }

     .swiper-button-prev {
        left: 20px;
        transform: rotate(90deg);
      }
     }
     .swiper-button-next, .swiper-button-prev {
    	background-color:white;
    	width:40px; 
    	height:40px;
    	border-radius:100px;
    	color:#000;
    }
    .swiper-button-next:hover, .swiper-button-prev:hover {
    	background-color:#35c5f0;
    	width:40px; 
    	height:40px;
    	border-radius:100px;
    	color:white;
    }
    .swiper-button-prev:after, .swiper-button-next:after {
	    font-size:18px;
	} 
	.swiper-button-prev.swiper-button-disabled, .swiper-button-next.swiper-button-disabled {
	    opacity: 0.35;
	    cursor: auto;
	    pointer-events: none;
	}
	.swiper-pagination-bullet {
	    width: 8px;
	    height: 8px;
	    display: inline-block;
	    border-radius: 100%;
	    background: #35c5f0;
	    opacity: 0.2;
	}
	.swiper-pagination-bullet-active {
	    opacity: 1;
	    background: white; 
	    box-shadow: 0 2px 4px 0 rgba(0,0,0,.2);
	}

	div.drop-down card-detail-edit-menu{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		position: relative;
		display: inline-block;
	}
	
	button.card-detail-edit-menu__button{
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		display: inline-block;
		margin: 0 5px;
		padding: 13px 0;
		border: none;
		background: none;
		color: #424242;
		font-size: 24px;
		line-height: 0;
		transition: opacity .1s;
	}
	
	svg.addicon{
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		cursor: pointer;
		color: #424242;
		font-size: 24px;
		line-height: 0;
		width: 1em;
		height: 1em;
		-webkit-tap-highlight-color: transparent;
	}
	
	svg.addicon >g {
		-webkit-font-smoothing: antialiased;
		-webkit-box-direction: normal;
		cursor: pointer;
		color: #424242;
		font-size: 24px;
		line-height: 0;
		fill: currentcolor;
		transform: translate(11, 3);
		-webkit-tap-highlight-color: transparent;
	}
	
	div.animated-popout{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		transform-origin: 50% 0;
		box-sizing: border-box;
		z-index: 1000;
		position: relative;
		margin-top: 17px;
		pointer-events: auto;
		visibility: visible;
		opacity: 1;
		transform: none;
		transition: opacity .2s,transform .2s;
	}
	
	ul.card-detail-edit-menu__list{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		pointer-events: auto;
		visibility: visible;
		-webkit-tap-highlight-color: transparent;
		list-style: none;
		width: 150px;
		margin: 0 -1px;
		padding: 10px;
		box-sizing: border-box;
		background-color: #fff;
		box-shadow: 0 4px 6px 0 rgba(0,0,0,.18);
		border: 1px solid #dbdbdb;
		border-radius: 4px;
		white-space: nowrap;
		overflow: hidden;
	}
	
	li.card-detail-edit-menu__item-wrap{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		pointer-events: auto;
		visibility: visible;
		list-style: none;
		white-space: nowrap;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
	}
	
	.card-detail-edit-menu__item{
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		pointer-events: auto;
		visibility: visible;
		list-style: none;
		white-space: nowrap;
		-webkit-tap-highlight-color: transparent;
		touch-action: manipulation;
		display: block;
		position: relative;
		width: 100%;
		margin: 0;
		padding: 10px 14px 11px;
		box-sizing: border-box;
		border: none;
		background: #fff;
		color: #424242;
		font-family: inherit;
		font-weight: 400;
		font-size: 15px;
		line-height: 21px;
		text-decoration: none;
		text-align: left;
		cursor: pointer;
		border-radius: 2px;
	}
	.card-detail-edit-menu__content:before {
	    margin: 0 0 0 -4px;
	    border-width: 0 5px 10px;
	    border-color: transparent transparent #dbdbdb;
	    transform: translateX(.5px);
	}
	
	.card-detail-edit-menu__content:after {
	    margin: 0 0 -1px -4px;
	    border-width: 0 4.5px 9px;
	    border-color: transparent transparent #fff;
	}
	
	.card-detail-edit-menu__content:after, .card-detail-edit-menu__content:before {
	    content: "";
	    position: absolute;
	    display: block;
	    right: 12px;
	    bottom: 100%;
	    border-style: solid;
	}
	
	.card-detail-edit-menu__item:active, .card-detail-edit-menu__item:hover{
	    background-color: #f7f8fa;
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp" />

	<!-- content -->
	<div class="card_detail">
		<div class="content">
			<div class="row">
				<div class="card_detail_content">
					<header class="card_detail_header">
						<div class="card_detail_list">
							<span class="header_prop">${pvo.pstyle} &nbsp;</span>
							<span class="header_prop">${pvo.ptype} </span>
						</div>
						<time class="header_date">${pvo.pdate}</time>
					</header>
					<article class="card_detail_card">
						<div class="card_detail_img_wrap">
							<div class="card_detail_img">
								<div class="card_img_content">
									<img class="card_img" src="http://localhost:9000/myhouse/resources/upload/${pvo.photo_simage}">
								</div>
							</div>
						</div>
					
					<!-- swiper -->
					<c:if test="${tagcount != 0}">
					  <div class="swiper-container">
						    <div class="swiper-wrapper">
						    <c:forEach var="tag" items="${taglist}"> 
						      <div class="swiper-slide">
						      	<div class="production_tag_scoller_item">
									<a href="#" class="production_tag_scoller_item_link">
										<div class="production_tag_scoller_item_content">
											<img class="production_tag_scoller_item_image" src="http://localhost:9000/myhouse/resources/upload/${tag.goods_simage}" alt="${tag.ititle}">
											<input type="hidden" class="company" value="${tag.company}">
											<input type="hidden" class="price" value="${tag.goods_price}">
										</div>
									</a>
								</div>
							</div>
						   </c:forEach>
						    </div>
					    <div class="swiper-button-next"></div>
					    <div class="swiper-button-prev"></div>
  					</div>
  					</c:if>
  					<div class="tag_detail"></div>
  					
					<p class="card_detail_description">
						${pvo.pcontent}
					</p>
					
					</article>
					<footer class="card_detail_footer">
						<p class="footer_metadata">
							<span class="footer_prop">
							조회 ${pvo.phits} &nbsp;
							</span>
							<span class="footer_prop">
							댓글 ${c_count}&nbsp;
							</span>
						</p>
					</footer>
					
					<div class="comment_section">
						<section class="comment_feed">
							<h1 class="comment_feed_header">
								댓글 <!--  -->&nbsp;
								<span class="comment_feed_count">${c_count}</span>
							</h1>
							<form class="comment_feed_form">
								<div class="comment_feed_form_user">
									<img class="comment_feed_form_user_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=72">
								</div>
								<div class="comment_feed_form_input">
									<div class="comment_feed_form_content">
										<div class="comment_content_input">
											<div class="comment_content_input_text"  data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true"></div>
										</div>
									</div>
									<div class="comment_feed_form_actions">
										<button type="button" class="comment_btn feed_form_submit" disabled>등록</button>
									</div>
								</div>
							</form>
							
							<c:set var="i" value="0"/>
							<c:if test="${c_count ne 0}">
							<c:set var="cvo" value="${comment}"/>
							<c:forEach var="j" begin="${i}" end="${c_count-re_count-1}" step="1">
							<ul class="comment_feed_list">
								<li class="comment_feed_list_item">
									<article class="comment_feed_item">
										<!-- 댓글 -->
										<p class="comment_feed_item_content">
											<a href="http://localhost:9000/myhouse/mypage_profile1.do" class="comment_feed_author">
												<c:if test="${cvo[i].member_simage ne null}">
													<img class="comment_feed_author_img" alt="${cvo[i].nickname}" src="http://localhost:9000/myhouse/resources/upload/${cvo[i].member_simage}">
												</c:if>
												<c:if test="${cvo[i].member_simage eq null}">
													<img class="comment_feed_author_img" alt="${cvo[i].nickname}" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610546181_bFlu6cwJ5C.jpeg?gif=1&w=72">
												</c:if>
												<span class="comment_feed_author_name">${cvo[i].nickname}</span>
											</a>
											<c:if test="${cvo[i].c_content == null}">
												<span class="comment_feed_content removed"><svg viewBox="0 0 14 14" preserveAspectRatio="xMidYMid meet">
												<path fill="#CCC" d="M7 0a7 7 0 100 14A7 7 0 007 0zm-.59 4.18a.59.59 0 011.18 0v3.5a.59.59 0 01-1.18 0v-3.5zm1.12 6a.76.76 0 01-.53.23.75.75 0 01-.53-1.28.75.75 0 111.06 1.06z"></path>
												</svg>삭제된 댓글입니다.</span>
											</c:if>
											<c:if test="${cvo[i].c_content != null}">
											<span class="comment_feed_content">${cvo[i].c_content}</span>
											</c:if>
										</p>
										<footer class="comment_feed_item_footer">
											<time class="comment_feed_item_footer_time">
											<jsp:useBean id="now" class="java.util.Date"/>
											<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd" />
											<fmt:parseDate var="codate" value="${cvo[i].cdate}" pattern="yyyy-MM-dd HH:mm:ss" />
											<fmt:formatDate var="cdateTime" value="${codate}" pattern="yyyy-MM-dd" />
											<fmt:parseNumber var="startDate" value="${now.time / (1000*60*60*24)}" integerOnly="true" />
											<fmt:parseNumber var="endDate" value="${codate.time / (1000*60*60*24)}" integerOnly="true" /> 
											<c:if test="${nowTime >= cdateTime}">
												<c:choose>
													<c:when test="${nowTime == cdateTime}">
														오늘
													</c:when>
													<c:when test="${startDate-endDate <7}">
														${startDate-endDate}일 전
													</c:when>
													<c:otherwise>
														<fmt:parseNumber var="week" value="${(startDate-endDate) div 7}" integerOnly="true"/>
														${week}주 전
													</c:otherwise>	
												</c:choose>
											</c:if>
											</time>
											<c:if test="${cvo[i].c_content != null}">
											<c:set var="like" value="${cvo[i].c_like}"/>
											<c:set var="likes" value="${fn:split(like,',')}" />
											<c:choose>
												<c:when test="${cvo[i].c_like == null}">
													<span class="comment_feed_item_footer_likes_zero">
													<button id="likes_icon_btn" class="comment_feed_item_footer_likes_icon" type="button">
														<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
															<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
														</svg>
													</button>
													<span class="comment_feed_item_footer_likes_count">0</span>
													</span>
												</c:when>
												<c:otherwise>
													<span class="comment_feed_item_footer_likes">
													<c:if test="${cvo[i].cliked !=0}">
													<button id="likes_icon_btn"  class="comment_feed_item_footer_likes_icon" type="button">
														<svg class="badge_liked" width="15" height="14" preserveAspectRatio="xMidYMid meet">
															<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
														</svg>
													</button>
														<span class="comment_feed_item_footer_likes_count">${fn:length(likes)}</span>
													</c:if>
													<c:if test="${cvo[i].cliked ==0}">
													<button id="likes_icon_btn"  class="comment_feed_item_footer_likes_icon" type="button">
														<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
															<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
														</svg>
													</button>
														<span class="comment_feed_item_footer_likes_count">${fn:length(likes)}</span>
													</c:if>
													</span>
												</c:otherwise>
											</c:choose>
												<c:if test="${cvo[i].cliked !=0}">
												<button id="likes_btn" class="comment_feed_item_footer_likes_btn_active" type="button">좋아요취소</button>
												</c:if>
												<c:if test="${cvo[i].cliked == 0}">
												<button id="likes_btn" class="comment_feed_item_footer_likes_btn" type="button">좋아요</button>
												</c:if>
												<button id="reply" class="comment_feed_item_footer_reply_btn" type="button">답글달기</button>
												<c:if test="${cvo[i].getwrite >0}">
												<button id="comment_del" class="comment_feed_item_footer_del_btn" type="button">삭제</button>
												</c:if>
											</c:if>
												<input type="hidden" class="cno" value="${cvo[i].cno}">
												<input type="hidden" class="rcount" value="${cvo[i].rcount}">
											</footer>
											
											<c:if test="${cvo[i].rcount != 0}">
											<c:forEach var="k" begin="${i+1}" end="${i+cvo[i].rcount}" step="1" >
											<!-- 답글 -->
											<div class="comment_feed_reply_list">
												<ul class="comment_feed_reply_list">
													<li class="comment_feed_list_item">
														<article class="comment_feed__item">
															<p class="comment_feed_item_content">
																<a href="http://localhost:9000/myhouse/mypage_profile1.do" class="comment_feed_author">
																<c:if test="${re[k].member_simage ne null}">
																	<img class="comment_feed_author_img" alt="${cvo[k].nickname}" src="http://localhost:9000/myhouse/resources/upload/${cvo[k].member_simage}">
																</c:if>
																<c:if test="${re[k].member_simage eq null}">
																	<img class="comment_feed_author_img" alt="${cvo[k].nickname}" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610546181_bFlu6cwJ5C.jpeg?gif=1&w=72">
																</c:if>
																	<span class="comment_feed_author_name">${cvo[k].nickname}</span></a><span class="comment_feed_item_content_content"><a class="comment_tag" href="#" target="_blank" rel="noopener noreferrer">@${cvo[k].c_tag}  </a>${cvo[k].c_content}</span>
															</p>
															<footer class="comment_feed_item_footer">
																<time class="comment_feed_item_footer_time">
																	<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd" />
																	<fmt:parseDate var="codate" value="${cvo[k].cdate}" pattern="yyyy-MM-dd HH:mm:ss" />
																	<fmt:formatDate var="cdateTime" value="${codate}" pattern="yyyy-MM-dd" />
																	<fmt:parseNumber var="startDate" value="${now.time / (1000*60*60*24)}" integerOnly="true" />
																	<fmt:parseNumber var="endDate" value="${codate.time / (1000*60*60*24)}" integerOnly="true" /> 
																	<c:if test="${nowTime >= cdateTime}">
																		<c:choose>
																			<c:when test="${nowTime == cdateTime}">
																				오늘
																			</c:when>
																			<c:when test="${startDate-endDate <7}">
																				${startDate-endDate}일 전
																			</c:when>
																			<c:otherwise>
																				<fmt:parseNumber var="week" value="${(startDate-endDate) div 7}" integerOnly="true"/>
																				${week}주 전
																			</c:otherwise>	
																		</c:choose>
																	</c:if>
																</time>
																<c:set var="like" value="${cvo[k].c_like}"/>
																<c:set var="likes" value="${fn:split(like,',')}" />
																<c:choose>
																	<c:when test="${cvo[k].c_like == null}">
																		<span class="comment_feed_item_footer_likes_zero">
																		<button id="likes_icon_btn" class="comment_feed_item_footer_likes_icon" type="button">
																			<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																				<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
																			</svg>
																		</button>
																		<span class="comment_feed_item_footer_likes_count">0</span>
																		</span>
																	</c:when>
																	<c:otherwise>
																		<span class="comment_feed_item_footer_likes">
																		<c:if test="${cvo[k].cliked !=0}">
																			<button id="likes_icon_btn"  class="comment_feed_item_footer_likes_icon" type="button">
																				<svg class="badge_liked" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																					<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
																				</svg>
																			</button>
																				<span class="comment_feed_item_footer_likes_count">${fn:length(likes)}</span>
																			</c:if>
																			<c:if test="${cvo[k].cliked ==0}">
																			<button id="likes_icon_btn"  class="comment_feed_item_footer_likes_icon" type="button">
																				<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																					<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
																				</svg>
																			</button>
																				<span class="comment_feed_item_footer_likes_count">${fn:length(likes)}</span>
																		</c:if>
																		</span>
																	</c:otherwise>
																</c:choose>
																<input type="hidden" class="cno" value="${cvo[k].cno}">
																<c:if test="${cvo[k].cliked !=0}">
																	<button id="likes_btn" class="comment_feed_item_footer_likes_btn_active" type="button">좋아요취소</button>
																</c:if>
																<c:if test="${cvo[k].cliked ==0}">
																	<button id="likes_btn" class="comment_feed_item_footer_likes_btn" type="button">좋아요</button>
																</c:if>
																<button id="reply_btn" class="comment_feed_item_footer_reply_btn" type="button">답글달기</button>
																<c:if test="${cvo[k].getwrite >0}">
																<button id="reply_del" class="comment_feed_item_footer_del_btn" type="button">삭제</button>
																</c:if>
															</footer>
														</article>								
													</li>
												</ul>
											</div>
											</c:forEach>
											<c:set var="i" value="${i+cvo[i].rcount}"/>
											</c:if>
											
											<!-- 답글 달기 누르면 나오는 폼(답글x) -->
											<form class="comment_feed_item_reply_no_comment">
												<div class="comment_feed_form_user">
													<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=36&webp=1">
												</div>
												<div class="comment_feed_form_input">
													<div class="comment_feed_form_content">
														<div class="comment_content_input">
															<div class="comment_content_input_text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true">
																<a href="" class="comment_content_input_text_mention"></a>&nbsp;
															</div>
														</div>
													</div>
												<div class="comment_feed_form_actions">
													<button type="button" class="comment_reply_btn feed_form_submit">등록</button>
												</div>
												</div>
										   </form>
											<!-- 답글 달기 누르면 나오는 폼(답글ㅇ) -->
											<form class="comment_feed_item_reply">
												<div class="comment_feed_form_user">
													<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=36&webp=1">
												</div>
												<div class="comment_feed_form_input">
													<div class="comment_feed_form_content">
														<div class="comment_content_input">
															<div class="comment_content_input_text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true">
																<a href="" class="comment_content_input_text_mention"></a>&nbsp;
															</div>
														</div>
													</div>
												<div class="comment_feed_form_actions">
													<button type="button" class="comment_reply_btn feed_form_submit">등록</button>
												</div>
												</div>
										   </form>
										   
											<!-- 답글 달기 누르면 나오는 폼(댓글) -->
											<form class="comment_feed_item_comment_reply">
												<div class="comment_feed_form_user">
													<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=36&webp=1">
												</div>
												<div class="comment_feed_form_input">
													<div class="comment_feed_form_content">
														<div class="comment_content_input">
															<div class="comment_content_input_text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true">
																<a href="" class="comment_content_input_text_mention"></a>&nbsp;
															</div>
														</div>
													</div>
												<div class="comment_feed_form_actions">
													<button type="button" class="comment_reply_btn feed_form_submit">등록</button>
												</div>
												</div>
										   </form>
										   
									</article>
								</li>
							</ul>
							<c:set var="i" value="${i+1}"/>
							</c:forEach>
							</c:if>
							<ul class="list_paginator"></ul>
						</section>
					</div>
				</div>
				<div class="card_detail_sidebar">
					<div class="card_detail_sidebar_wrap">
						<div class="sticky_container_card_detail_sidebar">
							<div class="sticky_container_card_detail_sidebar_inner">
								<div class="sticky_container_card_detail_sidebar_action_list">
								<c:if test="${islike == 1}">
									<button id="btn_like" class="btn_action_active">
										<svg class="actionIcon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
										</svg>
										<span class="count">${clike}</span>
									</button>
								</c:if>
								<c:if test="${islike != 1}">
									<button id="btn_like" class="btn_action">
										<svg class="actionIcon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
										</svg>
										<span class="count">${clike}</span>
									</button>
								</c:if>
								
								<c:if test="${isscrap == 1}">
									<button id="btn_scrap" class="btn_action_active">
										<svg class="actionIcon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
										</svg>
										<span class="count">${scrap}</span>
									</button>
								</c:if>
								<c:if test="${isscrap != 1}">
									<button id="btn_scrap" class="btn_action">
										<svg class="actionIcon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
										</svg>
										<span class="count">${scrap}</span>
									</button>
								</c:if>
								
								<c:if test="${getwriter != 0}">
								<div class="drop-down card-detail-edit-menu" style="position:relative;">
									<button class="card-detail-edit-menu__button" type="button" title="더보기">
										<svg class="addicon" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<g fill="currentColor" transform="translate(11 3)"><circle cx="1.5" cy="1.5" r="1.5"></circle><circle cx="1.5" cy="8.5" r="1.5"></circle><circle cx="1.5" cy="15.5" r="1.5"></circle></g>
										</svg>
									</button>
									<div><div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 1000; top: 40px; right:-75px; display:none">
									<div class="animated-popout drop-down__content card-detail-edit-menu__content open open-active">
									<ul class="card-detail-edit-menu__list">
									<li class="card-detail-edit-menu__item-wrap">
									<a class="card-detail-edit-menu__item" href="photo_update.do?pno=${pvo.pno}">수정</a></li>
									<li class="card-detail-edit-menu__item-wrap">
									<button class="card-detail-edit-menu__item" type="button">삭제</button></li></ul></div></div></div>
								</div>
								</c:if>
								
								</div>
												
								<div class="card_detail_sidebar_content">
									<div class="card_detail_write">
										<div class="card_detail_writer_user">
											<a class="card_detail_writer_link" href='http://localhost:9000/myhouse/mypage_profile1.do'>
											<c:if test="${member.member_spimage eq null}">
												<img class="card_detail_writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610546181_bFlu6cwJ5C.jpeg?gif=1&w=72">
											</c:if>
											<c:if test="${member.member_spimage ne null}">
												<img class="card_detail_writer_img" src="http://localhost:9000/myhouse/resources/upload/${member.member_spimage}">
											</c:if>
													<span class="card_detail_writer_name">${member.nickname}</span>
											</a>
											<p class="card_detail_writer_intro">${member.intro}</p>
										</div>
										<c:if test="${getwriter == 0}">
											<c:if test="${isfollow != null}">
												<button id="btn_following" class="card_detail_writer_following" type="button">팔로잉</button>
											</c:if>
											<c:if test="${isfollow == null}">
												<button id="btn_follow" class="card_detail_writer_follow" type="button">팔로우</button>
											</c:if>
										</c:if>
									</div>
									<div class="card_detail_card_list">
										<ul class="card_detail_card_list">
										<c:forEach var="p" items="${photo}">
										<c:set var="pimg" value="${p.photo_simage}"/>
										<c:set var="img" value="${fn:split(pimg,',')}" />
											<li class="card_detail_card_list_item">
												<a href="http://localhost:9000/myhouse/community_page.do?pno=${p.pno}" class="card_detail_card_list_item_link">
													<img class="card_detail_card_list_item_img" src="http://localhost:9000/myhouse/resources/upload/${img[0]}">
												</a>
											</li>
										</c:forEach>
										</ul>
										<a href="http://localhost:9000/myhouse/mypage_picture.do" class="card_detail_card_list_more">더보기</a>
									</div> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 스크랩 팝업 -->
	<div class="toast-message-root" id="toast-none"> 
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>