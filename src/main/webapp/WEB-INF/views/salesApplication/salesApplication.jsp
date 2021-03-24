<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%
	Random random = new Random();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
		$(document).ready(function(){
			var i = 1;
			$(document).on("click","input.form_control",function(){
				if ($(this).hasClass("form_control")){
					$(this).removeClass("form_control");
					$(this).addClass("form_control_visible");
				}
			});
			
			$(document).on("focus","input.form_control",function(){
				if ($(this).hasClass("form_control")){
					$(this).removeClass("form_control");
					$(this).addClass("form_control_visible");
				}
			});
		
			$('input[name=category]').click(function(){
				$(".category-filter-bar-tag-list__item").remove();
				$("input:checkbox[name='cate-chk']").prop("checked",false);
				$(".category-filter-bar-tag-list").addClass("category-filter-bar-tag-list-none");
				if($('input[name=category]:checked').val() == "0"){
					$('div.furniture').css('display','block');
					$('div.fabric').css('display','none');
					$('div.others').css('display','none');
				}else if($('input[name=category]:checked').val() == "1"){
					$('div.furniture').css('display','none');
					$('div.fabric').css('display','block');
					$('div.others').css('display','none');
				}else{
					$('div.furniture').css('display','none');
					$('div.fabric').css('display','none');
					$('div.others').css('display','block');
				}
			});
			
			$('button#product_add').click(function(){
				var name = $(this).parent().parent().parent().attr('class').split(" ");
				var output="<div class='row sales_form_group sales_product'><div class='offset1 offset1_1'><label for='sales_application_brand' class='form_label form_label_sales_form'></label></div>"
				output+="<div class='col-8 product_add'><div class='sales_form_control_wrap_product'><div class='product'><div class='pro_label'><label class='product'>상품명</label></div><div><input type='text' name='goods_name' id='sales_application_product_name"+i+"'class='form_control' placeholder='라인 벨벳 소파 1인용' value></div></div>"
				output += "<div class='product'><div class='pro_label'><label class='product'>상품가격</label></div><div><input type='text' name='goods_price' id='sales_application_product_price"+i+"' class='form_control' placeholder='178000' value></div></div>"
				output += "<div class='product'><div class='pro_label'><label class='product'>상품사진</label></div><div><label class='sales_product_file_btn'>사진 추가<input type='file' name='gfile"+(i+1)+"' id='sales_application_product_photo' class='form_control sales-form__file--uploader'></label>"
				output += "<p class='sales-form__product_file__name"+i+" file_name'></p></div></div></div></div></div>"
				$('div.'+name[2]).last().after(output);
				i++;
			});
			
			$('button#product_del').click(function(){
				var name = $(this).parent().parent().parent().attr('class').split(" ");
				if($('div.'+name[2]).length==1){
					alert("상품을 하나 이상 입력해주세요")
				}else{
					$('div.'+name[2]).last().remove();
				}
			});
			/* 상세 카테고리 상단 - 섹깔/모양 변경 */
			$("#btn1-1").click(function(){
				var btn_id = $("#btn1-1").attr('id');
				btn_filter(btn_id);
			});
			$("#btn1-2").click(function(){
				var btn_id = $("#btn1-2").attr('id');
				btn_filter(btn_id);
			});
			$("#btn2-1").click(function(){
				var btn_id = $("#btn2-1").attr('id');
				btn_filter(btn_id);
			});
			$("#btn2-2").click(function(){
				var btn_id = $("#btn2-2").attr('id');
				btn_filter(btn_id);
			});
			$("#btn3").click(function(){
				var btn_id = $("#btn3").attr('id');
				btn_filter(btn_id);
			});
		
			function btn_filter(btn_id) {
				if( $("#"+btn_id).hasClass("category-filter-bar-button")) {
					$("#"+btn_id).addClass("category-filter-bar-button--modal-open");
					$("#"+btn_id).removeClass("category-filter-bar-button");
					$("#"+btn_id+"-category").css("display","block");
				} else {
					$("#"+btn_id).addClass("category-filter-bar-button");
					$("#"+btn_id).removeClass("category-filter-bar-button--modal-open");
					$("#"+btn_id+"-category").css("display","none");
				} 
			}
		
			$(".cate-chk").change(function(){
				var chk_val = $(this).attr("value");
				var cate_word = '<li class="category-filter-bar-tag-list__item" id="'+chk_val.replace(/ /g, '') +'"><button class="category-filter-bar-tag" type="button">'
					cate_word += chk_val
					cate_word += '<svg class="icon" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" opacity=".5"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg></button></li>';
				
				if($(this).is(":checked")) {
					$(".category-filter-bar-tag-list").removeClass("category-filter-bar-tag-list-none");
					$(".category-filter-bar-tag-list__list").append(cate_word);
					
				} else {
					if($(".category-filter-bar-tag-list__item").length ==1){
						$(".category-filter-bar-tag-list").addClass("category-filter-bar-tag-list-none");
					}
					$("li#"+chk_val.replace(/ /g, '')).remove();
					
				} 
			});
		
			$(document).on("click",".category-filter-bar-tag",function(){
				var tag_id=$(this).text();
				if($(".category-filter-bar-tag-list__item").length ==1){
					$(".category-filter-bar-tag-list").addClass("category-filter-bar-tag-list-none");
				}
				$("li#"+tag_id.replace(/ /g, '')).remove();
			});
		
			/* 초기화 클릭시 -> 상세카테고리 단어 리스트 지우기 */
			$(".text").click(function(){
				$(".category-filter-bar-tag-list").css("display","none");
				$("input:checkbox[name='cate-chk']").prop("checked",false);
			});
			
			$(document).on("change","input[type=file]",function(){
				if(window.FileReader){
					var fileName = $(this)[0].files[0].name;
					$(this).parent().parent().children('p').first().text("").text(fileName);
				}
			});
		
			$(document).on("click","button.btn_priority",function(){
				for(var j=1; j<=i; j++){
				if($("#sales_application_company").val()==""){
					alert("회사이름을 입력해주세요");
					$("#sales_application_company").focus();
				}else if($("#sales_application_license1").val()==""){
					alert("사업자 등록번호를 입력해주세요");
					$("#sales_application_license1").focus();
					return false;
				}else if($("#sales_application_license2").val()==""){
					alert("사업자 등록번호를 입력해주세요");
					$("#sales_application_license2").focus();
					return false;
				}else if($("#sales_application_license3").val()==""){
					alert("사업자 등록번호를 입력해주세요");
					$("#sales_application_license3").focus();
					return false;
				}else if($("#sales_application_sales").val() ==""){
					alert("성별을 입력해주세요");
					$("#sales_application_sales").focus();
					return false;
				}else if($("#sales_application_phone1").val()==""){
					alert("전화번호를 입력해주세요");
					$("#slaes_application_phone1").focus();
					return false;
				}else if($("#sales_application_phone2").val()==""){
					alert("전화번호를 입력해주세요");
					$("#sales_application_phone2").focus();
					return false;
				}else if($("#sales_application_phone3").val()==""){
					alert("전화번호를 입력해주세요");
					$("#sales_application_phone3").focus();
					return false;
				}else if($("#sales_application_email").val()==""){
					alert("이메일을 입력해주세요");
					$("#sales_application_email").focus();
					return false;
				}else if($("#sales_application_representative_product_name").val()==""){
					alert("대표상품명을 입력해주세요");
					$("#sales_application_representative_product_name").focus();
					return false;
				}else if($("input[name='category']:checked").length == 0){
					alert("카테고리를 선택해주세요");
					return false;
				}else if($("#sales_application_product_name").val()==""){
					alert("상품명을 입력해주세요");
					$("#sales_application_product_name").focus();
					return false;
				}else if($("#sales_application_product_price").val()==""){
					alert("상품가격을 입력해주세요");
					$("#sales_application_product_price").focus();
					return false;
				}else if($(".sales-form__product_file__name").text() == 0 ){
					alert("상품사진을 추가해주세요");
					return false;
				}else if($("#sales_application_product_name"+j).val()==""){
					alert("상품명을 입력해주세요");
					$("#sales_application_product_name"+j).focus();
					return false;
				}else if($("#sales_application_product_price"+j).val()==""){
					alert("상품가격을 입력해주세요");
					$("#sales_application_product_price"+j).focus();
				}else if($("#sales_application_product_price"+j).val()==""){
					alert("상품가격을 입력해주세요");
					$("#sales_application_product_price"+j).focus();
				}else if($(".sales-form__file__name").text() == "선택된 파일이 없습니다." ){
					alert("상품정보파일을 추가해주세요");
					return false;
				}else if($("input#sales_form_private_policy_agree_check:checked").length == 0){
					alert("개인정보 수집에 동의해주세요");
					return false;
				}else{
					salesForm.submit();
				}
			}
		});
			
		
});
</script>
<style>
	header.sales_application{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		box-sizing: border-box;
		position: relative;
		display: block;
		padding: 60px 0 40px;
		text-align: center;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	span.icon_page_sales_application{
		background-repeat: no-repeat;
		display: inline-block;
		background-image: url("http://localhost:9000/myhouse/images/sales-application.png");
		background-size: 320px auto;
		width: 200px;
		height: 30px;
		background-position: left 0px top 0px;
	}
	
	main.root{
		box-sizing: border-box;
		position: relative;
		display: block;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
	}
	
	div.seller_layout_application{
		margin: 0;
		padding: 0;
		margin-bottom: 100px;
	}
	div.container{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: 1100px;
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		min-width: 688px;
	}
	div.seller_layout_header{
		margin: 0;
		padding: 0;
		text-align: center;
		margin-bottom: 80px;
	}
	
	h1.seller_layout_header_title{
		margin: 0;
		padding: 0;
		display: block;
		font-size: 40px;
		font-weight: 700;
		color: #292929;
	}
	div.seller_layout_header_explain{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		text-align: left;
	}
	ul.seller_layout_header_explain_list{
		padding: 0;
		list-style: none;
		margin: 60px auto -30px;
		list-style-type: disc;
		font-size: 15px;
		color: #292929;
		font-weight: 700;
	}
	
	ul.seller_layout_header_explain_list>li{
		list-style: none;
		list-style-type: disc;
		font-size: 15px;
		color: #292929;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		line-height: 38px;
		font-weight: 700;
	}
	
	::marker {
	    unicode-bidi: isolate;
	    font-variant-numeric: tabular-nums;
	    text-transform: none;
	    text-indent: 0px !important;
	    text-align: start !important;
	    text-align-last: start !important;
	}
	div.seller_layout_body{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: 1136px;
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		min-width: 688px;
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
	
	div.offset1{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 83.3333333333%;
		max-width: 83.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
		margin-left: 8.3333333333%;
	}
	
	p.sales_form_section_title{
		margin: 0;
		padding: 0;
		font-size: 20px;
		color: #000;
		margin-bottom: 40px;
		font-weight: 700;
	}
	
	div.sales_form_group{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-bottom: 20px;
	}
	
	div.offset1_1{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 16.6666666667%;
		max-width: 16.6666666667%;
		padding-right: 10px;
		padding-left: 10px;
		margin-left: 8.3333333333%;
	}
	
	label.form_label_sales_form{
		flex-basis: 100%;
		font-weight: 700;
		line-height: 40px;
	}
	
	span.sales_form_group_required{
		color: #f77;
	}
	
	div.col-8{
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
	}
	div.sales_form_control_wrap{
		margin: 0;
		padding: 0;
		width: 290px;
		display: flex;
		flex-flow: wrap;
		-webkit-box-align: center;
		align-items: center;
	}
	
	label.product{
		font-size:13px;
		cursor: pointer;
	    display: block;
	    margin-bottom:10px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	    margin-top:7px;
	    margin-left:7px;
	    font-weight:700;
	}
	
	input.form_control_product{
		margin: 0;
		font-weight: inherit;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
		box-sizing: border-box;
		height: 40px;
		width: 250px;
		padding: 0 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;	
	}
	
	div.product{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-bottom: 20px;
	}
	
	div.pro_label{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 16.6666666667%;
		max-width: 10.6666666667%;
		padding-right: 10px;
	}
	
	div.product input[type='file']{
		border:none;	
	}
	
	input[type='number']:focus, input[type='text']:focus, 
	input[type='password']:focus, input[type='file']:focus, 
	input[type='tel']:focus, input[type='email']:focus, 
	select:focus, option:focus, textarea:focus, 
	input[type='submit']:focus, button:focus {
    	outline: 0;
	}
	
	input.form_control,input.form_control_visible{
		margin: 0;
		font-weight: inherit;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
		display: block;
		box-sizing: border-box;
		height: 40px;
		width: 100%;
		padding: 0 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;
	}
	
	input.form_control:hover, input.form_control:active,
	input.form_control_product:hover, input.form_control_product:active {
	    background-color: #fafafa;
	    border-color: #bdbdbd;
	}
	
	input.form_control_visible:focus{
		outline:none;
		box-shadow: 0 0 0 3px rgba(130,224,250,0.5);
	}
	
	span.sales-form__divider{
		margin: 0 5px;
	}
	
	div.row_divider{
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-top: 60px;
		margin-bottom: 60px;
		-webkit-box-pack: center;
		justify-content: center;
	}
	
	hr.seller_layout_hr{
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 83.3333333333%;
		max-width: 83.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
		margin: 0;
		border: none;
		border-bottom: 1px solid #dbdbdb;
	}
	
	div.sales_form_groupsales_form_private_policy{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		text-align: center;
	}
	p.sales_form_private_policy_caption{
		margin: 0;
		padding: 0;
		font-size: 12px;
		line-height: 18px;
		margin-bottom: 20px;
		text-align: left;
	}
	table.sales_form_private_policy_info{
		font-size: 15px;
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
		margin-bottom: 40px;
		line-height: 21px;
	}
	table.sales_form_private_policy_info>thead{
		background-color: #fafafa;
	}
	table.sales_form_private_policy_info>thead>tr>td{
		border-spacing: 0;
		line-height: 21px;
		margin: 0;
		width: 33.33333%;
		border: 1px solid #dbdbdb;
		margin-top: 40px;
		padding: 10px 13px;
	}
	table.sales_form_private_policy_info>tbody>tr>td{
		line-height: 21px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		width: 33.33333%;
		border: 1px solid #dbdbdb;
		margin-top: 40px;
		padding: 10px 13px;
	}
	
	div.sales_form_private_policy_agree{
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 auto;
		font-size: 18px;
		display: inline-block;
	}
	div.furniture, div.fabric, div.others{
		padding:5px 0;
		display:none;
	}
	select{
		font-weight: inherit;
		box-sizing: border-box;
		height: 40px;
		width: 200px;
		padding: 0px 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;
	}
	div.product_btn{
		width:130px;
		padding:5px;
	}
	button#product_add,button#product_del{
		font-weight: inherit;
		box-sizing: border-box;
		height: 30px;
		width:50px;
		line-height: 30px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		color: #424242;
		font-size: 12px;
		font-weight:700;
		-webkit-box-flex: 1;
		flex: 1;
	}
	
	.form_radio>.form_radio_label,
	.form_radio .form_check_label, 
	.form_check>.form_radio_label, 
	.form_check .form_check_label {
	    cursor: pointer;
	    display: block;
	    margin-bottom:10px;
	    padding-left:32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
		
	.form_radio>.form_radio_label .check_img, 
	.form_radio .form_check_label .check_img, 
	.form_check>.form_radio_label .check_img,
	.form_check .form_check_label .check_img {
	 	box-sizing: border-box;
		height: 22px;
		width: 22px;
		border-radius: 4px;
		background-color: #ffffff;
		border: solid 1px #dbdbdb;
		display: block;
		transition: .2s ease;
		position: absolute;
		left: 0;
		top: 0;
	}
	
	.form-radio>.form-radio-label>.form-radio, 
	.form-radio>.form-radio-label .form_check, 
	.form-radio .form-check-label>.form-radio, 
	.form-radio .form-check-label .form_check,
	.form_check>.form-radio-label>.form-radio, 
	.form_check>.form-radio-label .form_check, 
	.form_check .form-check-label>.form-radio, 
	.form_check .form_check_label .form_check {
		left: -1000px;
		position: absolute;
		opacity: 0;
	}
	
	.form_radio>.form_radio_label .form_check:focus+.check_img, 
	.form_radio .form_check_label .form_check:focus+.check_img,
	.form_check>.form_radio_label .form_check:focus+.check_img, 
	.form_check .form_check_label .form_check:focus+.check_img {
	 	box-shadow: 0 0 0 3px rgba(130,224,250,0.5);
	 }
	 
	.form_radio>.form_radio_label .form_check:not(:disabled):checked+.check_img,
	.form_radio .form_check_label .form_check:not(:disabled):checked+.check_img,
	.form_check>.form_radio_label .form_check:not(:disabled):checked+.check_img, 
	.form_check .form_check_label .form_check:not(:disabled):checked+.check_img {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	}
	.form_radio>.form_radio_label .check_img:after,
	.form_radio .form_check_label .check_img:after,
	.form_check>.form_radio_label .check_img:after,
 	.form_check .form_check_label .check_img:after {
	    content: "";
	    position: absolute;
	    left: 50%;
	    top: 50%;
	    transform: translate(-50%, -50%);
	    box-sizing: border-box;
	    display: block;
	    width: 14px;
	    height: 14px;
	    background-size: 14px;
	    background-image: url(http://localhost:9000/myhouse/images/ic-checkbox.png);
	    opacity: 0;
	}
	
	.form_radio>.form_radio_label .form_check:not(:disabled):checked+.check_img:after, 
	.form_radio .form_check_label .form_check:not(:disabled):checked+.check_img:after, 
	.form_check>.form_radio_label .form_check:not(:disabled):checked+.check_img:after,
	.form_check .form_check_label .form_check:not(:disabled):checked+.check_img:after {
    	opacity: 1;
	}
	
	div.sales-form__form-check{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		font-size: 15px;
		flex: unset;
		display: inline-block;
		margin-right: 30px;
		margin-top: 8px;
		margin-bottom: 2px;
	}
	
	label.sales-form__file__btn{
		box-sizing: border-box;
		display: inline-block;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 40px;
		padding: 12px 0 13px;
		font-size: 15px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 135px;
	}
	
	label.sales_product_file_btn{
		box-sizing: border-box;
		display: inline-block;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 40px;
		padding: 12px 0 13px;
		font-size: 13px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 100px;
	}
	input.sales-form__file--uploader{
		margin: 0;
		padding: 0;
		font-family: inherit;
		font-weight: inherit;
		font-size: inherit;
		display: none;
	}
	p.sales-form__file__name, p.file_name{
		margin: 0;
		padding: 0;
		margin-left: 15px;
		display: inline-block;
	}
	p.sales-form__file__caption{
		margin: 0;
		padding: 0;
		font-size: 12px;
		line-height: 16px;
		color: #757575;
		margin-top: 15px;
	}
	
	div.sales_form_private_policy_agree{
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 auto;
		font-size: 18px;
		display: inline-block;
	}
	
	div.sales_form_private_policy_agree label{
		margin-left:230px;
	}
	span.sales_form_private_policy_agree_require{
		text-align: center;
		font-size: 18px;
		cursor: pointer;
		line-height: 22px;
		-webkit-tap-highlight-color: transparent;
		color: #35c5f0;
		font-weight: 700;
	}
	
	div.sales_form_btn_apply{
		margin: 0;
		padding: 0;
		margin-top: 60px;
		text-align: center;
	}
	
	button.btn_priority{
		cursor: pointer;
		touch-action: manipulation;
		box-sizing: border-box;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 70px;
		padding: 26px 0;
		font-size: 18px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 360px;
		display: inline-block;
	}
	
	.category-filter-bar-button {
	   display: inline-block;
	   margin: 0;
	   padding: 8px 10px;
	   border: 1px solid #dadce0;
	   border-radius: 4px;
	   box-sizing: border-box;
	   font-size: 14px;
	   font-weight: 400;
	   font-stretch: normal;
	   font-style: normal;
	   line-height: 1.21;
	   letter-spacing: normal;
	   color: #424242;
	   transition: color .1s,background-color .1s,border-color .1s;
	   background-color: #fff;
	}
	
	 .category-filter-bar-button:hover {
		background-color:#F5F5F5;
	} 
	.category-filter-bar-button>.chevron {
	    margin-left: 6px;
	    vertical-align: -1px;
	    color: #dadce0;
	}
	.category-filter-bar-button--modal-open {
	    color: #37507d;
	   /*  border-color: #37507d; */
	    background-color: #fff;
	    font-weight: 700;
	    box-shadow: 0 2px 3px 0 rgba(234,235,239,.4);
	    font-family: Noto Sans KR,Apple SD Gothic Neo,ë§‘ì€ ê³ ë”•,Malgun Gothic,sans-serif;
	    display: inline-block;
	    margin: 0;
	    padding: 8px 10px;
	    border: 1px solid #37507d;
	    border-radius: 4px;
	    box-sizing: border-box;
	    font-size: 14px;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: 1.21;
	    letter-spacing: normal;
	    transition: color .1s,background-color .1s,border-color .1s;
	}
	.category-filter-bar-button--modal-open:active, .category-filter-bar-button--modal-open:hover {
	    border-color: #37507d;
	    background-color: rgba(234,235,239,.4);
	}
	.category-filter-bar-button:focus, .category-filter-bar-button--modal-open:focus {
	    outline: none;
	    text-decoration: none;
	}
	.category-filter-bar-button--modal-open>.chevron {
		margin-left: 6px;
	    vertical-align: -1px;
	    color: #37507d;
	    transform: rotate(180deg);
	}
	.category-filter-bar-tag-list-placeholder {
	    margin-bottom: 19px;
	}
	.category-feed-filter-secondary {
	    margin: 23px 0 4px;
	    padding: 0;
	}
	.category-feed-filter-secondary {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	}
	.category-feed-filter-secondary__summary {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 14px;
	    font-weight: 400;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: normal;
	    letter-spacing: normal;
	    color: #424242;
	}
	.category-feed-filter-secondary__right {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	}
	.drop-down {
	    position: relative;
	    display: inline-block;
	}
	.category-filter-bar-order-button {
	    user-select: none;
	    display: inline-block;
	    padding: 7px 4px;
	    box-sizing: border-box;
	    border: none;
	    background: none;
	    color: #424242;
	    font-size: 14px;
	    font-weight: 400;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: normal;
	    letter-spacing: -.4px;
	    text-align: center;
	    transition: opacity .1s;
	    cursor: pointer;
	}
	.category-filter-bar-order-button>.icon {
	    margin-left: 4px;
	}
	.col-lg-4 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	.col-lg-4 {
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 33.3333333333%;
	    max-width: 33.3333333333%;
	}
	.production-item {
	    padding: 0 0 30px;
	    position:relative;
	}
	.production-item__overlay {
	    position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    z-index: 2;
	}
	.production-item-image {
	    position: relative;
	    background-color: #f5f5f5;
	    padding-bottom: 100%;
	    border-radius: 4px;
	    overflow: hidden;
	}
	.production-item-image>.image {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    width: 100%;
	  	transform: translate(-50%,-50%);
	    transition: transform .2s;
	}
	a.production-item__overlay:hover~.production-item-image>.image,
	a.production-item__overlay:active~.production-item-image>.image {
		transform: translate(-50%,-50%) scale(1.05);
	}
	a.production-item__overlay:hover~.production-item__content>.production-item__header>.production-item__header__name,
	a.production-item__overlay:active~.production-item__content>.production-item__header>.production-item__header__name {
		opacity:0.5;
	}
	
	.production-item-scrap-badge {
	    bottom: 12px;
	    right: 12px;
	    position: absolute;
	    width: 24px;
	    height: 24px;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	    z-index: 2;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge--active {
	    bottom: 12px;
	    right: 12px;
	    position: absolute;
	    width: 24px;
	    height: 24px;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	    z-index: 2;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge>.active-icon, .production-item-scrap-badge>.inactive-icon {
	    position: absolute;
	    top: 0;
	    left: 0;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge>.active-icon {
	    opacity: 0;
	}
	.production-item-scrap-badge--active>.inactive-icon {
	    opacity: 0;
	}
	.production-item-scrap-badge--active>.active-icon {
	    opacity: 1;
	     position: absolute;
	    top: 0;
	    left: 0;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge:focus, .production-item-scrap-badge--active:focus {
		outline: none;
	    text-decoration: none;
	}
	.production-item-image__dark-overlay {
    	position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    transition: background-color .2s;
	}
	.production-item-image:after {
	    content: "";
	    position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    background: rgba(0,0,0,.02);
	}
	.production-item__content {
	    padding: 0 10px;
	}
	.production-item__header {
	    margin: 9px 0 0;
	}
	.production-item__header__brand {
	    display: block;
	    color: #757575;
	    word-break: break-all;
	    font-size: 11px;
	    font-weight: 400;
	    line-height: 13px;
	}
	.production-item__header__name {
	    max-height: 34px;
	    margin-top: 5px;
	    word-break: break-all;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 17px;
	    color: #000;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	}
	.production-item .production-item-price {
	    margin: 2px 0 0;
	}
	.production-item-price {
	    display: block;
	    font-size: 17px;
	    line-height: 23px;
	    font-weight: 700;
	}
	.production-item-price__rate {
	    color: #35c5f0;
	    margin-right: 2px;
	}
	.production-item-price__price {
	    color: #000;
	}
	.production-item .production-item-stats {
	    margin: 3px 0 0;
	}
	.production-item-stats {
	    font-size: 12px;
	    color: #9e9e9e;
	    line-height: 16px;
	    font-weight: 700;
	}
	.production-item-stats--review>.icon {
	    width: 1.1em;
	    height: 1.1em;
	    margin-right: 1px;
	    color: #35c5f0;
	    vertical-align: -2px;
	}
	.production-item-stats--review>.avg {
	    margin-right: 2px;
	    color: #424242;
	    font-weight: 700;
	}
	.production-item .production-item-badge-list {
	    margin: 6px 0 0;
	}
	.production-item-badge-list {
	    display: block;
	}
	.production-item-badge-list>.icon {
	    margin-right: 4px;
	}
	
	/* 우드 톤 : 선택 페이지 */
	.animated-popout.open.open.open {
	    visibility: visible;
	    opacity: 1;
	    transform: none;
	    transition: opacity .2s,transform .2s;
	}
	.popout .drop-down__content.property-filter-bar-drop-down {
	    margin-top: 8px;
	}
	.animated-popout.open-active {
	    pointer-events: auto;
	}
	.panel-drop-down__content {
	    position: relative;
	}
	.drop-down__content {
	    z-index: 1000;
	}
	.animated-popout {
	    transform-origin: 50% 0;
	    box-sizing: border-box;
	}
	.popout .drop-down__content.property-filter-bar-drop-down .drop-down-panel {
	    border-radius: 4px;
	    box-shadow: 0 1px 4px 0 rgba(0,0,0,.3);
	}
	.drop-down-panel {
	    margin: 0 -1px;
	    box-sizing: border-box;
	    background-color: #fff;
	    overflow: hidden;
	    white-space: nowrap;
	}
	
	.drop-down-panel .property-filter-panel-entry-list.wide {
	    width: 460px;
	}
	.drop-down-panel>.property-filter-panel-entry-list {
	    max-height: 370px;
	    overflow: auto;
	    box-sizing: border-box;
	}
	.drop-down-panel .property-filter-panel-entry-list {
	    display: flex;
	    flex-wrap: wrap;
	    position: relative;
	    padding: 16px 18px 16px 22px;
	    min-height: 34px;
	    max-width: 460px;
	}
	.property-filter-panel-entry-list {
	    margin: 0;
	    list-style: none;
	}
	.property-filter-panel-entry-list__item-wrap {
	    -webkit-box-flex: 1;
	    flex: 1 1 50%;
	}
	.drop-down-panel .property-filter-panel-entry-list__item {
	    padding: 8px;
	}
	.property-filter-panel-entry-list__item {
	    display: block;
	    position: relative;
	    width: 100%;
	    margin: 0;
	    box-sizing: border-box;
	    border: none;
	    background: #fff;
	    color: #424242;
	    font-family: inherit;
	    font-weight: 400;
	    font-size: 15px;
	    line-height: 30px;
	    text-decoration: none;
	    text-align: left;
	    cursor: pointer;
	}
	.property-filter-panel-entry-list__item {
	    user-select: none;
	}
	.drop-down-panel .property-filter-panel-range-control .property-filter-panel-entry-list__item {
	    padding: 6px 8px;
	}
	.property-filter-panel-entry-list__item {
	    display: block;
	    position: relative;
	    width: 100%;
	    margin: 0;
	    box-sizing: border-box;
	    border: none;
	    background: #fff;
	    color: #424242;
	    font-family: inherit;
	    font-weight: 400;
	    font-size: 15px;
	    line-height: 30px;
	    text-decoration: none;
	    text-align: left;
	    cursor: pointer;
	}
	.property-filter-panel-entry-list__item {
	    user-select: none;
	}
	
	.property-filter-panel-entry-list__item__header {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	}
	.property-filter-panel-entry-list__item__group {
	    display: flex;
	    -webkit-box-align: start;
	    align-items: flex-start;
	}
	.property-filter-panel-entry-list__item .input-type {
	    display: inline-flex;
	    padding: 0;
	    margin-right: 8px;
	}
	._3zqA8 {
	    position: relative;
	    font-size: 0;
	}
	._3UImz {
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    margin: 0;
	    padding: 0;
	    cursor: inherit;
	    opacity: 0;
	    box-sizing: border-box;
	}
	._3UImz:checked+._2mDYR {
	    border-color: #35c5f0;
	    background-color: #35c5f0;
	    color: #fff;
	}
	._2mDYR {
	    display: inline-block;
	    width: 22px;
	    height: 22px;
	    box-sizing: border-box;
	    padding: 2px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    background-color: #fff;
	    color: #fff;
	    font-size: 16px;
	    line-height: 1;
	    transition: color .1s,border-color .1s,background-color .1s;
	}
	._2UftR {
	    width: 1em;
	    height: 1em;
	}
	._2xClz {
	    position: relative;
	    font-size: 0;
	}
	
	
	.fs-4H {
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    margin: 0;
	    padding: 0;
	    cursor: inherit;
	    opacity: 0;
	    box-sizing: border-box;
	}
	html.js-focus-visible .fs-4H:not(.focus-visible):focus {
	    outline: none;
	}
	._2ekY2, ._2ekY2:before {
	    display: inline-block;
	    background-color: #fff;
	}
	._2ekY2 {
	    width: 22px;
	    height: 22px;
	    box-sizing: border-box;
	    padding: 7px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    font-size: 0;
	    transition: color .1s,border-color .1s,background-color .1s;
	    border-radius: 100%;
	}
	.fs-4H:hover:checked+._2ekY2 {
	    background-color: #fff;
	    border-color: #09addb;
	}
	.property-filter-panel-entry-list__item .input-type input[type=radio]+span:before {
	    position: absolute;
	}
	.fs-4H:hover+._2ekY2:before {
	    background-color: #f5f5f5;
	}
	._2ekY2:before {
	    content: "";
	    width: 6px;
	    height: 6px;
	    border-radius: 100%;
	}
	.fs-4H:checked+._2ekY2 {
	    border-color: #35c5f0;
	    background-color: #35c5f0;
	} 
	.property-filter-panel-range-control__list-item {
	    color: #424242;
	    font-weight: 400;
	}
	
	.drop-down-panel .property-filter-panel-entry-list__item__title {
	    white-space: break-spaces;
	}
	.property-filter-panel-entry-list__item__title {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    max-width: 100%;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	    word-break: break-all;
	    line-height: 22px;
	    transition: opacity .1s ease;
	    color: #424242;
	    font-family: inherit;
	    font-weight: 400;
	    font-size: 15px;
	}
	
	.category-filter-bar-tag-list {
	    -webkit-box-align: start;
	    align-items: flex-start;
	    margin-top: 12px;
	    display: flex;
	    box-sizing: border-box;
	    border-top: 1px solid #eaebef;
	    background-color: #f7f8fa;
	    width: auto;
	    margin-top:0;
	}
	.category-filter-bar-tag-list-none {
	    -webkit-box-align: start;
	    align-items: flex-start;
	    margin-top: 12px;
	    display: none;
	    box-sizing: border-box;
	    border-top: 1px solid #eaebef;
	    background-color: #f7f8fa;
	    width: auto;
	    margin-top:0;
	}
	.category-filter-bar-tag-list__list-container {
	    -webkit-box-flex: 1;
	    flex: 1;
	    position: relative;
	    min-width: 0;
	}
	.category-filter-bar-tag-list__list {
	    margin: 0;
	    padding: 8px 14px;
	    list-style: none;
	    line-height: 0;
	}
	.category-filter-bar-tag-list__item {
	    display: inline-block;
	    margin: 0 2px;
	    padding: 4px 0;
	}
	.category-filter-bar-tag {
	    display: block;
	    margin: 0;
	    padding: 6px 12px;
	    font-size: 14px;
	    border: 1px solid #37507d;
	    border-radius: 18px;
	    font-weight: 400;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: 1.21;
	    letter-spacing: normal;
	    color: #fff;
	    background-color: #37507d;
	    transition: background-color .1s,border-color .1s;
	    white-space: nowrap;
	}
	.category-filter-bar-tag>.icon {
	    margin: 0 -4px 0 7px;
	    vertical-align: -1px;
	    color: #fff;
	}
	.category-filter-bar-tag-list__clear {
	    padding: 18px 24px;
	    margin: 0;
	    border: none;
	    background-color: #f7f8fa;
	    font-size: 14px;
	    font-weight: 700;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: normal;
	    letter-spacing: normal;
	    text-decoration: none;
	    text-align: center;
	    color: #757575;
	    cursor: pointer;
	    transition: opacity .1s ease;
	    white-space: nowrap;
	}
	.category-filter-bar-tag-list__clear>.icon {
	    width: 14px;
	    height: 14px;
	    vertical-align: middle;
	    color: #757575;
	}
	.category-filter-bar-tag-list__clear>.text {
	    vertical-align: middle;
	    margin-left: 4px;
	}
</style>
</head>
<body>

	
	<header class="sales_application">
		<span class='icon_page_sales_application'>
		</span>
	</header>
	
	<main role="main" id="root">
		<div>
			<div class="seller_layout_application">
				<div class="container">
					<div class="seller_layout_header">
						<h1 class="seller_layout_header_title">상품등록 신청</h1>
						<div class="seller_layout_header_explain">
							<ul class="seller_layout_header_explain_list">
								<li>
									작성해주신 정보를 바탕으로 카테고리별 담당 MD가 입점을 검토하여 이메일을 드립니다
								</li>
								<li>
									상품 등록 불가에 대한 통보는 불가 사유와 함께 이메일로 보내드립니다. 회신을 주셔도 답변이 불가한 점 양해 부탁드립니다.
								</li>
								<li>
									상품 등록 신청과 관련된 내용은 일반 고객센터 접수가 불가능합니다. 참고 바랍니다.
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="seller_layout_body">
					<form class="sales_form_application" name="salesForm" action="sales_form_write_proc.do" method="post" enctype="multipart/form-data">
						<div class="sales_form_section">
							<div class="row">
								<input type="hidden" name="ino" value="<%="i_" + String.valueOf(random.nextInt(10000))%>">
								<div class="offset1">
									<p class="sales_form_section_title">회사 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_company" class="form_label form_label_sales_form">
										회사이름
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" name="company" id="sales_application_company" class="form_control" placeholder='스위트홈' value="">
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_license1" class="form_label form_label_sales_form">
										사업자 등록번호
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="tel" id="slaes_application_license1" class="form_control" placeholder='123' value="">
										<span class="sales-form__divider">-</span>
										<input type="tel" id="slaes_application_license2" class="form_control" placeholder='45' value="">
										<span class="sales-form__divider">-</span>
										<input type="tel" id="sales_application_license3" class="form_control" placeholder='67890' value="">
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_homepage" class="form_label form_label_sales_form">
										홈페이지
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_homepage" class="form_control" placeholder='sweethome.co.kr' value="">
									</div>
								</div>
							</div>
							<div class="row_divider">
								<hr class="seller_layout_hr">
							</div>
						</div>
						
						
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">영업담당자 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_sales" class="form_label form_label_sales_form">
										이름
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_sales" class="form_control" placeholder='집냥이' value="">
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_phone1" class="form_label form_label_sales_form">
										전화번호
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="tel" id="sales_application_phone1" class="form_control" placeholder='010' value="">
										<span class="sales-form__divider">-</span>
										<input type="tel" id="sales_application_phone2" class="form_control" placeholder='1234' value="">
										<span class="sales-form__divider">-</span>
										<input type="tel" id="sales_application_phone3" class="form_control" placeholder='5678' value="">
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_email" class="form_label form_label_sales_form">
										이메일
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_email" class="form_control" placeholder='zipnyang@ohou.se' value="">
									</div>
								</div>
							</div>
							<div class="row_divider">
								<hr class="seller_layout_hr">
							</div>
						</div>
					
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">상품 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1 offset1_1">
									<label for="sales_application_brand" class="form_label form_label_sales_form">
										대표 상품명
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" name="ititle" id="sales_application_representative_product_name" class="form_control" placeholder='라인 벨벳 소파 3size' value="">
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1 offset1_1">
									<label for="sales_application_categories" class="form_label form_label_sales_form">
										취급 카테고리
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class="col-8">
								<input type="hidden" id="sales_application__product_categories" name="sales_application[product_categories]" value="">
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--주방">
									<input type="radio" name="category" id="sales_application__category--주방" name="sales_application[category--주방]" class="form_check category__checkbox" value="5">
									<span class="check_img"></span>주방</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--생활용품">
									<input type="radio" name="category" id="sales_application__category--생활용품" name="sales_application[category--생활용품]" class="form_check category__checkbox" value="4">
									<span class="check_img"></span>생활</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--가구">
									<input type="radio" name="category" id="sales_application__category--가구" name="sales_application[category--가구]" class="form_check category__checkbox" value="0">
									<span class="check_img"></span>가구</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--홈데코/조명">
									<input type="radio" name="category" id="sales_application__category--홈데코/조명" name="sales_application[category--홈데코/조명]" class="form_check category__checkbox" value="1">
									<span class="check_img"></span>홈데코/조명</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--반려동물">
									<input type="radio" name="category" id="sales_application__category--반려동물" name="sales_application[category--반려동물]" class="form_check category__checkbox" value="8">
									<span class="check_img"></span>반려동물</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--패브릭">
									<input type="radio" name="category" id="sales_application__category--패브릭" name="sales_application[category--패브릭]" class="form_check category__checkbox" value="11">
									<span class="check_img"></span>패브릭</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--수납/정리">
									<input type="radio" name="category" id="sales_application__category--수납/정리" name="sales_application[category--수납/정리]" class="form_check category__checkbox" value="3">
									<span class="check_img"></span>수납/정리</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--가전">
									<input type="radio" name="category" id="sales_application__category--가전" name="sales_application[category--가전]" class="form_check category__checkbox" value="2">
									<span class="check_img"></span>가전</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--DIY/공구">
									<input type="radio" name="category" id="sales_application__category--DIY/공구" name="sales_application[category--DIY/공구]" class="form_check category__checkbox" value="6">
									<span class="check_img"></span>DIY/공구</label>
								</div>
								
								<div class="furniture">
									<button class="category-filter-bar-button" type="button" id="btn1-1">우드톤
										<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
									</button>
										<button class="category-filter-bar-button" type="button" id="btn1-2">색상
										<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
									</button>
								<div style="display:none;" id="btn1-1-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="우드톤" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="밝은 톤" name="tone">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">밝은 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="중간 톤" name="tone">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">중간 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="어두운 톤" name="tone">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">어두운 톤</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 우드 톤 선택창 -->
									
										
										<div style="display:none;" id="btn1-2-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="색상" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="화이트" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">화이트</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그레이" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그레이</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블랙" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블랙</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="베이지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">베이지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="브라운" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">브라운</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="실버" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">실버</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="골드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">골드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="레드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">레드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="오렌지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">오렌지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="옐로우" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">옐로우</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그린" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그린</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블루" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블루</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="네이비" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">네이비</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="바이올렛" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">바이올렛</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="핑크" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">핑크</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="멀티(혼합)" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">멀티(혼합)</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="투명" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">투명</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 색상 선택창 -->
								</div>
								
								<div class="fabric">
									<button class="category-filter-bar-button" type="button" id="btn2-1">사용계절
										<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
									</button>
										<button class="category-filter-bar-button" type="button" id="btn2-2">색상
										<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
									</button>
									<div style="display:none;" id="btn2-1-category">
									<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="사용계쩔" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="봄/가을" name="season">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">봄/가을</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="여름" name="season">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">여름</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="겨울" name="season">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">겨울</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="사계절" name="season">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">사계절</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div><!-- 우드 톤 선택창 -->
								
									<div style="display:none;" id="btn2-2-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="색상" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="화이트" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">화이트</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그레이" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그레이</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블랙" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블랙</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="베이지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">베이지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="브라운" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">브라운</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="실버" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">실버</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="골드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">골드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="레드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">레드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="오렌지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">오렌지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="옐로우" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">옐로우</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그린" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그린</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블루" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블루</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="네이비" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">네이비</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="바이올렛" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">바이올렛</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="핑크" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">핑크</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="멀티(혼합)" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">멀티(혼합)</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="투명" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">투명</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 색상 선택창 -->
										</div> 
										
										<div class="others">
										<button class="category-filter-bar-button" type="button" id="btn3">색상
											<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
										</button>
										<div style="display:none;" id="btn3-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="색상" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="화이트" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">화이트</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그레이" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그레이</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블랙" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블랙</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="베이지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">베이지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="브라운" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">브라운</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="실버" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">실버</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="골드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">골드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="레드" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">레드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="오렌지" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">오렌지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="옐로우" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">옐로우</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그린" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그린</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블루" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블루</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="네이비" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">네이비</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="바이올렛" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">바이올렛</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="핑크" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">핑크</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="멀티(혼합)" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">멀티(혼합)</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="투명" name="color">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">투명</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 색상 선택창 -->
										</div>
									<div class="category-filter-bar-tag-list category-filter-bar-tag-list-none">
										<div class="category-filter-bar-tag-list__list-container">
											<ul class="category-filter-bar-tag-list__list">
											</ul>
										</div>
										<button class="category-filter-bar-tag-list__clear" type="button"><svg class="icon" width="20" height="20" viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h20v20H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M8.958.833c3.844 0 7.157 2.488 8.417 6.019l.887-1.538a.834.834 0 011.444.833L17.67 9.671a.833.833 0 01-1.138.305l-3.524-2.035a.833.833 0 11.833-1.443l2.054 1.186C14.943 4.654 12.174 2.5 8.958 2.5c-4.022 0-7.291 3.353-7.291 7.5s3.269 7.5 7.291 7.5c2.47 0 4.73-1.272 6.075-3.35a.833.833 0 011.399.905c-1.647 2.546-4.43 4.112-7.474 4.112C4.006 19.167 0 15.058 0 10S4.006.833 8.958.833z"></path></g></svg><span class="text">초기화</span></button>
									</div>
									
									
								</div>
							</div>
						<!-- </div> -->
						<div class="row sales_form_group sales_product">
							<div class="offset1 offset1_1">
								<label for="sales_application_brand" class="form_label form_label_sales_form">
									상품
								<span class="sales_form_group_required">*</span>
								</label>
								<div class="product_btn">
								<button id="product_add" type="button">추가</button>
								<button id="product_del" type="button">삭제</button>
								</div>
							</div>
							<div class="col-8 product_add">
								<div class="sales_form_control_wrap_product">
									<div class="product"><div class="pro_label"><label class="product">상품명</label></div>
									<div><input type="text" name="goods_name" id="sales_application_product_name" class="form_control" placeholder='라인 벨벳 소파 1인용' value=""></div></div>
									<div class="product"><div class="pro_label"><label class="product">상품가격</label></div>
									<div><input type="text" name="goods_price" id="sales_application_product_price" class="form_control" placeholder='178000' value=""></div></div>
									<div class="product"><div class="pro_label"><label class="product">상품사진</label></div>
									<div><label class="sales_product_file_btn">사진 추가
									<input type="file" name="gfile1" id="sales_application_product_photo" class="form_control sales-form__file--uploader"></label>
									<p class="sales-form__product_file__name file_name"></p>
									</div></div>
								</div>
							</div>
						</div>
						
						
						<div class="row sales_form_group">
							<div class="offset1 offset1_1">
								<label for="sales_application_sale_file" class="form_label form_label_sales_form">
									상품 정보 파일
									<span class="sales_form_group_required">*</span>
								</label>
							</div>
							<div class="col-8 pro">
								<label class="btn btn-sm btn-priority sales-form__file__btn">파일 업로드
								<input type="file" name="interior_file" id="sales-form__file__uploader" class="sales-form__file--uploader" data-max-size="1048" accept=".png,.jpg,.jpeg,.pdf,.ppt">
								</label>
								<p class="sales-form__file__name">선택된 파일이 없습니다.</p>
								<p class="sales-form__file__caption">※ 상품정보란에 쓰일 사진을 첨부해주세요</div>	
						</div>
							
					</div>
					
						<div class="row_divider">
							<hr class="seller_layout_hr">
						</div>
						
						
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">개인정보 수집 및 이용 동의</p>
								</div>
							</div>
							<div class="row sales_form_private_policy">
								<div class="offset1">
									<p class="sales_form_private_policy_caption">
										㈜버킷플레이스는 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을 준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.
									</p>
									<table class="sales_form_private_policy_info">
										<thead>
											<tr>
												<td>목적</td>
												<td>항목</td>
												<td>보유기간</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>판매자 식별,상품 검토,공지사항의 전달</td>
												<td>영업담당자의 이름/전화번호/이메일</td>
												<td>상품 등록처리기간이 종료되는 시점</td>
											</tr>
										</tbody>
									</table>
									<div id="sales_form_private_policy_agree" class="form_check sales_form_private_policy_agree">
										<label class="form_check_label" for="sales_form_private_policy_agree_check">
											<input type="checkbox" id="sales_form_private_policy_agree_check" class="form_check">
											<span class="check_img"></span>입점신청을 위한 개인정보 수집 및 이용에 동의
											<span class="sales_form_private_policy_agree_require">(필수)</span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="sales_form_btn_apply">
							<button class="btn_priority" type="button">상품등록 신청 완료</button>						
						</div>	
					</form>
				</div>
			</div>
		</div> 
	</main>
	
</body>
</html>