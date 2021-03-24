<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
	html, body {
	    line-height: 1;
	    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	    -webkit-font-smoothing: antialiased;
	    letter-spacing: -0.4px;
	    font-size: 13px;
	    color: #424242;
	}
	div, form {
		display: block;
	}
	div, form, input, td {
		margin:0;
		padding:0;
	}
	img {
		border:0;
	}
	a {
		touch-action: manipulation;
	}
	a {
		text-decoration: none;
	}
	input {
		font-size: inherit;
	}
	input {
		font-family: inherit;
	    font-weight: inherit;
	}
	input[type="hidden" i] {
	    display: none;
	    appearance: initial;
	    background-color: initial;
	    cursor: default;
	    border: initial;
	}
	input {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: -internal-light-dark(black, white);
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    text-align: start;
	    -webkit-rtl-ordering: logical;
	    font: 400 13.3333px Arial;
	}
	table {
	    border-collapse: collapse;
	    border-spacing: 0;
	}
	table {
	    display: table;
	    box-sizing: border-box;
	    text-indent: initial;
	    border-color: grey;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	th {
		font-style: normal;
		display: table-cell;
   		vertical-align: inherit;
	}
	input[type='text'] {
		border-radius: 0;
	}
	thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	#pre_order {
	    font-size: 14px;
	    width: 760px;
	    margin: 40px auto 0;
	}
	#pre_order #title {
	    font-size: 28px;
	    font-weight: bold;
	    letter-spacing: -0.3px;
	    color: #000000;
	    position: relative;
	    padding-bottom: 10px;
	}
	#pre_order>form>.panel {
	    margin-top: 50px;
	}
	#pre_order>form>.panel>.title {
	    font-size: 20px;
	    padding-bottom: 24px;
	    font-weight: bold;
	    line-height: 1;
	    color: #000000;
	    border-bottom: 2px solid #eee;
	    display: flex;
	}
	#pre_order>form>.panel>.title>.title {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    padding-right: 20px;
	    min-width: 140px;
	    box-sizing: border-box;
	}
	#pre_order>form #order_productions {
	    width: 100%;
	}
	#pre_order>form #order_productions td:first-child {
	    border-right: 1px solid #eee;
	}
	#pre_order>form #order_productions td {
	    border-bottom: 1px solid #eee;
	    box-sizing: content-box;
	}
	#pre_order>form #order_productions div.information {
	    display: flex;
	    padding: 10px;
	}
	#pre_order>form #order_productions div.information>img {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 85px;
	    height: 85px;
	    margin-right: 10px;
	}
	#pre_order>form #order_productions div.information>div {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	#pre_order>form #order_productions div.information>div>.name {
	    font-size: 15px;
	    color: #424242;
	    margin-bottom: 5px;
	    font-weight: bold;
	}
	#pre_order>form #order_productions div.information>div>.option {
	    font-size: 15px;
	    color: #757575;
	    margin-bottom: 5px;
	    word-break: break-word;
	}
	#pre_order>form #order_productions div.information>div>.cost_count {
	    display: flex;
	    font-size: 15px;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.cost {
	    color: #424242;
	    font-weight: bold;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.divider {
	    color: #bdbdbd;
	    padding: 0 10px;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.count {
	    color: #bdbdbd;
	}
	#pre_order>form #order_productions td.delivery_fee {
	    width: 120px;
	    font-size: 12px;
	    text-align: center;
	    color: #757575;
	}
	#pre_order>form #order_productions td {
	    border-bottom: 1px solid #eee;
	    box-sizing: content-box;
	}
	#pre_order>form #order_productions td.delivery_fee>.type {
	    margin-bottom: 5px;
	}
	#pre_order>form>.panel>.input {
	    padding-right: 10px;
	}
	#pre_order>form>.panel>.input>.field {
	    display: flex;
	    margin-top: 20px;
	}
	#pre_order>form>.panel>.input>.field>.label {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 140px;
	    padding-left: 10px;
	    font-size: 15px;
	    color: #424242;
	    line-height: 40px;
	}
	#pre_order>form>.panel>.input>.field>.input {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    display: flex;
	}
	#pre_order>form>.panel>.input>.field .non_edit {
	    background-color: #eeeeee;
	}
	#pre_order>form input[type=text].half {
	    width: 50%;
	}
	#pre_order>form input[type=text] {
	    border: 1px solid #dcdcdc;
	    margin: 0;
	    padding: 0 15px;
	    line-height: 38px;
	    height: 40px;
	    box-sizing: border-box;
	    font-size: 14px;
	}
	#pre_order>form>.panel>.input>.field .non_edit {
	    background-color: #eeeeee;
	}
	#pre_order>form input[type=text].quarter {
	    width: 25%;
	}
	#pre_order>form input[type=text]+span, #pre_order>form input[type=text]+a {
	    display: block;
	    height: 40px;
	    line-height: 40px;
	    color: white;
	    background: #35c5f0;
	    width: calc(25% - 10px);
	    margin-left: 10px;
	    text-align: center;
	    font-size: 15px;
	    font-weight: bold;
	    cursor: pointer;
	    border-radius: 3px;
	} 
	#pre_order>form>.panel>.input>.field>.input.vertical {
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	#pre_order>form>.panel>.input>.field>.input.vertical>input:first-child {
	    margin-bottom: 10px;
	}
	#pre_order>form input[type=text].full {
	    width: 100%;
	}
	#pre_order>form>.panel>.input>.field>.input {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    display: flex;
	}
	#pre_order>form>.panel>.input>.field>.input.phone>input {
	    width: 50%;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message {
	    margin-bottom: 3px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_messages .product_name {
	    font-size: 12px;
	    margin-bottom: 3px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_messages .delivery_each_memo {
	    margin-bottom: 5px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message_presets {
	    position: absolute;
	    width: 610px;
	    background: white;
	    z-index: 100;
	   	top:854;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message_presets>.preset {
	    padding: 10px;
	    font-size: 13px;
	    border-bottom: 1px solid #eee;
	    border-right: 1px solid #eee;
	    border-left: 1px solid #eee;
	}
	.form-check {
	    font-size: 15px;
	}
	.form-radio, .form-check {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.form-check .form-check-label {
	    cursor: pointer;
	    display: block;
	    margin-bottom: 10px;
	    padding-left: 32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
	.form-check .form-check-label .form-check {
	    left: -1000px;
	    position: absolute;
	    opacity: 0;
	}
	#pre_order>form>.panel>.input>.field>.input>.form-check.sms_agreement span {
	    font-size: 13px;
	    color: #757575;
	}
	.form-check .form-check-label .form-check:not(:disabled):checked+.check-img {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	}
	.form-radio>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-radio .form-check-label .form-check:not(:disabled):checked+.check-img:after, .form-check>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-check .form-check-label .form-check:not(:disabled):checked+.check-img:after {
	    opacity: 1;
	}
	.form-check .form-check-label .check-img {
	    box-sizing: border-box;
	    height: 22px;
	    width: 22px;
	    border-radius: 4px;
	    border: solid 1px #dbdbdb;
	    display: block;
	    transition: .2s ease;
	    position: absolute;
	    left: 0;
	    top: 0;
	}
	.form-check .form-check-label .check-img:after {
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
	    opacity: 0;
	    background-image: url(http://localhost:9000/myhouse/images/ic-checkbox2.png);
	}
	#pre_order>form>.panel>.cost {
	    font-size: 15px;
	    padding: 10px 10px 0;
	}
	#pre_order>form>.panel>.cost>.cost_panel {
	    margin-top: 10px;
	    display: flex;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.amount {
   		-webkit-box-flex: 1;
	    flex: 1 0 0px;
	    text-align: right;
	    font-family: Tahoma;
	}
	#pre_order>form>.panel>.cost>.cost_panel.total {
	    margin-top: 20px;
	    font-size: 24px;
	    font-weight: bold;
	    display: flex;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.amount {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    text-align: right;
	    font-family: Tahoma;
	}
	#pre_order>form>.panel>.pay_method {
	    margin-top: 20px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel {
	    display: flex;
	    flex-wrap: wrap;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel input[type=radio] {
	    display: none;
	}
	/* 카드결제 */
	#pre_order>form>.panel>.pay_method>.payment_panel>input[type=radio]:checked+label {
	    background: #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label.top {
	    border-top: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label.first {
	    border-left: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label {
	    -webkit-box-flex: 1;
	    flex: 1 0 12.5%;
	    box-sizing: border-box;
	    text-align: center;
	    cursor: pointer;
	    padding-bottom: 4px;
	    border-bottom: 1px solid #eaebef;
	    border-right: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.img {
	    pointer-events: none;
	    margin: 10px auto 0;
	    width: 64px;
	    height: 64px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.img {
	    pointer-events: none;
	    margin: 10px auto 0;
	    width: 64px;
	    height: 64px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.title {
	    color: #424242;
	    font-size: 13px;
	    line-height: 1;
	    margin-bottom: 2px;
	}
	#pre_order>form #confirm_checkbox {
	    margin-top: 40px;
	    padding: 0 10px;
	}
	#pre_order>form #confirm_checkbox>.all_policy {
	    display: flex;
	}
	#pre_order>form #confirm_checkbox>.all_policy>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    font-size: 12px;
	    line-height: 1;
	    color: #757575;
	}
	#pre_order>form #confirm_checkbox>.all_policy>.opener {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 12px;
	    line-height: 1;
	    color: #bdbdbd;
	    margin-left: 10px;
	    cursor: pointer;
	}
	#pre_order>form #confirm_checkbox>.policies {
	    margin-top: 20px;
	    border-top: 1px solid #eee;
	    display: none;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel {
	    display: flex;
	    margin-top: 20px;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    font-size: 13px;
	    line-height: 1;
	    color: #424242;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content {
	    margin-top: 10px;
	    max-height: 100px;
	    overflow-y: scroll;
	    border: 1px solid #eee;
	    padding: 3px;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th:first-child {
	    border-left: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table .to {
		    width: 25%
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th {
	    text-align: center;
	    background-color: #eeeeee;
	    font-weight: bold;
	    border-top: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th {
	    padding: 10px;
	    font-size: 12px;
	    color: #757575;
	    border-right: 1px solid #dcdcdc;
	    border-bottom: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table td:first-child  {
	    border-left: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table td {
	    height: 66px;
	    padding: 10px;
	    font-size: 12px;
	    color: #757575;
	    border-right: 1px solid #dcdcdc;
	    border-bottom: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel>.opener {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 12px;
	    line-height: 1;
	    color: #bdbdbd;
	    margin-left: 10px;
	    cursor: pointer;
	}
	#pre_order>form #do_payment {
	    margin: 40px 0 40px;
	    text-align: center;
	    color: white;
	    font-weight: bold;
	    font-size: 24px;
	    line-height: 50px;
	    background: #35c5f0;
	    border-radius: 4px;
	    cursor: pointer;
	}
	/* 배송지 변경 */
	.ui-popup {
	    position: fixed;
	    overflow-y: scroll;
	    overflow-x: hidden;
	    left: 0;
	    top: 0;
	    height: 100%;
	    width: 100%;
	    z-index: 100000;
	    background: rgba(0,0,0,0.4);
	}
	#address_lists>.address_list {
	    width: calc(100% - 32px);
	    max-height: calc(100% - 32px);
	    max-width: 514px;
	    background-color: #ffffff;
	    border-radius: 4px;
	    margin: 16px auto;
	    overflow-y: auto;
	    box-sizing: border-box;
	    padding: 20px;
	}
	#address_lists>.address_list>.title.first {
	    margin-top: 0;
	    border-bottom: 0;
	}
	#address_lists>.address_list>.title {
	    padding: 0 10px 10px;
	    color: #424242;
	    font-weight: bold;
	    font-size: 18px;
	}
	#address_lists>.address_list>#addresses {
	    border-bottom: 1px solid #eeeeee;
	    width: 100%;
	}
	#address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	
	#address_lists>.address_list>#addresses td.title {
	    color: #bdbdbd;
	    width: 110px;
	    vertical-align: top;
	    padding-left: 20px;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	#address_lists>.address_list>#addresses tr.name td.content {
	    overflow: hidden;
	}
	#address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	#address_lists>.address_list>#addresses td.content {
	    width: calc(100% - 110px - 120px);
	    color: #424242;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	address_lists>.address_list>#addresses tr.name td.content>.name {
	    max-width: 100px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: pre;
	}
	#address_lists>.address_list>#addresses td.content>div {
	    float: left;
	}
	address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	#address_lists>.address_list>#addresses td.button {
	    vertical-align: top;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	#address_lists>.address_list>#addresses td.button>.select {
	    text-align: center;
	    background-color: #35c5f0;
	    border-radius: 4px;
	    width: 60px;
	    font-size: 13px;
	    color: #ffffff;
	    cursor: pointer;
	    margin-right: 20px;
	}
	#address_lists>.address_list>#form form {
	    padding: 20px 20px 0;
	}
	#address_lists>.address_list>#form form>.field {
	    overflow: hidden;
	    margin-bottom: 20px;
	}
	#address_lists>.address_list>#form form>.field>.title {
	    float: left;
	    width: 110px;
	    font-size: 15px;
	    color: #bdbdbd;
	    line-height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content {
	    float: left;
	    width: calc(100% - 110px);
	    overflow: hidden;
	}
	#address_lists>.address_list>#form form>.field>.content.address_name>input {
	    width: 100%;
	}
	#address_lists>.address_list>#form form>.field>.content>input {
	    line-height: 38px;
	    border: 1px solid #dcdcdc;
	    font-size: 15px;
	    color: #424242;
	    font-weight: 300;
	    padding: 0 15px;
	    box-sizing: border-box;
	    height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content.post_code>input {
	    width: calc(100% - 120px);
	}
	#address_lists>.address_list>#form form>.field>.content>input.non_edit {
	    background-color: #eeeeee;
	    margin-bottom:10px;
	}
	#address_lists>.address_list>#form form>.field>.content>input {
	    line-height: 38px;
	    border: 1px solid #dcdcdc;
	    font-size: 15px;
	    color: #424242;
	    font-weight: 300;
	    padding: 0 15px;
	    box-sizing: border-box;
	    height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content.post_code span {
	    float: right;
	    width: 110px;
	    margin-left: 10px;
	    text-align: center;
	    background-color: #35c5f0;
	    line-height: 40px;
	    color: #ffffff;
	    font-size: 14px;
	    border-radius: 2px;
	    cursor: pointer;
	}
	#address_lists>.address_list>#form form>.field>.content.address>input#address_book_address {
	    margin-bottom: 10px;
	}
	#address_lists>.address_list>#form form>.field>.content.phone>input {
	    width: calc(33.3333% - 8px);
	    float: left;
	    text-align: center;
	    font-weight: 300;
	}
	#address_lists>.address_list>#form form>.field>.content.phone>div {
	    float: left;
	    width: 12px;
	    color: #dcdcdc;
	    line-height: 40px;
	    text-align: center;
	}
	#address_lists>.address_list>#form form>.field>.content.button {
	    width: 100%;
	}
	#address_lists>.address_list>#form form>.field>.content.button>input#submit {
	    margin: 0;
	    width: 47%;
	    color: #ffffff;
	    background-color: #35c5f0;
	    font-size: 15px;
	    border-radius: 3px;
	    border: none;
	    line-height: 40px;
	    text-align: center;
	    font-weight:700;
	    margin-left:10px;
	}
	#address_lists>.address_list>#form form>.field>.content.button>input#cancel {
	    margin: 0;
	    width: 47%;
	    color: #ffffff;
	    background-color: #35c5f0;
	    font-size: 15px;
	    border-radius: 3px;
	    border: none;
	    line-height: 40px;
	    text-align: center;
	    font-weight:700;
	    margin-left:10px;
	}
	._2Jn8D {
		padding-top:10px;
	    max-width: 642px;
	}
	._3Bt8k {
	    position: relative;
	    display: inline-block;
	    width: 100%;
	}
	._3Bt8k ._3K8Q8 {
	    padding-right: 30px;
	}
	._1qwAY {
	    padding: 8px 15px 9px;
	}
	._3ASDR {
	    display: inline-block;
	    width: 100%;
	    margin: 0;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    color: #000;
	    border-radius: 4px;
	    box-sizing: border-box;
	    font-family: Noto Sans KR,Noto Sans CJK KR,맑은 고딕,Malgun Gothic,sans-serif;
	    font-size: 15px;
	    line-height: 21px;
	    transition: border-color .1s,background-color .1s;
	    resize: none;
	}
	._3wKau {
	    position: relative;
	    margin-bottom: 8px;
	}
	.txt_none {
	    display:none;
	}
	._1FAgO._17HFC._1FAgO._17HFC._1FAgO._17HFC {
	    padding-bottom: 25px;
	}
	._1qwAY {
	    padding: 8px 15px 9px;
	}
	._2CKA7 {
	    position: absolute;
	    font-size: 12px;
	    color: #757575;
	    bottom: 10px;
	    right: 15px;
	    user-select: none;
	}
	.form-check .form-check-label .check-img.error {
		border: 1px solid #f77;
	}
	._2zG5A {
	    padding-bottom: 12px;
	    color: #f77;
	    font-weight: 700;
	    font-size: 12px;
	    line-height: 14px;
	}
</style> 
<script>
	$(document).ready(function(){
		addr_ajax();
		amount_ajax();
		   // 배송지 입력 완료 버튼     
		    $("#submit").click(function(){
		    	
		    	var name = $("#name_input").val();
		    		$("#name").val(name);
		    	
		    	var addr1 = $("#addr1").val();
		    	var addr2 = $("#addr2").val();
		    		$("#addr").val(addr1+"/"+addr2);
		    	
		    	var hp1 = $("#hp1").val();
		    	var hp2 = $("#hp2").val();
		    	var hp3 = $("#hp3").val();
		    		$("#phone").val(hp1+"-"+hp2+"-"+hp3);
		    	
		    	if($("#name").val() == "") {
		    		$("#name").css("border","1px solid red");
		    		$("#name").focus();
		    	} else if($("#addr_num").val() == "") {
		    		$("#name").css("border","none");
		    		$("#addr_num").css("border","1px solid red");
		    		$("#addr1").css("border","1px solid red");
		    		$("#addr_num").focus();
		    	} else if($("#addr2").val() == "") {
		    		$("#addr_num").css("border","none");
		    		$("#addr1").css("border","none");
		    		$("#addr2").css("border","1px solid red");
		    		$("#addr2").focus();
		    	} else if($("#hp1").val() == "") {
		    		$("#addr2").css("border","none");
		    		$("#hp1").css("border","1px solid red");
		    		$("#hp2").css("border","1px solid red");
		    		$("#hp3").css("border","1px solid red");
		    		$("#hp1").focus();
		    	} else if($("#hp2").val() == "") {
		    		$("#hp1").css("border","1px solid red");
		    		$("#hp2").css("border","1px solid red");
		    		$("#hp3").css("border","1px solid red");
		    		$("#hp2").focus();
		    	} else if($("#hp3").val() == "") {
		    		$("#hp1").css("border","1px solid red");
		    		$("#hp2").css("border","1px solid red");
		    		$("#hp3").css("border","1px solid red");
		    		$("#hp3").focus();
		    	} else {
		    		$("#hp1").css("border","none");
		    		$("#hp2").css("border","none");
		    		$("#hp3").css("border","none");
		    		
		    		$.ajax({
						url:"addr_insert.do?email="+$("#email").val()+"&addr="+$("#addr").val()+"&addr_num="+$("#addr_num").val()+"&phone="+$("#phone").val()+"&name="+$("#name").val(),
						success:function(result) {
							if(result == "") {
								location.href="http://localhost:9000/myhouse/login.do";
							}else {
								$("#name").val("");
								$("#addr_num").val("");
								$("#addr1").val("");
								$("#addr2").val("");
								$("#hp1").val("");
								$("#hp2").val("");
								$("#hp3").val("");
								
								$("#address_lists").css("display","none");
							}
								
						}
					});
		    		
		    		addr_ajax();
		    		
		    	}
		    	
		    	
		    });
		
		/* 배송지 --- 가져오기 */
		function addr_ajax() {
			
			$.ajax({
				url:"addr_list.do?email=${email}",
				success:function(result) {
					var jdata = JSON.parse(result);
					var output = '';
					var output2 = '';
					/* 
					for(var i in jdata.paylist) {
						var addr = jdata.paylist[0].addr;
						alert(jdata.paylist[i].addr);
						
					} */

					 if(jdata.paylist[0].name == null||jdata.paylist[0].name=='undefined') {
						$("#addr_list").empty();  
						$("#orderer").empty(); 
						
						output += ' <div class="title" ><div class="title">배송지</div></div>';
						output += '<div class="input">';
						output += '<div class="field">';
						output += '<div class="label">받는분</div>';
						output += '<div class="input">';
						output += '<input class="non_edit can_copy half" presence="true" readonly="readonly" value="" data-hj-suppress="" type="text" name="order[recipient]" id="order_recipient">';
						output += '<input type="hidden" name="order[received_name]" id="order_received_name">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">우편번호</div>';
						output += '<div class="input">';
						output += '<input class="non_edit quarter" presence="true" readonly="readonly" value="" data-hj-suppress="" type="text" name="order[received_zip_code]" id="order_received_zip_code">';
						output += '<a data-remote="true" id="select-addr" href="#"><span id="select_address">배송지입력</span></a>';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">주소</div>';
						output += '<div class="input vertical">';
						output += '<input presence="true" readonly="readonly" class="non_edit full" value="" data-hj-suppress="" type="text" name="order[received_at]" id="order_received_at">';
						output += '<input presence="true" readonly="readonly" class="non_edit full" value="" data-hj-suppress="" type="text" name="order[received_at_detail]" id="order_received_at_detail">';
						output += '<input presence="true" value="서울" data-hj-suppress="" class="full" type="hidden" name="order[received_at_sido]" id="order_received_at_sido">';
						output += '<input presence="true" value="000-000" data-hj-suppress="" class="full" type="hidden" name="order[received_at_post_code6]" id="order_received_at_post_code6">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">휴대전화</div>';
						output += '<div class="input phone">';
						output += '<input class="non_edit" readonly="readonly" presence="true" value="" data-hj-suppress="" type="text" name="order[received_phone_number]" id="order_received_phone_number">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label vertical">배송 메모</div>';
						output += '<div class="input vertical">';
						output += '<div class="_2Jn8D">';
						output += '<div class="_3Bt8k">';
						output += '<select class="_3ASDR _1qwAY _3K8Q8" id="addr_select">';
						output += '<option value="배송시 요청사항을 선택해주세요">배송시 요청사항을 선택해주세요</option>';
						output += '<option value="부재시 문앞에 놓아주세요">부재시 문앞에 놓아주세요</option>';
						output += '<option value="배송전에 미리 연락주세요">배송전에 미리 연락주세요</option><option value="부재시 경비실에 맡겨 주세요">부재시 경비실에 맡겨 주세요</option>';
						output += '<option value="부재시 전화주시거나 문자 남겨 주세요">부재시 전화주시거나 문자 남겨 주세요</option>';
						output += '<option value="5">직접입력</option>';
						output += '</select>';
						output += '</div>';
						output += '<div class="_3wKau txt_none" style="margin-top:10px;">';
						output += '<textarea class="_3ASDR _1qwAY _1FAgO _17HFC" id="addr_txt" placeholder="배송 요청사항을 입력해주세요" rows="1" style="overflow: hidden; overflow-wrap: break-word; height: 55px;"></textarea>';
						output += '<div class="_2CKA7" id="addr-count">0<span> / 50</span></div>';
						output += '</div>';
						output += '</div>';
						output += '</div>';
						output += '</div>';
						
						
						output2 += '<div class="title">';
						output2 += '<div class="title">주문자</div>';
						output2 += '</div>';
						output2 += '<div class="input">';
						output2 += '<div class="field">';
						output2 += '<div class="label">이름</div>';
						output2 += '<div class="input">';
						output2 += '<input presence="true" value="" autocomplete="off" data-hj-suppress="" class="half" type="text" name="order[payer_name]" id="order_payer_name">';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label">이메일</div>';
						output2 += '<div class="input email">';
						output2 += '<input presence="true" value="'+jdata.paylist[0].email+'" autocomplete="off" data-hj-suppress="" type="text" name="order[payer_email]" id="order_payer_email">';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label">휴대전화</div>';
						output2 += '<div class="input phone">';
						output2 += ' <input presence="true" value="" data-hj-suppress="" type="text" name="order[payer_phone_number]" id="order_payer_phone_number">';
						output2 += '<div id="verified_phone_number">';
						output2 += '<div class="verified_phone_number" data-value="01087149034" data-verified="true"></div>';
						output2 += '<div class="need_verified" style="display: none;">';
						output2 += '<div id="do_verified_phone_number">인증받기</div>';
						output2 += '<div id="verified_inputs">';
						output2 += '<input id="verified_input" class="donot_check_before_payment" placeholder="인증번호" autocomplete="off" type="text" data-hj-suppress="" size="6">';
						output2 += '<div id="check_verified">확인</div>';
						output2 += '<div id="resend_verified_number">재전송</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label"></div>';
						output2 += '<div class="input">';
						output2 += '<div class="form-check sms_agreement">';
						output2 += '<label class="form-check-label" for="order_sms_aggrement">';
						output2 += '<input name="order[sms_aggrement]" type="hidden" value="0"><input class="form-check" type="checkbox" value="1" checked="checked" name="order[sms_aggrement]" id="order_sms_aggrement">';
						output2 += '<span class="check-img"></span>SMS 수신동의 <span> (배송 정보를 SMS로 보내드립니다.)</span>';
						output2 += '</label>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
					} else {
						$("#addr_list").empty();  
						$("#orderer").empty(); 
						var addr = jdata.paylist[0].addr;
							addr = addr.split("/");
						
						output += ' <div class="title" ><div class="title">배송지</div></div>';
						output += '<div class="input">';
						output += '<div class="field">';
						output += '<div class="label">받는분</div>';
						output += '<div class="input">';
						output += '<input class="non_edit can_copy half" presence="true" readonly="readonly" value="'+jdata.paylist[0].name+'" data-hj-suppress="" type="text" name="order[recipient]" id="order_recipient">';
						output += '<input type="hidden" name="order[received_name]" id="order_received_name">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">우편번호</div>';
						output += '<div class="input">';
						output += '<input class="non_edit quarter" presence="true" readonly="readonly" value="'+jdata.paylist[0].addr_num+'" data-hj-suppress="" type="text" name="order[received_zip_code]" id="order_received_zip_code">';
						output += '<a data-remote="true" id="select-addr" href="#"><span id="select_address">배송지입력</span></a>';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">주소</div>';
						output += '<div class="input vertical">';
						output += '<input presence="true" readonly="readonly" class="non_edit full" value="'+addr[0]+'" data-hj-suppress="" type="text" name="order[received_at]" id="order_received_at">';
						output += '<input presence="true" readonly="readonly" class="non_edit full" value="'+addr[1]+'" data-hj-suppress="" type="text" name="order[received_at_detail]" id="order_received_at_detail">';
						output += '<input presence="true" value="서울" data-hj-suppress="" class="full" type="hidden" name="order[received_at_sido]" id="order_received_at_sido">';
						output += '<input presence="true" value="000-000" data-hj-suppress="" class="full" type="hidden" name="order[received_at_post_code6]" id="order_received_at_post_code6">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label">휴대전화</div>';
						output += '<div class="input phone">';
						output += '<input class="non_edit" readonly="readonly" presence="true" value="'+jdata.paylist[0].phone+'" data-hj-suppress="" type="text" name="order[received_phone_number]" id="order_received_phone_number">';
						output += '</div>';
						output += '</div>';
						output += '<div class="field">';
						output += '<div class="label vertical">배송 메모</div>';
						output += '<div class="input vertical">';
						output += '<div class="_2Jn8D">';
						output += '<div class="_3Bt8k">';
						output += '<select class="_3ASDR _1qwAY _3K8Q8" id="addr_select">';
						output += '<option value="배송시 요청사항을 선택해주세요">배송시 요청사항을 선택해주세요</option>';
						output += '<option value="부재시 문앞에 놓아주세요">부재시 문앞에 놓아주세요</option>';
						output += '<option value="배송전에 미리 연락주세요">배송전에 미리 연락주세요</option><option value="부재시 경비실에 맡겨 주세요">부재시 경비실에 맡겨 주세요</option>';
						output += '<option value="부재시 전화주시거나 문자 남겨 주세요">부재시 전화주시거나 문자 남겨 주세요</option>';
						output += '<option value="5">직접입력</option>';
						output += '</select>';
						output += '</div>';
						output += '<div class="_3wKau txt_none" style="margin-top:10px;">';
						output += '<textarea class="_3ASDR _1qwAY _1FAgO _17HFC" id="addr_txt" placeholder="배송 요청사항을 입력해주세요" rows="1" style="overflow: hidden; overflow-wrap: break-word; height: 55px;"></textarea>';
						output += '<div class="_2CKA7" id="addr-count">0<span> / 50</span></div>';
						output += '</div>';
						output += '</div>';
						output += '</div>';
						output += '</div>';
						
						
						output2 += '<div class="title">';
						output2 += '<div class="title">주문자</div>';
						output2 += '</div>';
						output2 += '<div class="input">';
						output2 += '<div class="field">';
						output2 += '<div class="label">이름</div>';
						output2 += '<div class="input">';
						output2 += '<input presence="true" value="'+jdata.paylist[0].name+'" autocomplete="off" data-hj-suppress="" class="half" type="text" name="order[payer_name]" id="order_payer_name">';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label">이메일</div>';
						output2 += '<div class="input email">';
						output2 += '<input presence="true" value="'+jdata.paylist[0].email+'" autocomplete="off" data-hj-suppress="" type="text" name="order[payer_email]" id="order_payer_email">';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label">휴대전화</div>';
						output2 += '<div class="input phone">';
						output2 += ' <input presence="true" value="'+jdata.paylist[0].phone+'" data-hj-suppress="" type="text" name="order[payer_phone_number]" id="order_payer_phone_number">';
						output2 += '<div id="verified_phone_number">';
						output2 += '<div class="verified_phone_number" data-value="01087149034" data-verified="true"></div>';
						output2 += '<div class="need_verified" style="display: none;">';
						output2 += '<div id="do_verified_phone_number">인증받기</div>';
						output2 += '<div id="verified_inputs">';
						output2 += '<input id="verified_input" class="donot_check_before_payment" placeholder="인증번호" autocomplete="off" type="text" data-hj-suppress="" size="6">';
						output2 += '<div id="check_verified">확인</div>';
						output2 += '<div id="resend_verified_number">재전송</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '<div class="field">';
						output2 += '<div class="label"></div>';
						output2 += '<div class="input">';
						output2 += '<div class="form-check sms_agreement">';
						output2 += '<label class="form-check-label" for="order_sms_aggrement">';
						output2 += '<input name="order[sms_aggrement]" type="hidden" value="0"><input class="form-check" type="checkbox" value="1" checked="checked" name="order[sms_aggrement]" id="order_sms_aggrement">';
						output2 += '<span class="check-img"></span>SMS 수신동의 <span> (배송 정보를 SMS로 보내드립니다.)</span>';
						output2 += '</label>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
						output2 += '</div>';
					}
					
					
					
					
			         $("#addr_list").append(output); 
			         $("#orderer").append(output2);
				}
			});
		}   
		
		
		
		/* 주문 총 결제금액 */
		function amount_ajax() {
				 var gno = new Array();
					$("input.gno").each(function(){
						gno.push($(this).val());
					});
		
			 $.ajax({
				url:"amount_pay.do?email=${email}&gno="+gno,
				success:function(result) {

					var jdata = JSON.parse(result);
					var output = '';
					var group = 0;
					
					$("#amount_pay").empty();
					for(var i in jdata.amount_pay) {
						var goods_price = jdata.amount_pay[i].goods_price;
							goods_price = goods_price.replace(/,/g, '');
							goods_price = parseInt(goods_price);
						var ocount = jdata.amount_pay[i].ocount;
							ocount = parseInt(ocount);
						var amount = goods_price * ocount;
						    group  +=  amount;
						
 					}
					
					output += '<div class="title">최종 결제 금액</div>';
					output += '<div class="cost">';
					output += '<div class="cost_panel">';
					output += '<div class="title">총 상품 금액</div>';
					output += '<div class="amount" id="preview_product_cost" data-hj-suppress="">'+comma(group)+' 원</div>';
					output += '</div>';
					output += '<div class="total cost_panel">';
					output += '<div class="amount" id="preview_selling_cost" data-hj-suppress=""></div>';
					output += '</div>';
					output += '</div>';
					
				     $("#amount_pay").append(output);
				      
				}
				
			}); 
			
		}
		function comma(group) {
			group = String(group);
			return group.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
			 
		
		
		
		/* 배송 메모 - 리스트 */
		$("#delivery_message").focus(function(){
			//alert("focus");
			$("#delivery_message_presets").css("display","block");
			$("#delivery_message_presets").css("top","854");
		});
		$("#delivery_message").blur(function(){
			$("#delivery_message_presets").css("display","none");
		});
	
		/* 배송 메모 - 지정메모1 */
		$("#msg-3").click(function(){
			alert($("#msg-3").text());
			/* $("#delivery_message").val($("#msg-1").text()); */
		});
		
		/* 개인약관 전체 :: 보기 */
		$("#all-policy-open").click(function(){
				$("#all-policy-open").css("display","none");
				$("#all-policy-close").css("display","block");
				$("#all-policy").css("display","block");
		});
		/* 개인약관 전체 :: 닫기 */
		$("#all-policy-close").click(function(){
				$("#all-policy-open").css("display","block");
				$("#all-policy-close").css("display","none");
				$("#all-policy").css("display","none");
		});
		
		/* 개인약관 부분 :: 1 -  열기*/
		$("#part-policy-open").click(function(){
			$("#part-policy-agree").css("display","block"); 
			$("#part-policy-open").css("display","none");
			$("#part-policy-close").css("display","block");
		});
		/* 개인약관 부분 :: 1 - 닫기*/
		$("#part-policy-close").click(function(){
			$("#part-policy-agree").css("display","none");
			$("#part-policy-open").css("display","block");
			$("#part-policy-close").css("display","none");
		});
		/* 개인약관 부분 :: 2 -  열기*/
		$("#part-policy-open-2").click(function(){
			$("#part-policy-agree-2").css("display","block"); 
			$("#part-policy-open-2").css("display","none");
			$("#part-policy-close-2").css("display","block");
		});
		/* 개인약관 부분 :: 2 - 닫기*/
		$("#part-policy-close-2").click(function(){
			$("#part-policy-agree-2").css("display","none");
			$("#part-policy-open-2").css("display","block");
			$("#part-policy-close-2").css("display","none");
		});
		
		/* 배송지 변경 버튼 클릭 */
		$(document).on("click","#select-addr",function(){
			if($("#address_lists").css("display","none")) {
				$("#address_lists").css("display","block");
			} else {
				$("#address_lists").css("display","none");
			}
		});
		
		/* 배송지 전체 입력창 닫기 */
		$("#cancel").click(function(){
			if($("#address_lists").css("display","block")) {
				$("#address_lists").css("display","none");
			}else {
				$("#address_lists").css("display","block");
			}
		})
		
		/* 배송지 직접입력 클릭 */
		$(document).on("change","#addr_select",function(){
			if($(this).val()==5) {
				if($("._3wKau").hasClass("txt_none")) {
					$("._3wKau").removeClass("txt_none");
				}
			}else {
				$("._3wKau").addClass("txt_none");
			}
		});
		
		/* 배송지 textarea */
		$(document).on("keyup","#addr_txt",function(e){
			var inputlength = $(this).val().length;
			$("#addr-count").html(inputlength);
			if (inputlength > 50) {
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
			} else {	
				$(".review-modal__section__title__error-message").css("display","none");
				$("#vcontent").removeClass("error");
				$(".review-modal__section__title-text").removeClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text-none");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
			}
		});
		
		
		/* 주소지 찾기 */
    	$("#find_address_on_address_book").click(function(){
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					fullAddr = data.roadAddress;

				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					fullAddr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if(data.userSelectedType === 'R'){
					//법정동명이 있을 경우 추가한다.
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('addr_num').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr1').value = fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('addr2').focus();
			}
		}).open();
	});

 });
	
	
</script>
</head>
<body>
<!-- header -->
	<jsp:include page="../header1.jsp" />
<div id="pre_order" class="single product">
	<form id="edit_order" class="edit_order" action="#" accept-charset="UTF-8" method="post">
		<input name="utf8" type="hidden" value="✓">
		<input type="hidden" name="_method" value="patch">
		<input type="hidden" name="authenticity_token" value="fl69VV4gF2+Pxpg74o9O+cL3PVzpNO5npox5F1jmZcs3zeLZNSu+e1mPjEFwPxJuX0abIhn7eDpKBH1L6C52Ag==">
		<div id="title"> 주문/결제</div>
		<div class="panel">
	      <div class="title">
	        <div class="title">주문상품</div>
	      </div>
	      <table cellspacing="0" id="order_productions">
	        <tbody data-hj-suppress="" data-hj-ignore-attribute="">
	        <c:forEach var="vo" items="${payment }">
	        	<input type="hidden"  class="gno" value="${vo.gno }">
	        	<input type="hidden"  class="ono" value="${vo.ono }">
	        	<input type="hidden"  class="ocount" value="${vo.ocount }">
	            <tr class="production" data-id="570295" data-cost="99000" data-count="1" data-name="[잉글랜더] [단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors">
	              <td>
	                <div class="information">
	                  <img src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage }" alt="320">
	                  <div style="padding-top:15px;">
	                    <div class="name">${vo.ititle }</div>
	                    <div class="option">${vo.goods_name }</div>
	                    <div class="cost_count">
	                      <div class="cost goods_cost" id="goods_cost" value="${vo.goods_price }">${vo.goods_price } 원</div>
	                      <div class="divider">|</div>
	                      <div class="count">${vo.ocount } 개</div>
	                    </div>
	                  </div>
	                </div>
	              </td>
	              <td class="delivery_fee" data-id="_85249289">
	                <div class="seller">${vo.company }</div>
	              </td>
	            </tr>
	          </c:forEach>
	        </tbody>
	      </table>
	    </div> <!-- panel - 주문상품 -->
	    <div class="panel"id="addr_list">
	     
	      
    	</div> <!-- panel - 배송지  -->
    <div class="panel" id="orderer">
      
     </div> <!-- 주문자 -->
     <div class="panel amount_pay" id ="amount_pay">
	     
    </div> <!-- 최종결제금액 -->
    <div class="panel">
      <div class="title light">결제 수단</div>
      <div class="pay_method">
        <div class="payment_panel">
              <input type="radio" value="kcp_credit_card" name="order[payment_method]" id="order_payment_method_kcp_credit_card">
            <label class="first  top " id="nice_card" data-start-at="" data-end-at="" for="order_payment_method_kcp_credit_card">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_card.png" alt="Img card">
              <div class="title">카드</div>
                <div class="event" data-title="" data-detail1="" data-detail2=""></div>
			</label>              
			<!-- <input type="radio" value="without_bankbook" name="order[payment_method]" id="order_payment_method_without_bankbook">
            <label class=" top " id="bank" data-start-at="" data-end-at="" for="order_payment_method_without_bankbook">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_vbank.png" alt="Img vbank">
              <div class="title">무통장입금</div>
                <div class="event" data-title="" data-detail1="" data-detail2=""></div>
			</label> -->              
			<input type="radio" value="kakaopay" name="order[payment_method]" id="order_payment_method_kakaopay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_kakaopay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_kakaopay.png" alt="Img kakaopay">
              <div class="title">카카오페이</div>
			</label>              
			<!-- <input type="radio" value="chai" name="order[payment_method]" id="order_payment_method_chai">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_chai">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_chai.png" alt="Img chai">
              <div class="title">차이</div>
			</label>   -->            
			<input type="radio" value="payco" name="order[payment_method]" id="order_payment_method_payco">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_payco">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_payco.png" alt="Img payco">
              <div class="title">페이코</div>
			</label>              
			<input type="radio" value="naverpay" name="order[payment_method]" id="order_payment_method_naverpay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_naverpay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_naver.png" alt="Img naver">
              <div class="title">네이버페이</div>
			</label>              
			<input type="radio" value="tosspay" name="order[payment_method]" id="order_payment_method_tosspay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_tosspay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_toss.png" alt="Img toss">
              <div class="title">토스</div>
			</label>              
			<!-- <input type="radio" value="phone" name="order[payment_method]" id="order_payment_method_phone">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_phone">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_phone.png" alt="Img phone">
              <div class="title">핸드폰</div>
			</label> -->
        </div> <!-- payment_panel -->
      </div>
    </div> <!-- 결제수단  -->
    <div id="confirm_checkbox">
      <div class="form-check check_agree_policy">
        <label class="form-check-label" for="check_agree_policy">
          <input type="checkbox" name="check_img" id="check_agree_policy" class="form-check">
          <span class="check-img" id="check_img"></span>결제 진행 필수사항 동의
        </label>
        <div class="open expanded" style="overflow: hidden;">
        	<div class="_2zG5A" style="display:none;">결제 진행 필수사항을 동의해주세요</div>
        </div>
      </div>
      <div class="all_policy">
        <div class="title">개인정보 제 3자 제공 및 결제대행 서비스 표준 이용약관</div>
        <div class="opener" id="all-policy-open" style="display:block;">열기</div>
        <div class="opener" id="all-policy-close" style="display:none;">닫기</div>
      </div>
      <div class="policies" id="all-policy">
        <div class="policy" >
          <div class="title_panel">
            <div class="title">개인정보 제 3자 제공</div>
            <div class="opener" id="part-policy-open" style="display:block;">열기</div>
            <div class="opener" id="part-policy-close" style="display:none;">닫기</div>
          </div>
          <div class="content" id="part-policy-agree" style="display:none;">
            <table>
              <thead>
              <tr>
                <th class="to">제공 받는자</th>
                <th class="goal">제공목적</th>
                <th class="information">항목</th>
                <th class="due_date">보유 및 이용 기간</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="to">㈜잉글랜더 코리아</td>
                <td class="goal">상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
                  전자상거래(통신판매)계약의
                  이행을 위해 필요한 업무의 처리
                </td>
                <td class="information">
                  1) 구매자정보(닉네임, 성명, 휴대폰번호, 이메일주소)<br>
                  2) 수령인정보(성명, 휴대폰번호, 주소)<br>
                  3) 상품 구매, 취소, 반품, 교환정보<br>
                  4) 송장정보
                </td>
                <td class="due_date">상품 제공 완료 후 3개월</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="policy">
          <div class="title_panel">
            <div class="title">개인정보 수집 및 이용</div>
            <div class="opener" id="part-policy-open-2" style="display:block;">열기</div>
            <div class="opener" id="part-policy-close-2"style="display:none;">닫기</div>
          </div>
          <div class="content" id="part-policy-agree-2" style="display:none;">
            <table>
              <thead>
              <tr>
                <th class="to">수집방법</th>
                <th class="goal">수집항목</th>
                <th class="information">목적</th>
                <th class="due_date">보유 및 이용 기간</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="to">상품구매</td>
                <td class="goal">1) 구매자 정보(성명, 휴대전화 번호)<br>2) 수령인 정보(성명, 휴대전화 번호, 주소)</td>
                <td class="information">상품 배송 및 서비스 제공을 위한 사용자 정보 확인</td>
                <td class="due_date" rowspan="4"> 5년 (계약 및 철회, 결제 및 공급)</td>
              </tr>
              <tr>
                <td class="to">결제</td>
                <td class="goal">신용카드 정보</td>
                <td class="information">간편 결제 서비스 제공</td>
              </tr>
              <tr>
                <td class="to">취소·환불</td>
                <td class="goal">환불 계좌번호, 은행명, 예금주명</td>
                <td class="information">결제 서비스 환불</td>
              </tr>
              <tr>
                <td class="to">휴대전화 인증</td>
                <td class="goal">휴대전화 번호</td>
                <td class="information">상품 구매 및 포인트(적립금) 지급 시 본인 인증</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
    </div>
    <div id="do_payment">결제하기</div>
	</form>
</div>

<div id="address_lists" class="ui-popup popup order" data-recipient="order_recipient" data-div_id="" data-name_id="order_received_name" data-phone_id="order_received_phone_number" data-address_id="received_at_full" data-address_pre_id="order_received_at" data-address_zip_code="order_received_zip_code" data-address_extra_id="order_received_at_detail" data-sido="order_received_at_sido" style="display: none;">
	<div id="find_address_layer" style="position: fixed; overflow: hidden; z-index: 10000; padding-top: 20px; background: white; display: none; width: 300px; height: 460px; border: 5px solid; left: 446px; top: 30px;">
	    <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" alt="닫기 버튼">
	</div>
	<div class="address_list" >
	 <c:forEach var="vo" items="${payment_addr}">
		 <c:if test="${vo.addr_num ne null}">
	    <div class="title first" style="margin-bottom:10px;">기존 배송지<div class="close_popup"></div></div>
		    <table id="addresses"  cellspacing="0" data-number="1">
		        <tbody>
		            <tr class="name ">
		                <td class="title">배송지명</td>
		                <td class="content">
		                </td>
		                <td class="button" rowspan="5">
		                    <!-- <div class="select" data-id="6637995">선택</div> -->
		                </td>
		            </tr>
		
		            <tr class="recipient address_6637995">
		                <td class="title">받는분</td>
		                <td class="content">
		                    <div class="recipient">${vo.name }</div>
		                </td>
		            </tr>
		
		            <tr class="post_code address_6637995">
		                <td class="title">우편번호</td>
		                <td class="content">
		                    <div class="post_code">${vo.addr_num }</div>
		                </td>
		            </tr>
		
		            <tr class="address address_6637995">
		                <td class="title">주소</td>
		                <td class="content">
		                    <div class="address">${fn:replace(vo.addr,',','&nbsp;')}</div>
		                    <div class="address_pre" style="display: none;">서울 강남구 가로수길 5 (신사동) </div>
		                    <div class="address_extra" style="display: none;">1층</div>
		                    <div class="address_sido" style="display: none;">서울</div>
		                    <div class="address_post_code6" style="display: none;">000-000</div>
		                </td>
		            </tr>
		
		            <tr class="number address_6637995">
		                <td class="title">전화번호</td>
		                <td class="content">
		                    <div class="number">${vo.phone }</div>
		
		                    <div class="phone1" style="display: none;">010</div>
		                    <div class="phone2" style="display: none;">4512</div>
		                    <div class="phone3" style="display: none;">3698</div>
		                </td>
		            </tr>
		        </tbody>
		    </table>
		    </c:if>
	 </c:forEach>
	
	
	    <div class="title" style="margin-top:15px;">새 배송지 등록</div>
	    <div id="form" class="form">
	        <form class="new_address_book" id="new_address_book" action="#" accept-charset="UTF-8" data-remote="true" method="post" name="addrWriteForm"
	        		style="margin-top:-20px;">
				<input type="hidden" id="email" value="${email }" name="email">
	            <div class="field address_name">
	            </div>
	            <div class="field name">
	                <div class="title">받는분</div>
	                <div class="content name">
	                    <input presence="true" required="required" type="text" id="name_input">
	                    <input type="hidden" name="name" id="name" value="0">
	                </div>
	            </div>
	            <div class="field post_code">
	                <div class="title">우편번호</div>
	                <div class="content post_code">
	                    <input presence="true" required="required" readonly="readonly" class="non_edit" type="text" name="addr_num" id="addr_num">
	                    <input type="hidden" name="address_book[post_code_6]" id="address_book_post_code_6">
	                    <input type="hidden" name="address_book[sido]" id="address_book_sido">
	                    <span id="find_address_on_address_book">주소찾기</span>
	                </div>
	            </div>
	            <div class="field address">
	                <div class="title">주소</div>
	                <div class="content address">
	                    <input presence="true" required="required" readonly="readonly" class="address non_edit" type="text"  id="addr1" style="width:100%;">
	                    <input presence="true" required="required" class="address" type="text"  id="addr2" >
	                    <input type="hidden" name="addr" id="addr" value="0">
	                </div>
	            </div>
	            <div class="field">
	                <div class="title">휴대전화</div>
	                <div class="content phone">
	                        <input required="required" presence="true" class="phone" pattern="^\d{2,3}$" type="number" id="hp1">
	                        <div>-</div>
	                        <input required="required" presence="true" class="phone" pattern="^\d{3,4}$" type="number"  id="hp2">
	                        <div>-</div>
	                        <input required="required" presence="true" class="phone" pattern="^\d{4}$" type="number" id="hp3">
	                        <input type="hidden" name="phone" id="phone" value="0">
	                </div>
	            </div>
	            <div class="field">
	                <div class="title"></div>
	                <div class="content button">
		                <input type="button" value="등록하기" id="submit" data-disable-with="등록">
		                <input type="button" value="취소하기" id="cancel" data-disable-with="취소">
		            </div>
	            </div>
			</form>    
		</div>
	</div>
</div>

<!-- footer -->
	<jsp:include page="../footer.jsp"/>

<script>
    $("#do_payment").click(function () {
    	if($("input:checkbox[name='check_img']").is(":checked") == true) {
    		$("#check_img").removeClass("error");
    		$("._2zG5A").css("display","none");
	    	pay_way();
	    	
	    	
	    	var name = $("#order_payer_name").val();
    	
	    	var addr1 = $("#addr1").val();
	    	var addr2 = $("#addr2").val();
	    		$("#addr").val(addr1+"/"+addr2);
	    	
	    	var phone = $("#order_payer_phone_number").val();
	    	
    		
    		var msg = $("#addr_select").val();
    		
    		 if(msg == 5) {
    			memo = $("#addr_txt").val();
    		} else {
    			memo = $("#addr_select").val();
    		}
    		
	    	$.ajax({
	    		url:"pay_addr_insert.do?email="+$("#email").val()+"&phone="+phone+"&name="+name+"&memo="+memo,
	    		success:function(result) {
	    		}
	    	});
	    	
    	} else {
    		$("#check_img").addClass("error");
    		$("._2zG5A").css("display","block");
    	}
    });

    function pay_way() {
    	
   	 var gno = new Array();
		$("input.gno").each(function(){
			gno.push($(this).val());
		});
   	

	$.ajax({
		url:"nice_card_pay.do?email=${email}&gno="+gno,
		success:function(result) {
	
			var jdata = JSON.parse(result);
			var output = '';
			var group = 0;
			var addr = ''
				
			for(var i in jdata.amount_pay) {
				var goods_price = jdata.amount_pay[i].goods_price;
					goods_price = goods_price.replace(/,/g, '');
					goods_price = parseInt(goods_price);
				var ocount = jdata.amount_pay[i].ocount;
					ocount = parseInt(ocount);
				var amount = goods_price * ocount;
				    group  +=  amount;
				
				    addr = jdata.amount_pay[i].addr;
				    addr = addr.split("/");
			}
			
		    var IMP = window.IMP; // 생략가능
	        IMP.init('imp33600107'); 
	        // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	        // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
	        IMP.request_pay({
	            pg: 'inicis', // version 1.1.0부터 지원.
	            /* 
	                'kakao':카카오페이, 
	                html5_inicis':이니시스(웹표준결제)
	                    'nice':나이스페이
	                    'jtnet':제이티넷
	                    'uplus':LG유플러스
	                    'danal':다날
	                    'payco':페이코
	                    'syrup':시럽페이
	                    'paypal':페이팔
	                */
	            pay_method: 'card',
	            /* 
	                'samsung':삼성페이, 
	                'card':신용카드, 
	                'trans':실시간계좌이체,
	                'vbank':가상계좌,
	                'phone':휴대폰소액결제 
	            */
	            merchant_uid: 'merchant_' + new Date().getTime(),
	            /* 
	                merchant_uid에 경우 
	                https://docs.iamport.kr/implementation/payment
	                위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
	                참고하세요. 
	                나중에 포스팅 해볼게요.
	             */
	            name: jdata.amount_pay[0].name ,
	            //결제창에서 보여질 이름
	            amount: group, 
	            //가격 
	            buyer_email: jdata.amount_pay[0].email,
	            buyer_name: jdata.amount_pay[0].name,
	            buyer_tel: jdata.amount_pay[0].phone,
	            buyer_addr: addr[0]+" "+addr[1],
	            buyer_postcode: jdata.amount_pay[0].addr_num,
	            m_redirect_url: 'https://www.yourdomain.com/payments/complete'
	            /*  
	                모바일 결제시,
	                결제가 끝나고 랜딩되는 URL을 지정 
	                (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐) 
	                */
	        }, function (rsp) {
	            console.log(rsp);
	            if (rsp.success) {
	                var msg = '결제가 완료되었습니다.';
	                msg += '고유ID : ' + rsp.imp_uid;
	                msg += '상점 거래ID : ' + rsp.merchant_uid;
	                msg += '결제 금액 : ' + rsp.paid_amount;
	                msg += '카드 승인번호 : ' + rsp.apply_num;
	                
	                order_ajax();
	                
	            } else {
	                var msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	            }
	            //alert(msg);
	        });
			
		      
		}
		
	}); 
    	
    }
    
    function order_ajax() {
    	 var ono = new Array();
 		$("input.ono").each(function(){
 			ono.push($(this).val());
 		});
        		location.href="http://localhost:9000/myhouse/store_pay_fin_card.do?email=${email}&ono="+ono;
    /* 	$.ajax({
        	url:"store_pay_finish.do?email=${email}&ono="+ono,
        	success:function(result) {
        		alert("결제 완료!");
        	}
        });
    	 */
    }

</script>


	
</body>
</html>