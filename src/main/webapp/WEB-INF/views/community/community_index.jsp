<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script>
<script>
	$(document).ready(function(){
		var order= "";
		var type= "";
		var style= "";
		
		community_list("","","","");
		$("div.popout_drop_down").css("display","none");
		
		$("button#sort").mouseover(function(){
			$("div.popout_drop_down").css("display","none");
			$(this).parent().children().children().children().children().parent().css("display", "");
		});
		
		$("div.popout").mouseover(function(){
			$("div.popout_drop_down").css("display","none");
			$(this).children().css("display", "");
		});
		$("div.popout").mouseleave(function(){
			$(this).children().css("display", "none");
		});
		
		$("button#sort").mouseleave(function(){
			$(this).parent().children().children().children().children().parent().css("display", "none");
		});
		
		
		$(document).on("click","button#btn_list",function(){
			$("div.popout_drop_down").css("display","none");
			var uname = $(this).parent().parent().attr('class');
			var list = $("ul."+uname+" button");
			if ($(this).hasClass("panel_entry_list_item")){
				for(var i=0; i<list.length; i++){
					if(list[i].className=="panel_entry_list_item_selected"){
						$(list[i]).removeClass("panel_entry_list_item_selected");
						$(list[i]).addClass("panel_entry_list_item");
						$("li#"+list[i].value).remove();
					}
				}
				$(this).removeClass("panel_entry_list_item");
				$(this).addClass("panel_entry_list_item_selected");
					var output = "<li class='filter_bar_tag_list_item' id='"+$(this).children().children().text().replace("&", "")+"'>";
					output += "<button id='tag_btn' class='filter_bar_tag' type='button'>";
					output += $(this).children().children().text();
					output += "<svg class='tagIcon' width='12' height='12' viewBox='0 0 12 12' fill='currentColor' preserveAspectRatio='xMidYMid meet'>"
					output += "<path d='M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z'></path>"
					output +="</svg></button></li>";
					
					if($(this).val()!='최근인기순'){
						if($('li.filter_bar_tag_list_item').length !=0){
							$("li#clear").before(output);
							
						}else{
							output += "<li class='filter_bar_tag_list_item' id='clear'>";
							output += "<button class='filter_bar_tag_list_clear' id='tagClear' type='button'>초기화</button>";
							output +="</li>"; 
						 	$("ul.fliter_bar_tag_list").after(output);
						}
						
						$(this).parent().parent().parent().parent().parent().parent().parent().children('button').removeClass('sort');
						$(this).parent().parent().parent().parent().parent().parent().parent().children('button').addClass('sort_selected');
					}else{
						$("li#clear").remove();
					}
			}else{
				if($('li.filter_bar_tag_list_item').length == 2){
					$("li#clear").remove();
				}
				$(this).removeClass("panel_entry_list_item_selected");
				$(this).addClass("panel_entry_list_item");
				
				if(uname =='panel_entry_list1'){
					var count = 0;
					for(var i=0; i<list.length; i++){
						if(list[i].className=="panel_entry_list_item_selected"){
							count++;
						}
					}
					if(count == 0){
						$(list[0]).addClass("panel_entry_list_item_selected");
						$(list[0]).removeClass("panel_entry_list_item");
					}
				}
		
				$("li#"+$(this).children().children().text()).remove();
				$(this).parent().parent().parent().parent().parent().parent().parent().children('button').removeClass('sort_selected');
				$(this).parent().parent().parent().parent().parent().parent().parent().children('button').addClass('sort');
				
			}
			
			 $(".panel_entry_list_item_selected" ).each( function(){
				 if($(this).parent().parent().attr('class') =="panel_entry_list1") order = $(this).val();
				 else if($(this).parent().parent().attr('class') =="panel_entry_list2") type=$(this).val();
				 else if($(this).parent().parent().attr('class') =="panel_entry_list3") style=$(this).val();
				 
		    });
			 community_list(order, type, style, "");
		});
		
		$(document).on("click","#tag_btn",function(){
			var tag_id=$(this).text().replace("&", "")
			var btn = $('span#'+tag_id).parent().parent().parent().parent().parent().parent().parent().parent().parent().children('button');
			if($('li.filter_bar_tag_list_item').length == 2){
				$("li#clear").remove();
				$("ul.panel_entry_list1").children().first().children('button').addClass("panel_entry_list_item_selected")
				$("ul.panel_entry_list1").children().first().children('button').removeClass("panel_entry_list_item")
			}
			$(this).parent().remove();
			$("span#"+tag_id).parent().parent().removeClass("panel_entry_list_item_selected");
			$("span#"+tag_id).parent().parent().addClass("panel_entry_list_item");
			btn.removeClass('sort_selected');
			btn.addClass('sort');
			 if($('span#'+tag_id).parent().parent().parent().parent().attr('class') =="panel_entry_list1") order="최근인기순";
			 if($('span#'+tag_id).parent().parent().parent().parent().attr('class') =="panel_entry_list2") type="";
			 if($('span#'+tag_id).parent().parent().parent().parent().attr('class') =="panel_entry_list3") style="";
			
			 community_list(order, type, style, ""); 
		});
		
		$(document).on("click","#tagClear",function(){
			var tag_list = $('.filter_bar_tag_list_item');
			for(var i=0; i<tag_list.length; i++)
			{	
				$("span#"+tag_list[i].id).parent().parent().removeClass("panel_entry_list_item_selected");
				$("span#"+tag_list[i].id).parent().parent().addClass("panel_entry_list_item");
				$("li#"+tag_list[i].id).remove();
			}
			$("li#clear").remove();
			$("ul.panel_entry_list1").children().first().children('button').addClass("panel_entry_list_item_selected")
			$("ul.panel_entry_list1").children().first().children('button').removeClass("panel_entry_list_item")
			$("button#sort").removeClass('sort_selected');
			$("button#sort").addClass('sort');
			
			community_list("", "", "", "");
			
		});
		
		$(document).on("click","button#card_action1",function(){
			var pno = $(this).parent().parent().parent().parent().children('.pno').val();
			var count = parseInt($(this).children('span.count').text());
			if ($(this).hasClass("card_action")){
				$(this).removeClass("card_action");
				$(this).addClass("card_action_active");
				$(this).children('span.count').text(count+1);
				$.ajax({
						url :"like_proc.do?pno="+pno,
						success:function(result){
							if(result=="") {
								location.href="http://localhost:9000/myhouse/login.do";
							}
						}
					});
			
			}else{
				$(this).removeClass("card_action_active");
				$(this).addClass("card_action");
				$(this).children('span.count').text(count-1);
				$.ajax({
					url :"like_cancel_proc.do?pno="+pno,
					success:function(result){
					}
					});
				
			}
		});
		
		$(document).on("click","button#card_action2",function(){
			var pno = $(this).parent().parent().parent().parent().children('.pno').val();
			var count = parseInt($(this).children('span.count').text());
			if ($(this).hasClass("card_action")){
				$(this).removeClass("card_action");
				$(this).addClass("card_action_active");
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
				$('div.toast-message').fadeOut(3800);
				
				$.ajax({
					url :"scrap_proc.do?pno="+pno,
					success:function(result){
						if(result==""){
							location.href="http://localhost:9000/myhouse/login.do";
						}
					}
				});
				
				
			}else{
				$(this).removeClass("card_action_active");
				$(this).addClass("card_action");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
				output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
				if($('div.toast-message').length == 1){
					$('div.toast-message').first().remove();
				}
				$(this).children('span.count').text(count-1);
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(3800);
				
				$.ajax({
					url :"scrap_cancel_proc.do?pno="+pno,
					success:function(result){
					}
				});
			}
		});
		
		$(document).on("click","button.toast-message__footer",function(){
			$(this).parent().remove();
		});
		
		
		$(document).on("click","button#follow",function(){
			var email = $(this).parent().parent().parent().parent().parent().children('.email').val();
			if ($(this).hasClass("card_item_follow")){
				$(this).removeClass("card_item_follow");
				$(this).addClass("card_item_following");
				$(this).html('팔로잉');
				$.ajax({
					url :"follow_proc.do?w_email="+email,
					success:function(result){
						if(result=="") location.href="http://localhost:9000/myhouse/login.do";
					}
				});
				
			}else{
				$(this).removeClass("card_item_following");
				$(this).addClass("card_item_follow");
				$(this).html('팔로우');
			
				$.ajax({
					url :"follow_cancel_proc.do?w_email="+email,
					success:function(result){
					}
				});
			}
		});
		
		function community_list(order, type, style, rpage){
			$.ajax({
				url :"community_index_proc.do?order="+order+"&type="+type+"&style="+style+"&rpage="+rpage,
				success:function(result){
					var jdata = JSON.parse(result);
					var output ="<div class='card_content'>";
					for(var i in jdata.jlist){
						output += "<div class='card_item_wrap'><div class='card_item'>";
						output += "<input type='hidden' class='pno' value='"+jdata.jlist[i].pno+"'>";
						output += "<input type='hidden' class='email' value='"+jdata.jlist[i].w_email+"'>";
						output +="<article class='card_item'><div class='card_writer'>";
						output +="<address class='card_writer_content'><div class='card_writer_header'><a href='http://localhost:9000/myhouse/mypage_picture.do' class='card_writer_link'>";
						if(jdata.jlist[i].w_member_simage == null) output +="<img class='card_writer_img' src='https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1580049055_v.jpeg?gif=1&w=36&h=36&c=c&webp=1'>";
						else output +="<img class='card_writer_img' src='http://localhost:9000/myhouse/resources/upload/"+jdata.jlist[i].w_member_simage+"'>";
						output +="<span class='card_writer_name'>"+jdata.jlist[i].w_nickname+"</span></a>";
						if(jdata.jlist[i].iswriter == 0 || jdata.jlist[i].iswriter == null){
						output +="<span class='seperator'></span>"
							if(jdata.jlist[i].isfollow == null || jdata.jlist[i].isfollow == 0){
								output +="<button id='follow' class='card_item_follow' type='button'>팔로우</button></div>";
							}else{
								output +="<button id='follow' class='card_item_following' type='button'>팔로잉</button></div>";
							}
						}
						if(jdata.jlist[i].intro == null){
							output += "<p class='card_writer_intro'></p></address></div>";
						}else{
							output += "<p class='card_writer_intro'>"+jdata.jlist[i].intro+"</p></address></div>";
						}
						output +="<div class='card_item_content'><a href='community_page.do?pno="+jdata.jlist[i].pno+"' class='card_item_content_link'></a>";
						if(jdata.jlist[i].pcontent == null){
							output += "<div class='card_item_text'><div class='card_item_desciption'></div></div>";
						}else{
							output += "<div class='card_item_text'><div class='card_item_desciption'>"+jdata.jlist[i].pcontent+"</div></div>";
						}
						output +="<div class='card_item_image'><div class='card_item_image2'>";
						output +="<img class='card_img' src='http://localhost:9000/myhouse/resources/upload/"+jdata.jlist[i].photo_simage+"'>"
						output += "<span class='card_img_count'>조회수 "+jdata.jlist[i].phits+"</span></div></div><aside class='card_item_action'>";
						if(jdata.jlist[i].islike == 1){
							output +="<button id='card_action1' class='card_action_active'>";
						}else{
							output +="<button id='card_action1' class='card_action'>";
						}
						output += "<svg class='action_icon' aria-label='좋아요' width='24' height='24' fill='currentColor' stroke='currentColor' stroke-width='2' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>";
						output += "<path d='M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z'></path></svg>";
						output += "<span class='count'>"+jdata.jlist[i].plike+"</span></button>"
						if(jdata.jlist[i].isscrap == 1){
							output +="<button id='card_action2' class='card_action_active'>";
						}else{
							output +="<button id='card_action2' class='card_action'>";
						}
						output += "<svg class='action_icon' aria-label='스크랩' width='24' height='24' fill='currentColor' stroke='currentColor' stroke-width='0.5' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>";
						output += "<path d='M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z'></path></svg>";
						output += "<span class='count'>"+jdata.jlist[i].scrap+"</span></button><a href='community_page.do?pno="+jdata.jlist[i].pno+"' class='card_action'>";
						output += "<svg class='comm_icon' aria-label='댓글 달기' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>";
						output += "<path fill='currentColor' fill-rule='nonzero' d='M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z'></path>";
						output += "</svg><span class='count'>"+jdata.jlist[i].comments+"</span></a></aside></div>";
						if(jdata.jlist[i].comments != 0){
							output += "<div class='card_item_comment'><article class='card_item_comment' aria-label='댓글'><address class='comment_wirter'><a href='#' class='writer_link'><div class='writer_img'>";
							if(jdata.jlist[i].c_member_simage != null){
								output += "<img class='writer_img' src='http://localhost:9000/myhouse/resources/upload/"+jdata.jlist[i].w_member_simage+"'>";
							}else{
								output +="<img class='writer_img' src='https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1580049055_v.jpeg?gif=1&w=36&h=36&c=c&webp=1'>";
							}
							output +="</div><span class='writer_name'>"+jdata.jlist[i].c_nickname+"</span><span class='writer_seperator'> :</span></address>";
							output += "<a href='http://localhost:9000/myhouse/mypage_picture.do' class='comment_link'><p class='comment_content'>"+jdata.jlist[i].c_content+"</p></a></article></div>"
						}
						output +="</article></div></div>"
					}
					output += '</div><div id="ampaginationsm"></div>';
					$("div.card_content").remove();
					$("div#ampaginationsm").remove();
					$("div.sticky_container").after(output);
					
					page(jdata.dbcount, jdata.reqpage, jdata.pagesize); //페이지 출력 
						
				}//success
			});//ajax
		}
		
 	
	function page(dbcount, reqpage, pagesize){
			//페이지 번호 및  링크
		      var pager = jQuery("#ampaginationsm").pagination({
		         maxSize : 9,
		         totals:dbcount,
		         page : reqpage,
		         pageSize : pagesize,
		         
		         lastText : '&raquo;&raquo;',
		         firstText : '&laquo;&laquo;',
		         preTest : '&laquo;',
		         nextTest : '&raquo;',
		         
		         btnSize : 'sm'
		      });
		      
		      jQuery("#ampaginationsm").on('am.pagination.change',function(e){
		         community_list(order,type,style,e.page);
		      });
		} 
		
	});//ready
</script>
<style>
	*:focus{
		outline:none;
	}
	div.community{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin:0;
		padding:0;
		margin-right:auto;
		margin-left:auto;
		box-sizing: border-box;
		min-height: 1px;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		position: relative;
		width: 1100px; 
	}
	div.sticky_container{
		margin-top: 5px;
		z-index: 100;
		transition: top .1s;
		position: sticky;
		top: -58.9091px;
	}
	div.sticky_card_filter{
		padding: 10px 0 5px;
		background-color: #fff;
		position: relative;
	}
	div.card_filter,div.filter_bar,div.card_item{
		margin: 0; padding: 0;
	}
	div.filter_bar_control{
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
		min-width: 0;
		margin: 0 -2px;
		padding: 5px 0;
		overflow: auto;
	}
	
	ul.filter_bar{
		color: #424242;
		line-height: 1;
		flex: 0 0 auto;
		min-width: 0;
		margin: 0;
		padding: 0;
		list-style: none;
		white-space: nowrap;
	}
	
	li.item{
		display:inline-block;
		list-style: none;
		white-space: nowrap;
		padding: 0;
		margin: 0 2px;
		vertical-align: bottom;
		font-size: 0;
		line-height: 0;
	}
	
	button.sort{
		touch-action: manipulation;
		user-select: none;
		display: inline-block;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		font-weight: 700;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		font-size: 15px;
		line-height: 19px;
		padding: 7px 8px 6px;
		border-radius: 4px;
	}
	
	button.sort_selected{
		touch-action: manipulation;
		user-select: none;
		display: inline-block;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		font-weight: 700;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		background-color: #e8f4fb;
		border-color: #e8f4fb;
		color: #35c5f0;
		font-size: 15px;
		line-height: 19px;
		padding: 7px 8px 6px;
		border-radius: 4px;
	}
	
	li.item>button>svg{
		fill: currentcolor;
		width: 12px;
		height: 12px;
		margin-left: 5px;
		vertical-align: -1px;
	}
	
	ul.fliter_bar_tag_list{
		color: #424242;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 5px 0;
		list-style: none;
		font-size: 0;
		line-height: 0;
		box-sizing: border-box;
	}
	
	li.filter_bar_tag_list_item{
		color: #424242;
		list-style: none;
		font-size: 0;
		line-height: 0;
		-webkit-tap-highlight-color: transparent;
		display: inline-block;
		margin: 0 2px;
		padding: 2px 0;
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
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #fff;
		display: block;
		padding: 1px 8px 3px;
		font-size: 15px;
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
		color: #fff;
	}
	button.filter_bar_tag_list_clear{
		margin: 0;
		padding: 2px 10px;
		border: none;
		background: none;
		font-family: inherit;
		font-size: 15px;
		font-weight: 700;
		line-height: 18px;
		text-decoration: none;
		text-align: center;
		color: #35c5f0;
		cursor: pointer;
		transition: opacity .1s;
	}	
	
	div.card_content{
		display: flex;
		flex-wrap: wrap;
		margin-right: -7.5px;
		margin-left: -7.5px;
		margin-top: 30px;
		padding-top: 0px;
	}
	
	div.card_item_wrap{
		width: 100%;
		flex: 0 0 33.3333333333%;
		max-width: 33.3333333333%;
		padding-right: 7.5px;
		padding-left: 7.5px;
		min-height: 1px;
		position: relative;
		box-sizing: border-box;
		-webkit-box-flex: 0;
	}
	
	div.card_item{
		margin: 0;
		padding: 0;
	}
	
	article.card_item{
		padding-bottom: 40px;
	}
	
	div.card_writer{
		display: flex;
		-webkit-box-orient: vertical;
		flex-direction: column;
		-webkit-box-pack: center;
		justify-content: center;
		position: relative;
		min-height: 36px;
		margin: 0 0 16px;
		padding: 0 0 0 48px;
	}
	
	address.card_writer_content{
		font-style: normal;
		font-weight: normal;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin-top: -5px;
		font-size: 15px;
		line-height: 19px;
	}
	
	div.card_writer_header{
		margin: 0;
		padding: 0;
		display: flex;
	}
	
	a.card_writer_link{
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 1 auto;
		transition: opacity .1s;
		display: inline-block;
		min-width: 0;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
	
	img.card_writer_img{
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 36px;
		height: 36px;
		border-radius: 100%;
		background-color: #ededed;
	}
	
	span.card_writer_name{
		color: #424242;
		font-weight:700;
		font-style: normal;
		font-size: 15px;
	}
	
	span.seperator{
		line-height: 19px;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		color: #424242;
		font-weight: 700;
		padding:0 3px;
	}
	button.card_item_follow{
		-webkit-font-smoothing: antialiased;
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		color: #35c5f0;
		font: inherit;
		font-weight: 700;
		transition: opacity .1s;
		
	}
	button.card_item_following{
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		font: inherit;
		font-weight: 700;
		transition: opacity .1s;
		color: #bdbdbd;
	}
	p.card_writer_intro{
		margin: 0;
		padding: 0;
		margin-top: 2px;
		font-size: 12px;
		line-height: 16px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	
	div.card_item_content{
		margin: 0;
		padding: 0;
		display: flex;
		-webkit-box-direction: normal;
		-webkit-box-orient: vertical;
		flex-direction: column;
		position: relative;
	}
	
	a.card_item_content_link{
		line-height: 1;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		inset: 0px;
		bottom: 0;
		z-index: 1;
	}
	span.seperator::before {
    content: "·";
    margin: 0px 2px 0px 3px;
}
	
	div.card_item_text{
		padding: 0;
		line-height: 22px;
		transition: opacity .1s;
		margin: 12px 0 0;
		-webkit-box-ordinal-group: 2;
		order: 1;
	}
	div.card_item_desciption{
		margin: 0;
		padding: 0;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		max-height: 66px;
		-webkit-line-clamp: 3;
	}
	div.card_item_image{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	@media (min-width: 768px){
	div.card_item_image2{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		background-color: #ededed;
		overflow: hidden;
		padding-bottom: 100%;
		border-radius: 6px;
	}
	}
	img.card_img{
		border: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform 0.2s ease 0s;
	}
	
	a.card_item_content_link:active~.card_item_image img, 
	a.card_item_content_link:hover~.card_item_image img{
    	transform: translate(-50%,-50%) scale(1.05);
	}
	a.card_item_content_link:active~.card_item_text, 
	a.card_item_content_link:hover~.card_item_text {
		opacity:0.5;
	}
	
	span.card_collection{
		position: absolute;
		top: 12px;
		right: 12px;
	}
	
	span.card_img_count{
		position: absolute;
		bottom: 12px;
		right: 12px;
		font-size: 13px;
		color: #fff;
		text-shadow: 0 0 4px rgba(0,0,0,.5);
	}
	
	aside.card_item_action{
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		display: flex;
		margin-bottom: -12px;
	}
	
	button.card_action, button.card_action_active, a.card_action{
		cursor: pointer;
		touch-action: manipulation;
		font-size: inherit;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		position: relative;
		display: block;
		margin: 0;
		padding: 13px 0 16px;
		background: none;
		border: none;
		text-align: center;
		transition: opacity .1s;
		z-index: 2;
	}
	
	button.card_action:active, button.card_action:hover,
	button.card_action_active:active, button.card_action_active:hover,
	a.card_action:active, a.card_action:hover{
		opacity: .5;
	}
	
	button.card_action>.action_icon{
		text-align: center;
		width: 24;
		height: 24;
		vertical-align: -7px;
		fill: transparent;
		stroke: #424242;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
	}
	button.card_action_active>.action_icon{
		cursor: pointer;
		font-size: inherit;
		text-align: center;
		width: 24;
		height: 24;
		-webkit-tap-highlight-color: transparent;
		vertical-align: -7px;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
		fill: #35c5f0;
		stroke: transparent;
	}
	
	span.count{
		margin-left: 6px;
		font-size: 12px;
		color: #424242;
	}
	
	a.card_action{
		color: #424242;
		text-decoration: none;
	}
	
	svg.comm_icon{
		color: inherit;
		cursor: pointer;
		text-align: center;
		width: 24;
		height: 24;
		border: none;
		fill: #424242;
		vertical-align: -7px;
	} 
	
	
	div.card_item_comment{
		display: flex;
		-webkit-box-direction: normal;
		-webkit-box-orient: vertical;
		flex-direction: column;
		-webkit-box-pack: center;
		justify-content: center;
		position: relative;
		min-height: 24px;
		margin: 12px 0 0;
		padding: 0 0 0 34px;
	}
	
	article.card_item_comment{
		max-height: 66px;
		padding: 4px;
		margin: -4px;
		font-size: 15px;
		line-height: 22px;
		color: #424242;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 3;
		-webkit-box-orient: vertical;
	}
	
	address.comment_wirter{
		font-size: 15px;
		line-height: 22px;
		color: #424242;
		-webkit-tap-highlight-color: transparent;
		font-style: normal;
		display: inline;
		font-weight: 700;
	}
	
	a.writer_link{
		font-style: normal;
		font-weight: 700;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		transition: opacity .1s;
		display: inline-block;
	}
	
	div.writer_img{
		cursor: pointer;
		margin: 0;
		padding: 0;
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 24px;
		height: 24px;
		border-radius: 100%;
		background-color: #ededed;
		overflow: hidden;
	}
	
	img.writer_img{
		border: none;
		width: 24px;
		height: 24px;
	}
	
	span.writer_seperator{
		display: inline-block;
		width: 4px;
		line-height: 0;
		font-size: 0;
		color: transparent;
	}
	
	a.comment_link{
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		transition: opacity .1s;
	}

	a.comment_link:active, a.comment_link:hover{
		opacity:0.5;
	}
		
	p.comment_content{
		color: #424242;
		margin: 0;
		padding: 0;
		border: none;
		display: inline;
	}
	
	div.popout{
		margin: 0;
		padding: 0;
		position: absolute;
		z-index: 1000;
		transform: translateX(-50%);
	}
	
	div.popout_drop_down{
		visibility: visible;
		margin: 0;
		padding: 0;
		transform-origin: 50% 0;
		box-sizing: border-box;
		z-index: 1000;
		position: relative;
		pointer-events: auto;
		margin-top: 17px;
		opacity: 1;
		transform: none;
		transition: opacity .2s,transform .2s;
	}
	div.popout_drop_down:after{
		content: "";
		position: absolute;
		display: block;
		left: 20px;
		border-style: solid;
		top: -8px;
		margin: 0 1px;
		border-width: 0 9px 9px;
		border-color: transparent transparent #fff;
	}
	
	div.drop_down_panel{
		pointer-events: auto;
		-webkit-tap-highlight-color: transparent;
		padding: 0;
		margin: 0 -1px;
		box-sizing: border-box;
		background-color: #fff;
		box-shadow: 0 -1px 16px rgba(0,0,0,.2);
		border-radius: 10px;
		overflow: hidden;
		white-space: nowrap;
		z-index: 1000;
	}
	
	ul.panel_entry_list1,
	ul.panel_entry_list2,
	ul.panel_entry_list3,
	ul.panel_entry_list4{
		margin: 0;
		padding: 0;
		list-style: none;
		position: relative;
		width: 200px;
		min-height: 50px;
		max-height: 425px;
		overflow: auto;
		z-index: 1000;
	}
	
	button.panel_entry_list_item,
	button.panel_entry_list_item_selected{
		touch-action: manipulation;
		user-select: none;
		display: block;
		position: relative;
		width: 100%;
		margin: 0;
		padding: 15px;
		box-sizing: border-box;
		border: none;
		background: #fff;
		font-family: inherit;
		font-size: 15px;
		line-height: 30px;
		text-decoration: none;
		text-align: left;
		cursor: pointer;
		color: #424242;
		font-weight: 700;
		z-index: 1000;
	}
	
	button.panel_entry_list_item:hover,
	button.panel_entry_list_item_selected:hover{
		background-color: #effbff;
	}
	
	div.panel_entry_list_item_header{
		font-family: inherit;
		font-size: 15px;
		line-height: 30px;
		text-align: left;
		cursor: pointer;
		color: #35c5f0;
		font-weight: 700;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
	}
	
	 
	span.panel_entry_list_item_title{
		text-align: left;
		cursor: pointer;
		color: #424242;
		font-weight: 700;
		-webkit-tap-highlight-color: transparent;
		max-width: 100%;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		word-break: break-all;
		line-height: 20px;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	button.panel_entry_list_item_selected span{
		color: #35c5f0;
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
   /* 스크랩 취소 */
   .toast-message__body:last-child {
      margin-right: 20px;
   }
   
   div#ampaginationsm{
   	margin-left:470px;
   }
   
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp" />

	<!-- content -->
	<div class="community">
		<div class="sticky_container" data-sticky-enabled="false">
			<div class="sticky_card_filter">
				<div class="card_filter">
					<div class="filter_bar">
						<div class="filter_bar_control">
							<ul class="filter_bar">
								<li class="item">
									<button id="sort" class="sort">정렬
									<svg class="comm_icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
									<div>
										<div class="popout" data-popout="true" style="position: absolute; z-index: 1000; left:90px; top:50px">
											<div class="popout_drop_down">
												<div class="drop_down_panel" data-panel-title="정렬" data-panel-parents="">
													<ul class="panel_entry_list1">
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item_selected" type="button" value="최근인기순">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="최근인기순">최근인기순</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="역대인기순">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="역대인기순" >역대인기순</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="최신순">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="최신순">최신순</span>
																</div>
															</button>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div> 
								</li>
								<li class="item">
									<button id="sort" class="sort">주거형태
									<svg class="comm_icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
									<div>
										<div class="popout" data-popout="true" style="position: absolute; z-index: 1000; left:170px; top:50px">
											<div class="popout_drop_down">
												<div class="drop_down_panel" data-panel-title="주거형태" data-panel-parents="">
													<ul class="panel_entry_list2">
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="원룸&오피스텔">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title"  id=원룸오피스텔>원룸&오피스텔</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="아파트" >
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title"  id="아파트">아파트</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item " type="button" value="빌라&연립">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="빌라연립">빌라&연립</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="단독주택">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title"  id="단톡주택">단독주택</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="사무공간">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title"  id="사무공간">사무공간</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="상업공간">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="상업공간">상업공간</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="기타">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="기타">기타</span>
															</div>
														</button>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="item">
									<button id="sort" class="sort">스타일
									<svg class="comm_icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
									<div>
										<div class="popout" data-popout="true" style="position: absolute; z-index: 1000; left:280px; top:50px">
											<div class="popout_drop_down">
												<div class="drop_down_panel" data-panel-title="스타일" data-panel-parents="">
													<ul class="panel_entry_list3">
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="모던">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="모던">모던</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item" type="button" value="북유럽">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="북유럽">북유럽</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
															<button id="btn_list" class="panel_entry_list_item " type="button" value="빈티지">
																<div class="panel_entry_list_item_header">
																	<span class="panel_entry_list_item_title" id="빈티지">빈티지</span>
																</div>
															</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="내추럴">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="내추럴">내추럴</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="프로방스&로맨틱">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="프로방스로맨틱">프로방스&로맨틱</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="클래식&앤틱">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="클래식앤틱">클래식&앤틱</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="한국&아시아">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="한국아시아">한국&아시아</span>
															</div>
														</button>
														</li>
														<li class="panel_entry_list_item_wrap">
														<button id="btn_list" class="panel_entry_list_item " type="button" value="유니크">
															<div class="panel-entry-list__item__header">
																<span class="panel_entry_list_item_title" id="유니크">유니크</span>
															</div>
														</button>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>						
						</div>
							<ul class="fliter_bar_tag_list"></ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
	
	<!-- 스크랩 팝업 -->
	<div class="toast-message-root" id="toast-none"> 
	</div>
</body>
</html>