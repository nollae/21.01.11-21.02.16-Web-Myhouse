<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/swiper-bundle.min.js"></script>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script>
<style>
	html, body {
	    line-height: 1;
	    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	    -webkit-font-smoothing: antialiased;
	    letter-spacing: -0.4px;
	    font-size: 13px;
	    color: #424242;
	}
	h1, select {
		font-weight: inherit;
	}
	div, p, li, th, td, h2 {
		margin: 0;
    	padding: 0;
	}
	div, article {
    	display: block;
	}
	a {
		color: inherit;
   	 	text-decoration: none;
   	 	border:none;
	}
	a, button {
		cursor: pointer;
		touch-action: manipulation;
	}
	button {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: -internal-light-dark(black, white);
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    font: 400 13.3333px Arial;
	}
	button:focus {
		outline:0;
	}
	ol, ul {
	    list-style: none;
	}
	ul {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	li {
		 display: list-item;
		 text-align: -webkit-match-parent;
	}
	button {
		font-size:inherit;
	}
	header {
	    box-sizing: border-box;
	    position: relative;
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
	th {
		font-style: normal;
	    font-weight: normal;
	    display: table-cell;
	    vertical-align: inherit;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	small {
	    font-size: smaller;
	}
	.production-selling {
	    position: relative;
	    min-height: 1px;
	}
	.container {
	    margin-right: auto;
	    margin-left: auto;
	    box-sizing: border-box;
	    width: 1136px;
	    max-width: 100%;
	    min-height: 1px;
	}
	.production-selling-overview__category {
	    margin: 20px 0 0;
	    padding: 0;
	    border: none;
	    display: block;
	}
	.commerce-category-breadcrumb__entry {
	    font-size: 15px;
	    display: inline-block;
	    color: #757575;
	    line-height: 1.2;
	    font-weight:600;
	}
	.commerce-category-breadcrumb__entry>.link {
	    transition: opacity .1s;
	    border-left:3px solid #35c5f0;
	    margin-right:10px;
	    padding-left:8px;
	}
	.production-selling-overview__container {
	    margin-top: 40px;
	    margin-bottom: 40px;
	}
	.row {
	    display: flex;
	    flex-wrap: wrap;
	    box-sizing: border-box;
	    margin-right: -10px;
	    margin-left: -10px;
	}
	.col-lg-7 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	.col-lg-7 {
	    position: relative;
	    width:100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 58.3333333333%;
	    max-width: 0 0 58.3333333333%;
	}
	.production-selling-cover-image-container {
	    position: relative;
	    width:520px;
	    height:400px;
	    padding-left:80px;
	}
	/* 캐러셀 */
	.swiper-container {
      width: 100%;
      height: 300px;
      margin-left: auto;
      margin-right: auto;
    }
	.swiper-container.gallery-thumbs {
      overflow: visible;
    }

    .swiper-slide {
      background-size: cover;
      background-position: center;
    }
    .gallery-top {
      height: 95%;
      width: 100%;
      border-radius:5px;
      margin-left:30px;
    }

    .gallery-thumbs {
      height: 20%;
      box-sizing: border-box;
      padding: 10px 0;
    }

    .gallery-thumbs .swiper-slide {
      width: 25%;
      height: 100%;
      opacity: 0.4;
    }

    .gallery-thumbs .swiper-slide-thumb-active {
      opacity: 1;
    }
    .swiper-wrapper.thumb {
     display:block;
     top:-390px;
     right:90px;
    }
    .swiper-wrapper.main .swiper-slide {
	     border-radius : 6px;
    }
    .swiper-slide.thumb-sub {
    	margin:7px 0;
    	border-radius : 4px;
    	width:68px;
    	height:68px;
    	
    	transform: scale(1);
	  -webkit-transform: scale(1);
	  -moz-transform: scale(1);
	  -ms-transform: scale(1);
	  -o-transform: scale(1);
	  transition: all 0.3s ease-in-out; 
    }
    .swiper-slide.thumb-sub:hover {
    	transform: scale(1.02);
	  -webkit-transform: scale(1.02);
	  -moz-transform: scale(1.02);
	  -ms-transform: scale(1.02);
	  -o-transform: scale(1.02);
    	border:2px solid #35c5f0;
    }
    .swiper-slide-thumb-active {
    	border:2px solid #35c5f0;
    }
    
    
    .col-lg-5 {
	    padding-right: 10px;
	    margin-left:-30px;
	    margin-top:-15px;
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 41.6666666667%;
	    max-width: 41.6666666667%;
	}
	.production-selling-header {
	    position: relative;
	}
	.production-selling-header__title__brand-wrap {
	    margin: -3px 0 3px;
	    display: block;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 19px;
	    color: #757575;
	}
	.production-selling-header__title__brand {
	    color: #35c5f0;
	    font-weight: 700;
	    transition: opacity .1s;
	}
	.production-selling-header__title__name {
	    margin: 0;
	    font-size: 22px;
	    line-height: 34px;
	     display: block;
	    font-weight: 400;
	    color: #000;
	}
	.production-selling-header__content {
	    position: relative;
	    min-height: 46px;
	}
	.production-selling-header__content--deal {
	    padding-bottom: 12px;
	}
	.production-selling-header__action {
	    top: 0;
	}
	.production-selling-header__action {
	    position: absolute;
	    right: 0;
	    margin: 0 -6px;
	}
	.production-selling-header__action__button-scrap {
	    display: inline-block;
	}
	.production-selling-header__action__button {
	    margin: 0 3px;
	    padding: 5px 4px 0;
	    background: none;
	    border: none;
	    text-align: center;
	    transition: opacity .1s;
	    line-height: 0;
	    z-index: 2;
	    vertical-align: top;
	}
	.production-selling-header__action__button>.icon--stroke {
	    fill: transparent;
	    stroke: #424242;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	}
	.production-selling-header__action__button>.count {
	    display: block;
	    min-height: 11px;
	    margin: 6px 0 0;
	    color: #757575;
	    font-size: 11px;
	    line-height: 1;
	}
	.production-selling-header__action__button:active, .production-selling-header__action__button:hover {
	    opacity: .5;
	}
	button:focus {
		outline: 0;
	}
	.production-selling-header__action__button.production-selling-header__action__button--active>.icon--stroke {
	    fill: #35c5f0;
	    stroke: transparent;
	}
	.production-selling-header__review-wrap {
	    margin: 8px 0 0;
	}
	.production-selling-header__review {
	    margin: 0;
	    padding: 0;
	    font: inherit;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	}
	.production-selling-header__review__icon {
	    display: inline-block;
	    font-size: 0;
	}
	.production-selling-header__review__icon>svg { 
	    margin-right: 2px;
	    width: 16px;
	    height: 16px;
	}
	.production-selling-header__review__text {
	    margin-left: 8px;
	    font-weight: 700;
	}
	.production-selling-header__review__text {
	    color: #35c5f0;
	    font-size: 13px;
	    vertical-align: 2px;
	}
	.production-selling-header__review__text>.postfix {
	    display: inline;
	}
	.production-selling-header__price {
	    display: table;
	    margin: 20px 0 0;
	}
	.production-selling-header__price__row {
	    display: table-row;
	}
	.production-selling-header__price__discount {
	    display: table-cell;
	    padding-right: 5px;
	    color: #35c5f0;
	    font-weight: 900;
	    vertical-align: bottom;
	    line-height: 1;
	    font-size: 20px;
	}
	.production-selling-header__price__discount>.number {
	    font-size: 44px;
	    font-family: Tahoma,sans-serif;
	}
	.production-selling-header__price__discount>.percent {
	    font-size: 20px;
	}
	.production-selling-header__price__price-wrap {
	    display: table-cell;
	}
	.production-selling-header__price__price {
	    line-height: 1;
	    font-size: 20px;
	    font-weight: 700;
	    margin-top: 5px;
	}
	.production-selling-header__price__price {
	    display: block;
	    color: #000;
	}
	.production-selling-header__price__price>.number {
	    font-size: 32px;
	    font-weight: 900;
	    font-family: Tahoma,sans-serif;
	}
	.production-selling-header__price__price>.won {
	    font-size: 28px;
	    font-weight: 400;
	}
	.production-selling-header__price__badge {
	    margin-left: 8px;
	    vertical-align: 0;
	    font-size: 0;
	}
	.production-selling-header__price__badge .icon {
	    margin-right: 4px;
	}
	.production-selling-header__delivery--deal {
    border-top: 1px solid #ededed;
	}
	.production-selling-header__delivery {
	    padding: 13px 0 0;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-selling-header__delivery__type {
	    display: block;
	    color: #424242;
	}
	.production-selling-overview__option-form.production-selling-option-form {
	    display: block;
	    margin-top: 10px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.production-selling-option-form {
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.selling-option-form-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-option-form__form {
	    margin-top: 20px;
	    min-height: 1px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.deal-selling-option-form-content .production-select-dropdown {
	    margin: 0 0 10px;
	}
	.deal-selling-option-form-content .production-select-dropdown-side {
	    margin: 0 0 10px;
	}
	.production-select-dropdown {
	    position: relative;
	    width: 100%;
	}
	.production-select-dropdown-side {
	    position: relative;
	    width: 100%;
	}
	.production-select-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    font-family: inherit;
	    padding: 0;
	    transition: background-color .1s;
	}
	.production-select-button__production, .production-select-button__production-box,
	.production-select-button__production-sub {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    position: relative;
	    margin: 13px 16px 13px 0;
	}
	.production-select-button__production__blank {
	    padding: 10px 0 11px 16px;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-select-button__production__blank.select-none {
	    display:none;
	}
	.production-select-button__production__icon {
	    position: absolute;
	    right: 0;
	}
	.production-select-button__production__icon>svg {
	    vertical-align: -3px;
	    color: #757575;
	}
	.selling-option-form-content__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    margin-top: 10px;
	}
	.selling-option-form-content__price__left {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	    font-size: 13px;
	}
	.selling-option-form-content__price__right {
	    font-size: 20px;
	    text-align: right;
	}
	.selling-option-form-content__price__left, .selling-option-form-content__price__right {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	}
	.selling-option-form-content__price__number, .selling-option-form-content__price__number-main,
	.selling-option-form-content__price__number-sub {
	    font-family: Tahoma,sans;
	}
	.production-selling-option-form__footer {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 20px -3px 0;
	}
	.production-selling-option-form__footer>.button {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button.button--color-blue-inverted {
	    background-color: #fff;
	    border-color: #35c5f0;
	    color: #35c5f0;
	}
	.button.button--color-blue-inverted:hover {
		background-color:rgb(248, 253, 255);
	}
	.button.button--color-blue {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	    color: #fff;
	}
	.button.button--color-blue:hover {
		background-color:rgb(9, 173, 219);
	}
	.button {
	    user-select: none;
	    display: inline-block;
	    box-sizing: border-box;
	    border: 1px solid transparent;
	    background: none;
	    font-family: inherit;
	    font-weight: 700;
	    text-decoration: none;
	    text-align: center;
	    transition: color .1s,background-color .1s,border-color .1s;
	    border-radius: 4px;
	    cursor: pointer;
	}
	.production-select-dropdown__list-container.open {
	    opacity: 1;
	    transform: none;
	    position: absolute;
	    top: 100%;
	    left: 0;
	    width: 100%;
	    margin-top: 4px;
	    transition: opacity .2s,transform .2s;
	    z-index: 200;
	    border: 1px solid #dbdbdb;
	    border-radius: 4px;
	    overflow: hidden;
	    box-sizing: border-box;
	    display:block;
	}
	.production-select-dropdown__list-container {
	    position: absolute;
	    top: 100%;
	    left: 0;
	    width: 100%;
	    margin-top: 4px;
	    transition: opacity .2s,transform .2s;
	    z-index: 200;
	    border: 1px solid #dbdbdb;
	    border-radius: 4px;
	    overflow: hidden;
	    box-sizing: border-box;
	    display:none;
	}
	.production-select-dropdown__list {
	    max-height: 377px;
	    overflow: auto;
	    background-color: #fff;
	    box-sizing: border-box;
	}
	.production-select-list {
	    position: relative;
	}
	.production-select-list.production-select-dropdown__list {
		/* width:100%;  */
		margin:0;
		padding-left:0;
	}
	.production-select-list__item, .production-select-list__item-main-list,
	.production-select-list__item-sub-list {
	    display: block;
	    background-color: #fff;
	    border-bottom: 1px solid #dbdbdb;
	}
	.production-select-list__item .production-select-item,
	.production-select-list__item-main-list .production-select-item,
	.production-select-list__item-sub-list .production-select-item  {
	    width: 100%;
	    margin: 0;
	    padding: 8px 20px 8px 0;
	    transition: background-color .1s;
	}
	.production-select-item {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: horizontal;
	    flex-direction: row;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    text-align: left;
	    background: none;
	    border: none; 
	    box-sizing: border-box;
	    font-family: inherit;
	}
	.production-select-item:hover {
		background-color: rgb(247, 248, 250)
	}
	.production-select-item__index {
	    width: 60px;
	    color: #757575;
	    font-size: 15px;
	    font-weight: 700;
	    text-align: center;
	}
	.production-select-item__image {
	    position: relative;
	    margin-right: 10px;
	    font-size: 0;
	}
	.production-select-item__image .image {
	    display: block;
	    width: 44px;
	    height: 44px;
	    border-radius: 4px;
	}
	.production-select-item__contents {
	    width: 100%;
	}
	.production-select-item__contents__name {
	    max-height: 32px;
	    margin-top: 5px;
	    word-break: break-all;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 16px;
	    color: #424242;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	}
	.production-select-item__contents__price {
	    display: inline;
	}
	.production-item-price {
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
	.production-select-item__contents__badges {
	    display: inline;
	    vertical-align: -4px;
	    margin-left: 5px;
	}
	.production-select-item__contents__badges>svg {
	    margin-right: 4px;
	}
	.production-select-button__production__index {
	    width: 60px;
	    font-weight: 800;
	    color: #757575;
	    font-size: 15px;
	    text-align: center;
	}
	.production-select-button__production__image--wrap {
	    position: relative;
	}
	.production-select-button__production__image {
	    display: block;
	    width: 44px;
	    height: 44px;
	    border-radius: 4px;
	}
	.production-select-button__production__text {
	    margin-left: 15px;
	    width: 100%;
	    text-align: left;
	    font-size: 13px;
	    color: #424242;
	    max-height: 32px;
	    word-break: break-all;
	    font-weight: 400;
	    line-height: 16px;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	    padding-right: 20px;
	}
	/* 상품 전체 선택 화면 */
	.production-select-button__production.select-none, .selling-option-form-content__list.select-none,
	.production-select-button__production-box.select-none, .production-select-button__production-sub.select-none {
		display:none;
	}
	.order-list.order-none {
		display:none;
	}
	/* 상품 선택 후 주문 갯수 확인 화면 */
	.production-selling-option-form__form .selling-option-form-content__list {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.selling-option-form-content__list {
	    position: relative;
	    min-height: 1px;
	    overflow-y: auto;
	    padding-left:0;
	}
	.selling-option-item {
	    position: relative;
	    margin: 0 0 8px;
	    padding: 10px;
	    background-color: #f5f5f5;
	    border-radius: 6px;
	}
	.selling-option-item__production {
    	margin: 0 0 10px;
	    padding: 0 22px 0 0;
	    font-size: 15px;
	    font-weight: 400;
	    line-height: 20px;
	    color: #424242;
	    max-height: 40px;
	    overflow: hidden;
	    display: -webkit-box;
	    -webkit-box-orient: vertical;
	    -webkit-line-clamp: 2;
	}
	.selling-option-item__production+.selling-option-item__name {
	    font-size: 13px;
	}
	.selling-option-item__name {
	    padding: 0 22px 10px 0;
	    font-weight: 400;
	    line-height: 20px;
	    color: #424242;
	}
	.selling-option-item__delete, .selling-option-item__delete-main,
	.selling-option-item__delete-sub {
	    position: absolute;
	    display: inline-block;
	    top: 0;
	    right: 0;
	    padding: 10px;
	    background: none;
	    border: none;
	    font-size: 0;
	    transition: opacity .1s;
	    color: #757575;
	}
	.selling-option-item__delete:hover, .selling-option-item__delete-main:hover,
	.selling-option-item__delete-sub:hover {
		opacity: 0.4;
	}
	.selling-option-item__controls {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	}
	.option-count-input {
	    width: 80px;
	}
	.select-input {
	    position: relative;
	}
	.input-group {
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	.option-count-input.select-input>.form-control, .option-count-input.select-input>.form-control-sub,
	.option-count-input.select-input>.form-control-review, .option-count-input.select-input>.form-control-question {
	    padding-right: 30px;
	}
	.option-count-input.manual.form-control, .option-count-input.select-input>.form-control,
	.option-count-input.manual.form-control-sub, .option-count-input.select-input>.form-control-sub,
	.option-count-input.manual.form-control-review, .option-count-input.select-input>.form-control-review,
	.option-count-input.manual.form-control-question, .option-count-input.select-input>.form-control-question {
	    height: 24px;
	    padding: 0 10px;
	    font-size: 13px;
	    line-height: 22px;
	    border-radius: 3px;
	    text-align: center;
	    font-family: Tahoma,sans;
	}
	.select-input.input-group>.form-control, .select-input.input-group>.form-control-sub, 
	.select-input.input-group>.form-control-review, .select-input.input-group>.form-control-question {
	    width: 100%;
	}
	
	.select-input>.form-control, .select-input>.form-control-sub, 
	.select-input>.form-control-review, .select-input>.form-control-question {
	    width: 100%;
	    background-image: none;
	}
	.form-control, .form-control-sub, .form-control-review, .form-control-question {
	    transition: .2s border-color, .2s box-shadow, .2s background-color;
	    display: block;
	    box-sizing: border-box;
	    border: solid 1px #dbdbdb;
	    background-color: #ffffff;
	    color: #424242;
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	.form-control-question {
		border-radius :3px;
		padding-left:5px;
	}
	select:not(:-internal-list-box) {
	    overflow: visible !important;
	}
	select {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    align-items: center;
	    white-space: pre;
	    -webkit-rtl-ordering: logical;
	    cursor: default;
	    margin: 0em;
	    font: 400 13.3333px Arial;
	}
	.select-input>.form-control>option, .select-input>.form-control-sub>option,
	.select-input>.form-control-review>option, .select-input>.form-control-question>option  {
	    color: #424242;
	}
	.option-count-input .select-input__icon {
	    top: 2px;
	    right: 5px;
	}
	.select-input__icon {
	    position: absolute;
	    padding: 5px;
	    font-size: 0;
	    cursor: default;
	    color: rgba(0,0,0,.3);
	    pointer-events: none;
	    overflow:hidden;
	}
	.selling-option-item__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 15px;
	    font-weight: 700;
	    line-height: 24px;
	    color: #424242;
	}
	.selling-option-item__price__number {
	    font-family: Tahoma,sans;
	}
	/* nav : 상품정보 ~ 배송까지 */
	.production-selling-navigation-wrap {
	    z-index: 100;
	    transition: top .1s;
	}
	.production-selling-navigation {
	    background-color: #fafafa;
	    border-top: 1px solid #ededed;
	    border-bottom: 1px solid #ededed;
	}
	.production-selling-navigation {
	    z-index: 100;
	    transition: top .1s;
	}
	.production-selling-navigation__content {
	    padding: 0 60px;
	    max-width: 1136px;
	    margin: 0 auto;
	}
	.production-selling-navigation__list {
	    width: 66.6666%;
	    display: flex;
	    margin-bottom:0;
	    margin-top:0;
	}
	.production-selling-navigation__list>li {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	li:first-child>.production-selling-navigation__item {
	    border-left: none;
	}
	.production-selling-navigation__item.production-selling-navigation__item--active {
	    color: #35c5f0;
	    border-bottom: 3px solid #35c5f0;
	    z-index: 1;
	}
	.production-selling-navigation__item {
	    left: 1px;
	    padding: 14px 10px 15px;
	    font-size: 15px;
	    background-color: #fafafa;
	}
	.production-selling-navigation__item {
	    position: relative;
	    display: block;
	    top: 1px;
	    margin: -1px 0 0-1px;
	    box-sizing: border-box;
	    text-align: center;
	    line-height: 20px;
	    font-weight: 700;
	    border-color: transparent transparent #ededed #ededed;
	    transition: color .1s;
	}
	.production-selling-navigation__item:hover {
		color: #35c5f0;
	}
	.production-selling-navigation__item__count {
	    margin-left: 4px;
	    color: #9e9e9e;
	    font-size: 15px;
	}
	.container {
	    margin-right: auto;
	    margin-left: auto;
	    width: 1136px;
	    max-width: 100%;
	    box-sizing: border-box;
	    min-height: 1px;
	}
	.row {
	    display: flex;
	    flex-wrap: wrap;
	    box-sizing: border-box;
	    margin-right: -10px;
	    margin-left: -10px;
	}
	.col-lg-8 {
	    padding-right: 10px;
	    padding-left: 10px;
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 66.6666666667%;
	    max-width: 66.6666666667%;
	}
	.production-selling-content {
	    margin: 60px auto 0;
	    max-width: 692px;
	}
	.production-selling-section {
	    margin: 0 0 80px;
	    padding: 0;
	}
	.production-selling-section__header {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    margin: 20px 0;
	}
	.production-selling-section__title {
	    font-size: 18px;
	    line-height: 24px;
	    font-weight: 700;
	    color: #000;
	}
	.production-selling-section__title>.count {
	    color: #35c5f0;
	    margin-left: 4px;
	}
	/* 상품정보 */
	.production-selling-description.production-selling-description--open {
	    max-height: none;
	}
	.production-selling-description {
	    position: relative;
	    overflow: hidden;
	}
	.production-selling-description__delivery-notice {
	    margin: 0 0 20px;
	}
	.production-selling-description__delivery-notice li {
	    font-size: 15px;
	    line-height: 23px;
	    color: #424242;
	}
	.production-selling-description__delivery-notice li:before {
	    content: "∙";
	    margin-right: 4px;
	}
	.production-selling-description__delivery-notice li b {
	    font-weight: 700;
	}
	.production-selling-description__delivery-notice li .red {
	    color: #f77;
	}
	.production-selling-description__content {
	    font-size: 15px;
	    line-height: 20px;
	}
	.production-selling-description__content img {
	    max-width: 100%!important;
	    height: auto;
	    display: block;
	}
	.production-selling-description__content>* {
	    width: 100%!important;
	}
	.production-selling-section {
	    margin: 0 0 80px;
	    padding: 0;
	}
	/* 리뷰 */
	.production-select-text-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    margin-bottom: 20px;
	    padding: 0;
	}
	.production-select-text-button__text {
	    width: 100%;
	    color: #424242;
	    font-size: 15px;
	    line-height: 21px;
	    display: inline-block;
	    white-space: nowrap;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    text-align: left;
	    padding: 9px 16px 8px;
	}
	.production-select-text-button__icon {
	    position: absolute;
	    right: 16px;
	}
	.production-review-feed__header-v2 {
	    width: 100%;
	    background-color: #f7f8fa;
	    border-radius: 8px;
	    text-align: center;
	    margin: 16px 0 24px;
	}
	.production-review-feed__header-v2__stars {
	    padding: 24px 0;
	    display: flex;
	}
	.production-review-feed__header-v2__stars__badge {
	    padding-top: 50px;
	    -webkit-box-flex: 0;
	    flex: 0 0 305px;
	    border-right: 1px solid #ededed;
	}
	.production-review-feed__header-v2__stars__badge>.badge__mobile {
	    display: none;
	    color: #292929;
	    font-size: 32px;
	    font-weight: 700;
	    text-align: center;
	    margin-bottom: 10px;
	}
	.production-review-feed__header-v2__stars__badge>.icon {
	    font-size: 24px;
	    text-align: center;
	}
	.production-review-feed__header-v2__stars__badge>.icon>svg {
	    margin-right: 2px;
	}
	.production-review-feed__header-v2__stars__badge>.badge__pc {
	    display: block;
	    font-size: 21px;
	    margin-left: 12px;
	    margin-top:10px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    margin: 0 auto;
	}
	.production-review-feed__header-v2__stars__avg__container {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    margin-bottom: 4px;
	}
	.production-review-feed__header-v2__stars__avg__container>svg{
	    font-size:17px;
	}
	.production-review-feed__header-v2__stars__avg__label {
	    font-size: 20px;
	    font-weight: 400;
	    padding-top: 2px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg__number{
	    display: inline-block;
	    font-size: 20px;
	    font-weight: 400;
	    padding-top: 4px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg__number>span {
	    display: inline-block;
	    color: #9e9e9e;
	    font-size: 15px;
	    font-weight: 400;
	    padding-top: 4px;
	}
	.production-selling-section__right, .production-selling-section__right-q,
	.production-selling-section__right-answer, .production-selling-section__right-update,
	.production-selling-section__right-delete {
	    font-size: 15px;
	    line-height: 21px;
	    font-weight: 700;
	    color: #000;
	}
	.production-selling-section__right-answer, .production-selling-section__right-update  {
		display:inline-block;
		margin-left:10px;
		margin-right:3px;
		font-size: 12px;
	}
	.production-selling-section__right-delete {
		display:inline-block;
		margin-left:2px;
		font-size: 12px;
	}
	.production-selling-section__right-answer:hover, .production-selling-section__right-update:hover,
	.production-selling-section__right-delete:hover {
		 opacity: .6;
	}
	.production-selling-section__right>button, .production-selling-section__right-q>button,
	 .production-selling-section__right-answer>button,  .production-selling-section__right-update>button,
	 .production-selling-section__right-delete>button {
	    color: #35c5f0;
	    transition: opacity .1s;
	    font: inherit;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	}
	.production-review-feed__filter {
	    padding: 12px 0;
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    border: solid #ededed;
	    border-width: 1px 0;
	    margin-bottom: 20px;
	}
	.production-review-feed__filter__order-list {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 0 -3px;
	}
	.production-review-feed__filter__order--active {
	    cursor: pointer;
	    margin: 0 6px 0 0;
	    padding: 3px;
	    font-size: 13px;
	    font-weight: 700;
	    line-height: 17px;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	    color: #35c5f0;
	}
	.production-review-feed__filter__order {
	    cursor: pointer;
	    margin: 0 6px 0 0;
	    padding: 3px;
	    font-size: 13px;
	    font-weight: 700;
	    line-height: 17px;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	    color: #757575;
	}
	.production-review-feed__filter__order--photo {
	    padding-left: 12px;
	    border-left: 1px solid #ededed;
	}
	.production-review-feed__filter__order>.icon {
	    vertical-align: -4px;
	    margin-right: 5px;
	    margin-top: -4px;
	}
	.production-review-feed__filter__order--active>.icon {
	    vertical-align: -4px;
	    margin-right: 5px;
	    margin-top: -4px;
	}
	.production-review-feed__filter__order:hover {
	    opacity: .6;
	}
	.production-review-item__container {
	    padding-bottom: 10px;
	    margin-bottom: 10px;
	    border-bottom: 1px solid #ededed;
	}
	.production-review-item {
	    position: relative;
	}
	.production-review-item__writer {
	    display: flex;
	}
	.production-review-item__writer__img  {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    margin-top: 4px;
	    margin-right: 8px;
	    border-radius: 50%;
	    width: 24px;
	    height: 24px;
	}
	.production-review-item__writer__info {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	}
	.production-review-item__writer__info__name {
	    font-size: 13px;
	    color: #424242;
	    margin-bottom: 7px;
	}
	.production-review-item__writer__info__total-star-wrap {
	    display: inline;
	    background: none;
	    border: none;
	    padding: 0;
	}
	.production-review-item__writer__info__total-star {
	    font-size: 16px;
	}
	/* .production-review-item__writer__info__total-star>svg {
	    margin-right: 2px;
	} */
	.production-review-item__writer__info__total-star__down-icon {
	    display: none;
	    color: #35c5f0;
	    vertical-align: 3px;
	    margin: 0 1px 0 4px;
	}
	.production-review-item__writer__info__date {
	    vertical-align: 3px;
	    margin-left: 5px;
	    font-family: Tahoma,sans;
	    font-size: 13px;
	    color: #757575;
	}
	.production-review-item__name {
	    position: relative;
	    display: block;
	    color: #757575;
	    font-size: 13px;
	    margin: 20px 0;
	    padding-left: 10px;
	    line-height: 16px;
	}
	.production-review-item__name:before {
	    position: absolute;
	    left: 0;
	    content: "";
	    width: 3px;
	    height: 100%;
	    background-color: #ededed;
	    border-radius: 2px;
	}
	.production-review-item__name>p {
	    display: block;
	    font-size: 13px;
	    font-weight: 500;
	    color: #424242;
	    margin-bottom: 4px;
	}
	.production-review-item__description {
	    font-size: 15px;
	    line-height: 21px;
	    letter-spacing: normal;
	    color: #424242;
	}
	.production-review-item__img__btn {
	    background: none;
	    border: none;
	    margin: 0;
	    padding: 0;
	}
	.production-review-item__img {
	    width: 112px;
	    height: 112px;
	    border-radius: 4px;
	    background-color: #757575;
	}
	.production-review-item__help {
	    display: flex;
	}
	.production-review-item__help__btn {
	    width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    color: #35c5f0;
	    font-weight: 700;
	    margin-right: 10px;
	    background-color: #fff;
	}
	.production-review-item__help__btn.help-none {
		display:none;
	}
	.production-review-item__help__btn--active {
		width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    font-weight: 700;
	    margin-right: 10px;
	    background-color: #35c5f0;
	    color: #fff;
	}
	.production-review-item__help__btn--active.help-none {
		display:none;
	}
	.production-review-item__help__text {
	    font-size: 13px;
	    font-weight: 400;
	    color: #424242;
	    margin-top: 8px;
	}
	.production-review-item__help__text__number {
	    font-weight: 700;
	}
	.production-review-item__help__btn {
	    width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    font-weight: 700;
	    margin-right: 10px;
	}
	.production-review-item__help__btn>svg {
	    vertical-align: text-top;
	}
	/* 문의하기 */
	.production-question-feed {
	    margin-top: 0;
	}
	.production-question-feed__item {
	    margin: 0 0 20px;
	    border-bottom:1px solid #ededed;
	}
	.production-question-feed__item__header {
	    position: relative;
	    display: block;
	    margin: 10px 0;
	    font-size: 12px;
	    line-height: 16px;
	    color: #424242;
	    border:none;
	}
	.production-question-feed__item__author {
	    margin: 0 0 9px;
	    font-size: 12px;
	    line-height: 16px;
	    color: #bdbdbd;
	}
	.production-question-feed__item__question {
	    padding-left: 22px;
	    font-size: 15px;
	    line-height: 22px;
	    position: relative;
	    margin: 0 0 10px;
	    color: #424242;
	}
	.production-question-feed__item__badge {
	    position: absolute;
	    top: 0;
	    left: 0;
	    color: #35c5f0;
	    font-weight: 700;
	}
	.production-question-feed__item__content {
	    white-space: pre-line;
	}
	.production-question-feed__item__content__option-name {
	    font-size: 13px;
	    line-height: 22px;
	    color: #bdbdbd;
	    margin-bottom: 6px;
	}
	/* 배송/환불 */
	.production-selling-table {
	    font-size: 13px;
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    margin-top: 28px;
	}
	.production-selling-table tr {
	    border: none;
	    border-bottom: 1px solid #ededed;
	}
	.production-selling-table th {
	    padding: 12px 6px;
	    text-align: left;
	    line-height: 1.38;
	    width: 18ch;
	    color: #757575;
	}
	.production-selling-table td {
    	padding: 12px 6px;
	    text-align: left;
	    line-height: 1.38;
	    color: #424242;
	    white-space: pre-line;
	}
	.production-selling-refund__table {
	    margin-bottom: 40px;
	}
	.production-selling-table {
	    font-size: 13px;
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    margin-top: 28px;
	}
	.production-selling-refund__title {
	    margin: 30px 0 5px;
	    color: #424242;
	    font-size: 15px;
	    font-weight: 700;
	    line-height: 21px;
	}
	.production-selling-refund__note {
    	font-size: 13px;
	    line-height: 17px;
	    margin-bottom: 10px;
	    color: #757575;
	}
	.production-selling-refund__list {
	    font-size: 13px;
	    line-height: 17px;
	    counter-reset: index;
	    color: #424242;
	    padding-left:0;
	}
	.production-selling-refund__list>li {
	    position: relative;
	    padding-left: 14px;
	}
	.production-selling-refund__list>li:before {
	    counter-increment: index;
	    content: counter(index) " ";
	    font-weight: 700;
	    position: absolute;
	    top: 0;
	    left: 0;
	}
	.production-selling-refund__list>li small {
	    color: #757575;
	}
	/* 사이드 sticky */
	.production-selling__detail__sidebar {
	    display: block;
	    position: relative;
	}
	.col-4 {
	    padding-right: 10px;
	    padding-left: 10px;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 33.3333333333%;
	    max-width: 33.3333333333%;
	}
	.production-selling-sidebar, .production-selling-sidebar-wrap {
	    z-index: 100;
	}
	.production-selling-sidebar__content {
	    max-width: 300px;
	    padding: 0 0 20px;
	    margin: 0 auto;
	    box-sizing: border-box;
	    height: 100%;
	}
	.production-selling-sidebar-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-sidebar-content__option-form.production-selling-option-form {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    min-height: 0;
	}
	.production-selling-option-form {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.selling-option-form-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-option-form__form {
	    margin-top: 20px;
	    min-height: 1px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.deal-selling-option-form-content .production-select-dropdown {
	    margin: 0 0 10px;
	}
	.deal-selling-option-form-content .production-select-dropdown-side {
	    margin: 0 0 10px;
	}
	.production-select-dropdown {
	    position: relative;
	    width: 100%;
	}
	.production-select-dropdown-side {
	    position: relative;
	    width: 100%;
	}
	.production-select-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    font-family: inherit;
	    padding: 0;
	    transition: background-color .1s;
	}
	.production-select-button__production, .production-select-button__production-box,
	.production-select-button__production-sub {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    position: relative;
	    margin: 13px 16px 13px 0;
	}
	.production-select-button__production__blank {
	    padding: 10px 0 11px 16px;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-select-button__production__icon {
	    position: absolute;
	    right: 0;
	}
	.production-select-button__production__icon>svg {
	    vertical-align: -3px;
	    color: #757575;
	}
	.production-selling-option-form__form .selling-option-form-content__list {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.selling-option-form-content__list {
	    position: relative;
	    min-height: 1px;
	    overflow-y: auto;
    }
    .selling-option-form-content__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    margin-top: 10px;
	}
	.selling-option-form-content__price__left {
	    font-size: 13px;
	}
	.selling-option-form-content__price__right {
	    font-size: 20px;
	    text-align: right;
	}
	.selling-option-form-content__price__right {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	}
	.selling-option-form-content__price__number, .selling-option-form-content__price__number-main,
	.selling-option-form-content__price__number-sub {
	    font-family: Tahoma,sans;
	}
	.production-selling-option-form__footer {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 20px -3px 0;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 55px;
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button:hover {
	    background-color: rgb(250, 250, 250);
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 55px;
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button:hover {
	     background-color: rgb(250, 250, 250);
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button>.icon--stroke {
	    fill: transparent;
	    stroke: #424242;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	    vertical-align: -5px;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button>.icon--stroke {
	    fill: #35c5f0;
	    stroke: transparent;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	    vertical-align: -5px;
	}
	.production-selling-option-form__footer>.button {
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button--color-gray-14-inverted {
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.button {
	    user-select: none;
	    display: inline-block;
	    box-sizing: border-box;
	    border: 1px solid transparent;
	    background: none;
	    font-family: inherit;
	    font-weight: 700;
	    text-decoration: none;
	    text-align: center;
	    transition: color .1s,background-color .1s,border-color .1s;
	    border-radius: 4px;
	    cursor: pointer;
	}
	.production-selling-option-form__footer>.button {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button--color-blue-inverted {
	    background-color: #fff;
	    border-color: #35c5f0;
	    color: #35c5f0;
	}
	.button--color-blue {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	    color: #fff;
	}
	/* 리뷰쓰기 */
	.react-modal.open {
	    background-color: rgba(0,0,0,.5);
	}
	.react-modal {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    justify-content: center;
	    position: fixed;
	    left: 0;
	    top: 0;
	    width: 100%;
	    height: 100%;
	    z-index: 100000;
	}
	.react-modal-none {
		display:none;
	}
	.open>.react-modal__content-wrap {
	    opacity: 1;
	    transform: none;
	}
	.react-modal__content-wrap {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 100%;
	    max-height: 100%;
	    overflow: auto;
	    z-index: 504;
	    box-sizing: border-box;
	}
	.review-modal__modal {
	    width: 760px;
	}
	.react-modal__content {
	    margin: 20px auto;
	    background-color: #fff;
	    box-sizing: border-box;
	    border-radius: 4px;
	}
	.review-modal {
	    position: relative;
	    border-radius: 4px;
	    background-color: #fff;
	    color: #292929;
	    padding: 40px 40px;
	    margin:0 auto;
	}
	.review-modal__title {
	    line-height: 1.35;
	    font-weight: 700;
	    text-align: center;
	    font-size: 20px;
	    display: block;
	}
	.review-modal__close {
	    display: flex;
	    -webkit-box-pack: center;
	    justify-content: center;
	    -webkit-box-align: center;
	    align-items: center;
	    position: absolute;
	    top: 10px;
	    right: 10px;
	    width: 40px;
	    height: 40px;
	    border: 0;
	    cursor: pointer;
	    background-color: #fff;
	}
	.review-modal__close__icon {
	    width: 20px;
	    height: 20px;
	}
	.review-modal__form__product {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    margin: 20px 0 30px;
	}
	.review-modal__form__product__image {
	    width: 100px;
	    height: 100px;
	    border-radius: 4px;
	}
	.review-modal__form__product__contents {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    margin-left: 12px;
	    display:inline-block;
	}
	.review-modal__form__product__contents__brand {
	    font-size: 13px;
	    color: #757575;
	    margin-bottom: 10px;
	}
	.review-modal__form__product__contents__name {
	    margin-bottom: 6px;
	    font-size: 17px;
	    line-height: 1.2;
	}
	.review-modal__form__product__contents__options {
	    font-size: 13px;
	    line-height: 1.3;
	    color: #757575;
	}
	.review-modal__section {
	    position: relative;
	    width: 100%;
	    margin-top:20px;
	}
	.review-modal__section__title, .review-modal__section__title-star,
	.review-modal__section__title-photo, .review-modal__section__title-question, .review-modal__section__title-text,
	.review-modal__section__title-goods-list{
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    font-size: 15px;
	    font-weight: 700;
	    margin-bottom: 15px;
	}
	.review-modal__form__star:first-of-type{
	    margin-top: 0;
	}
	.review-modal__form__star {
	    display: inline-flex;
	    margin: 30px 60px 0 0;
	}
	.review-modal__form__star__label {
	    font-size: 15px;
	    line-height: 40px;
	    width: 55px;
	    text-align:center;
	    padding-right:10px;
	}
	.rating-input>li {
	    display: inline-block;
	}
	.review-modal__form__star__value>.rating-input>li>.rating-input__star {
	    font-size: 36px;
	    padding-right: 4px;
	}
	.rating-input__star {
	    color: #dbdbdb;
	    line-height: 0;
	    cursor: pointer;
	    transition: color .1s;
	}
	.rating-input__star>input {
	    position: absolute;
	    opacity: 0;
	    z-index: -10000;
	}
	/* 별점 제안 */
	.rating-input__star.suggested {
	    color: #82e0fa;
	}
	/* 별점 결정 */	
	.rating-input__star.selected {
	    color: #35c5f0;
	}
	.rating-input__star {
	    line-height: 0;
	    cursor: pointer;
	    transition: color .1s;
	}
	
	.review-modal__section__explain {
	    font-size: 13px;
	    margin-bottom: 10px;
	}
	.review-modal .upload-button {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    justify-content: center;
	    width: 100%;
	    height: 45px;
	    border-radius: 4px;
	    font-weight: 700;
	    font-size: 15px;
	    padding: 0;
	    line-height: 1;
	    margin-top: 10px;
	}
	.review-modal .upload-button input {
		width:80%;
		display:none;
	}
	.button--color-blue-inverted {
	    background-color: #fff;
	    border-color: #35c5f0;
	    color: #35c5f0;
	}
	.button {
	    user-select: none;
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
	}
	.review-modal .upload-button>svg {
	    width: 24px;
	    height: 24px;
	    margin-right: 8px;
	    fill: #35c5f0;
	}
	.review-modal__form__review-input.form-control, .review-modal__form__review-input.form-control-sub
	,.review-modal__form__review-input.form-control-review ,.review-modal__form__review-input.form-control-question {
	    padding-bottom: 25px;
	    min-height: 110px;
	    font-size: 15px;
	}
	textarea.form-control, textarea.form-control-sub,
	textarea.form-control-qustion {
	    resize: none;
	    line-height: 20px;
	    padding-top: 9px;
	    padding-bottom: 9px;
	}
	.form-control, .form-control-sub, .form-control-review, .form-control-qustion{
	    transition: .2s border-color, .2s box-shadow, .2s background-color;
	    display: block;
	    box-sizing: border-box;
	    width: 100%;
	    padding: 0 15px;
	    border-radius: 4px;
	    border: solid 1px #dbdbdb;
	    background-color: #ffffff;
	    color: #424242;
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	textarea:focus {
		outline: none;
	}
	textarea {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    text-align: start;
	    -webkit-rtl-ordering: logical;
	    flex-direction: column;
	    cursor: text;
	    white-space: pre-wrap;
	    overflow-wrap: break-word;
	    font: 400 13.3333px Arial;
	}
	.review-modal__form__review-input__length {
	    position: relative;
	    top: -20px;
	    right: 10px;
	    text-align: right;
	    font-size: 11px;
	}
	.form-check {
		margin-bottom:20px;
	    font-size: 15px;
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.checkbox-input>.form-check-label, .checkbox-input>.form-check-label-chk {
	    margin-bottom: 0;
	}
	.form-check .form-check-label, .form-check .form-check-label-chk {
	    cursor: pointer;
	    display: block;
	    padding-left: 32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
	.form-check .form-check-label .form-check, .form-check .form-check-label-chk .form-check {
	    left: -1000px;
	    position: absolute;
	    opacity: 0;
	}
	 .form-check .form-check-label .check-img,  .form-check .form-check-label-chk .check-img {
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
	.form-check .form-check-label .check-img:after, .form-check .form-check-label-chk .check-img:after {
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
	    background-image: url('http://localhost:9000/myhouse/images/ic-checkbox2.png');
	    opacity: 0;
	}
	.review-modal__form__agree {
	    color: #424242;
	}
	.review-modal__form__agree__policy-button {
		color: #35c5f0;
		text-decoration: underline;
		font-weight: 700;
	}
	.review-modal__form__submit {
	    width: 100%;
	    height: 45px;
	    padding: 0;
	    line-height: 43px;
	    margin-bottom: 30px;
	}
	.button--size-50 {
	    font-size: 17px;
	}
	.button--color-blue {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	    color: #fff;
	}
	.review-modal__explain {
	    width: 100%;
	    padding: 20px 40px;
	    border-radius: 4px;
	    background-color: #f7f8fa;
	    border-top: 1px solid #ededed;
	    line-height: 1.46;
	    color: #424242;
	    font-size: 13px;
	}
	.review-modal__explain>ul {
	    list-style-type: disc;
	    list-style-position: inside;
	    padding-left:0;
	}
	::marker {
	    unicode-bidi: isolate;
	    font-variant-numeric: tabular-nums;
	    text-transform: none;
	    text-indent: 0px !important;
	    text-align: start !important;
	    text-align-last: start !important;
	}
	.review-modal__explain__warning {
	    color: #f06060;
	    font-weight: 700;
	}
	/* 리뷰작성 텍스트 20자 채우지 못했을 때 */
	.review-modal__section__title--error {
	    color: #f06060;
	}
	.review-modal__section__title__error-message, .review-modal__section__title__error-message-star,
	.review-modal__section__title__error-message-text, .review-modal__section__title__error-message-question, .review-modal__section__title__error-message-goods-list {
	    font-size: 11px;
	    margin-left: 8px;
	    color: #f06060;
	    font-weight: 400;
	    display:block;
	}
	.review-modal__section__title__error-message-text-none {
		display:none;
	}
	
	.form-control.error .form-control-sub.error {
	    border-color: #f77;
	}
	
	/* 리뷰 - 동의체크 */
	.checkbox-input.errored>.form-check-label>.check-img, .checkbox-input.errored>.form-check-label-chk>.check-img {
	    border-color: #f77;
	}
	.form-check .form-check-label .form-check:not(:disabled):checked+.check-img,
	.form-check .form-check-label-chk .form-check:not(:disabled):checked+.check-img {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	}
	.form-radio>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-radio .form-check-label .form-check:not(:disabled):checked+.check-img:after, 
	.form-check>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-check .form-check-label .form-check:not(:disabled):checked+.check-img:after,
	.form-radio .form-check-label-chk .form-check:not(:disabled):checked+.check-img:after, .form-check .form-check-label-chk .form-check:not(:disabled):checked+.check-img:after {
	    opacity: 1;
	}
	.form-radio>.form-radio-label .check-img:after, .form-radio .form-check-label .check-img:after, .form-check>.form-radio-label .check-img:after, 
	.form-check .form-check-label .check-img:after, .form-radio .form-check-label-chk .check-img:after, .form-check .form-check-label-chk .check-img:after {
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
	.form-check .form-check-label .form-check:focus+.check-img, .form-check .form-check-label-chk .form-check:focus+.check-img {
	    box-shadow: 0 0 0 3px rgba(130,224,250,0.5);
	}
	.review-modal__form__policy {
	    margin-top: 13px;
	    font-size: 13px;
	    white-space: pre-wrap;
	    line-height: 1.3;
	    margin-bottom:30px;
	    display:block;
	}
	.review-modal__form__policy-none {
		display:none;
	}
	/* 리뷰 사진 추가 */
	.review-modal .select-picture {
	    display: flex;
	    -webkit-box-pack: center;
	    justify-content: center;
	    position: relative;
	    width: 100%;
	    height: 226px;
	    background-color: #eaebef;
	    border-radius: 4px;
	    overflow: hidden;
	}
	.review-modal .select-picture-none {
		display:none;
	}
	.review-modal .select-picture__contents {
	    height: 100%;
	}
	.review-modal .select-picture__delete {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    justify-content: center;
	    position: absolute;
	    top: 12px;
	    right: 12px;
	    width: 70px;
	    height: 32px;
	    box-shadow: 0 0 6px 0 rgba(47,52,56,.2);
	    font-size: 15px;
	    padding: 0;
	    line-height: 1;
	}
	.review-modal .select-picture__delete>svg {
	    width: 16px;
	    height: 16px;
	    margin-right: 8px;
	}
	
	/* 문의하기 창 */
	.product-question.react-modal__content {
	    position: relative;
	    width: 624px;
	    min-height: 687px;
	    padding: 40px;
	}
	.react-modal__content {
	    margin: 20px auto;
	    background-color: #fff;
	    box-sizing: border-box;
	    border-radius: 4px;
	}
	.product-question__wrap {
	    width: 100%;
	    height: 100%;
	}
	.product-question__wrap__close {
	    position: absolute;
	    top: 10px;
	    right: 10px;
	    width: 40px;
	    height: 40px;
	    cursor: pointer;
	}
	.product-question__wrap__close__icon {
	    width: 16px;
	    height: 16px;
	    margin: 12px;
	}
	.product-question__wrap__title {
	    width: 100%;
	    text-align: center;
	    font-size: 17px;
	    font-weight: 700;
	    line-height: 1.35;
	    color: #292929;
	    margin-bottom: 30px;
	}
	.product-question__wrap__sub-title {
	    font-size: 15px;
	    font-weight: 700;
	    color: #292929;
	    margin-bottom: 16px;
	}
	.product-question__wrap__type-select {
	    display: flex;
	    flex-wrap: wrap;
	    -webkit-align-content: stretch;
	    align-content: stretch;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    overflow: hidden;
	    width: 100%;
	    margin-bottom: 30px;
	    font-size: 15px;
	}
	.product-question__wrap__type-select__box:first-of-type {
	    border-radius: 4px 0 0 0;
	}
	.product-question__wrap__type-select__box--select {
	    color: #fff;
	    background-color: #35c5f0;
	    font-weight: 700;
	    border-color: #35c5f0;
	     -webkit-box-flex: 1;
	    flex-grow: 1;
	    width: 33.33333%;
	    box-sizing: border-box;
	    border-width: 1px 0 0 1px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	    cursor: pointer;
	}
	.product-question__wrap__type-select__box {
	    -webkit-box-flex: 1;
	    flex-grow: 1;
	    width: 33.33333%;
	    box-sizing: border-box;
	    border: 1px solid #dbdbdb;
	    border-width: 1px 0 0 1px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	    color: #424242;
	    cursor: pointer;
	}
	.product-question__wrap__type-select__box:hover {
		background-color: rgb(245, 245, 245);
	}
	.product-question__wrap__type-select__box:nth-of-type(3) {
	    border-radius: 0 4px 0 0;
	    border-right-width: 1px;
	}
	.product-question__wrap__type-select__box:nth-of-type(4) {
	    border-radius: 0 0 0 4px;
	    border-bottom-width: 1px;
	}
	.product-question__wrap__type-select__box:nth-of-type(5) {
	    border-bottom-width: 1px;
	}
	.product-question__wrap__type-select__box:nth-of-type(6) {
	    border-radius: 0 0 4px 0;
	    border-right-width: 1px;
	    border-bottom-width: 1px;
	}
	.product-question__wrap__option-select {
	    margin-bottom: 30px;
	}
	.product-review__wrap__option-select {
		margin-top: 30px;
	}
	.product-question__wrap__option-select__input, .product-review__wrap__option-select__input  {
	    margin-top: 10px;
	}
	.select-input {
	    position: relative;
	}
	.input-group {
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	.product-question__wrap__option-select__input.select-input>.form-control.empty, .product-question__wrap__option-select__input.select-input>.form-control>option:disabled, 
	.product-review__wrap__option-select__input.select-input>.form-control.empty, .product-review__wrap__option-select__input.select-input>.form-control>option:disabled,
	.product-question__wrap__option-select__input.select-input>.form-control-question.empty, .product-question__wrap__option-select__input.select-input>.form-control-question>option:disabled {
	    color: #424242;
	    height:40px;
	}
	.select-input.input-group>.form-control, .select-input.input-group>.form-control-sub,
	.select-input.input-group>.form-control-review, .select-input.input-group>.form-control-question {
	    width: 100%;
	}
	.product-question .form-control, .product-question .form-control-question {
	    font-size: 15px;
	}
	.select-input>.form-control, .select-input>.form-control-sub,  .select-input>.form-control-review {
	    padding: 10px 30px 10px 10px; 
	    background-image: none;
	    margin:10px 0;
	}
	.select-input>.form-control-question {
		background-image: none;
	    margin:10px 0;
	}
	.select-input>.form-control>option, .select-input>.form-control-sub>option, .select-input>.form-control-review>option, .select-input>.form-control-question>option {
	    color: #424242;
	}
	.select-input__icon {
	    position: absolute;
	    top: 10px;
	    right: 10px;
	    padding: 5px;
	    font-size: 0;
	    cursor: default;
	    color: rgba(0,0,0,.3);
	    pointer-events: none;
	}
	.product-question__checkbox {
	    margin-top: 16px;
	}
	.form-check {
	    font-size: 15px;
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.checkbox-input>.form-check-label, .checkbox-input>.form-check-label-chk {
	    margin-bottom: 0;
	}
	.product-question .form-check-label, .product-question .form-check-label-chk {
	    font-size: 15px;
	}
	.form-check .form-check-label, .form-check .form-check-label-chk  {
	    cursor: pointer;
	    display: block;
	    padding-left: 32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
	.form-check .form-check-label .form-check, .form-check .form-check-label-chk .form-check {
	    left: -1000px;
	    position: absolute;
	    opacity: 0;
	}
	.product-question__wrap__sub-title {
	    font-size: 15px;
	    font-weight: 700;
	    color: #292929;
	    margin-bottom: 16px;
	}
	.product-question__page .form-check-label, .product-question__page .form-check-label-chk {
	    font-size: 15px;
	}
	textarea.form-control, textarea.form-control-sub {
	    resize: none;
	    line-height: 20px;
	    padding-top: 9px;
	    padding-bottom: 9px;
	}
	.product-question__wrap__question, .product-question__wrap__question-admin {
	    min-height: 110px;
	}
	.product-question__wrap__question:hover, .product-question__wrap__question-admin:hover {
		background-color: rgb(245, 245, 245);
	}
	.product-question__wrap__explain {
	    margin-top: 30px;
	    font-size: 13px;
	    line-height: 1.46;
	    color: #757575;
	}
	.product-question__wrap__buttons {
	    display: flex;
	    width: 100%;
	    margin-top: 16px;
	}
	.product-question__wrap__buttons__submit.button, .product-question__wrap__buttons__submit-fin.button,
	.product-question__wrap__buttons__submit-cancel.button {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    height:50px;
	}
	.product-question__wrap__sub-title--error {
	    color: #f06060;
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
	}
	/* .toast-message-root.toast-none {
		display:none;
	} */
	/* 스크랩 취소 */
	.toast-message__body:last-child {
		margin-right: 20px;
	}
	.btn-orderby {
		display:block;
	}
	.btn-none {
		display:none;
	}
	.production-question-feed__item__answer, .production-question-feed__item__answer-write {
		display:block;
	    padding-left: 22px;
	    font-size: 15px;
	    line-height: 22px;
	    position: relative;
	    margin: 0 0 10px;
	    color: #424242;
	}
	.answer-none {
		display:none;
	}
	.production-question-feed__item__answer__author {
	    margin: 0 0 4px;
	}
	.production-question-feed__item__answer__author>.author {
	    font-weight: 700;
	    color: #424242;
	}
	.production-question-feed__item__answer__author>.date {
	    font-size: 12px;
	    color: #bdbdbd;
	    line-height: 16px;
	    vertical-align: 1px;
	}
	.production-question-feed__item__content {
	    white-space: pre-line;
	}
	.production-question-feed__item__header>.answered {
	    color: #35c5f0;
	}
</style>
<script>
	$(document).ready(function(){
		best_ajax("","베스트순");
		q_ajax("");
		
		/* swiper */
	    var galleryThumbs = new Swiper('.gallery-thumbs', {
	      spaceBetween: 10,
	      slidesPerView: 6,
	      freeMode: true,
	      watchSlidesVisibility: true,
	      watchSlidesProgress: true,
	    });
	    var galleryTop = new Swiper('.gallery-top', {
		      spaceBetween: 10,
		      navigation: {
		        nextEl: '.swiper-button-next',
		        prevEl: '.swiper-button-prev',
		      },
		      thumbs: {
		        swiper: galleryThumbs
		      }
		    });
		    
		/* 스크랩 유무에 따른 표시 여부 */
		if(${scrap_exist}!=0) {
			$("#main-scrap").addClass("production-selling-header__action__button--active");
			
			$("#side-order").addClass("production-selling-sidebar-content__scrap--active");
			$("#side-order").removeClass("production-selling-sidebar-content__scrap");
		} else {
			$("#main-scrap").removeClass("production-selling-header__action__button--active");
			
			$("#side-order").removeClass("production-selling-sidebar-content__scrap--active");
			$("#side-order").addClass("production-selling-sidebar-content__scrap");
		} 
		
		
		
		/* 상품 스크랩 */
		$(".production-selling-header__action").click(function(){
			if("${scrap_exist}"==0) {
				$.ajax({
					url:"interior_scrap_proc.do?email=${email}&ino=${ino}",
					success: function(result) {
						if("${email}" == "") {
							location.href="http://localhost:9000/myhouse/login.do";
						} else {
							$("#main-scrap").addClass("production-selling-header__action__button--active");
							$("#scrap-add").css("display","flex");
							$("#scrap-del").css("display","none");
							$("#scrap-add").fadeOut(3800);
							
							$("#side-order").addClass("production-selling-sidebar-content__scrap--active");
							$("#side-order").removeClass("production-selling-sidebar-content__scrap");
						}
					} 
				});	
			} else {
				$.ajax({
					url:"interior_scrap_del_proc.do?email=${email}&ino=${ino}",
					success: function(result) {
						if("${email}" == "") {
							location.href="http://localhost:9000/myhouse/login.do";
						} else {
							$("#main-scrap").removeClass("production-selling-header__action__button--active");
							$("#scrap-add").css("display","none");
							$("#scrap-del").css("display","flex");
							$("#scrap-del").fadeOut(3800);
							
							$("#side-order").removeClass("production-selling-sidebar-content__scrap--active");
							$("#side-order").addClass("production-selling-sidebar-content__scrap");
						}
						
					}
				});
				
				
			}
			
		});
		
		
		
		/* 사이드 주문 - 스크랩*/
		$(".production-selling-option-form__footer div.scrap-box").click(function(){
			if("${scrap_exist}"==0) {
				$.ajax({
					url:"interior_scrap_proc.do?email=${email}&ino=${ino}",
					success: function(result) {
						$("#main-scrap").addClass("production-selling-header__action__button--active");
						$("#scrap-add").css("display","flex");
						$("#scrap-del").css("display","none");
						$("#scrap-add").fadeOut(3800);
						
						$("#side-order").addClass("production-selling-sidebar-content__scrap--active");
						$("#side-order").removeClass("production-selling-sidebar-content__scrap");
					} 
				});	
			} else {
				$.ajax({
					url:"interior_scrap_del_proc.do?email=${email}&ino=${ino}",
					success: function(result) {
						$("#main-scrap").removeClass("production-selling-header__action__button--active");
						$("#scrap-add").css("display","none");
						$("#scrap-del").css("display","flex");
						$("#scrap-del").fadeOut(3800);
						
						$("#side-order").removeClass("production-selling-sidebar-content__scrap--active");
						$("#side-order").addClass("production-selling-sidebar-content__scrap");
					}
				});
				
				
			}
		});
		
		
		
		/* 싱품 스크랩 닫기버튼 */
		$(".toast-message__footer__close").click(function(){
				$(".toast-message").css("display","none");
		});
		
	    /* 상품선택 콤보박스 : 리스트 */
		$(".production-select-dropdown__button").click(function(){
	    	if($("#pro-select-list").hasClass("open")) {
	    		$("#pro-select-list").removeClass("open");
	    	} else {
	    		$("#pro-select-list").addClass("open"); 
	    	}
	    });	    
		
		/* 사이드 리스트 선택 */
		$(".production-select-dropdown__button-side").click(function(){
	    	if($("#side-order-list").hasClass("open")) {
	    		$("#side-order-list").removeClass("open");
	    	} else {
	    		$("#side-order-list").addClass("open"); 
	    	}
	    });
		
	    /* 상품선택한 화면 */
		var all_first = 0;
	   $(".production-select-list__item-main-list").click(function(){
		   var click_id = $(this).attr("id"); 
		   click_id = click_id.split("-");
		   
		   /* 첫번째 상품 넣는 부분 */
		   var chk_first = $("#select-item-"+click_id[2]+" .production-item-price__price").text();
		   	   chk_first = chk_first.replace(/,/g, '');
		   	   chk_first = parseInt(chk_first);
		   /* 첫번째 상품 넣었는데 또 클릭하면, */
		   if(!$("#pro-order-"+click_id[2] ).hasClass("order-none")) {
			   chk_first = 0;
		   } 
	   	
	    	select_list();
	    	select_list_side();
	    	
	    	$("#pro-select-"+click_id[2] ).removeClass("select-none");
	    	$("#pro-order-0").removeClass("select-none");
	    	$("#pro-order-"+click_id[2] ).removeClass("order-none");
	    	$("#pro-select-side-"+click_id[2] ).removeClass("select-none");
	    	$("#pro-order-side-0").removeClass("select-none");
	    	$("#pro-order-side-"+click_id[2] ).removeClass("order-none");
	    		if($("#pro-select-list").hasClass("open")) {
	    			$(".production-select-dropdown__list-container").removeClass("open");
	    		}
	    		if($("#side-order-list").hasClass("open")) {
	    			
	    			$("#side-order-list").removeClass("open");
	    		} 
	    	
	    	/* 첫번째 상품들의 합 */
	    	all_first = all_first + chk_first;
	    	
	    	/* 첫번째 상품들의 합 --> 화면 */
	    	$("span .selling-option-form-content__price__number-main").text(comma(all_first));	 
	    	$("span .selling-option-form-content__price__number-sub").text(comma(all_first));
	    	
	    });
	   
	  
		function select_list() {
			$("#pro-select-0").addClass("select-none");
			$(".production-select-button__production-box").addClass("select-none");
		}
		
		/* 사이드 주문 : 상품선택한 화면 */
		var all_first_sub = 0;
	    $(".production-select-list__item-sub-list").click(function(){
	    	
	    	 var click_id = $(this).attr("id"); 
			   click_id = click_id.split("-");
			   
			   /* 첫번째 상품 넣는 부분 */
			   var chk_first = $("#select-side-item-"+click_id[3]+" .production-item-price__price").text();
			   	   chk_first = chk_first.replace(/,/g, '');
			   	   chk_first = parseInt(chk_first);
			   /* 첫번째 상품 넣었는데 또 클릭하면, */
			   if(!$("#pro-order-side-"+click_id[3] ).hasClass("order-none")) {
				   chk_first = 0;
			   } 
		   		 
	    	select_list_side();
	    	select_list();
	    	
	    	$("#pro-select-side-"+click_id[3]).removeClass("select-none");
	    	$("#pro-order-side-0").removeClass("select-none");
	    	$("#pro-order-side-"+click_id[3]).removeClass("order-none");
	    	$("#pro-select-"+click_id[3]).removeClass("select-none");
	    	$("#pro-order-0").removeClass("select-none");
	    	$("#pro-order-"+click_id[3]).removeClass("order-none");
	    		if($("#side-order-list").hasClass("open")) {
	    			$("#side-order-list").removeClass("open");
	    		}
	    		if($("#pro-select-list").hasClass("open")) {
	    			$(".production-select-dropdown__list-container").removeClass("open");
	    		}
	    		
	    		
	    		/* 첫번째 상품들의 합 */
		    	all_first_sub = all_first_sub + chk_first;
		    	
		    	/* 첫번째 상품들의 합 --> 화면 */
		    	$("span .selling-option-form-content__price__number-main").text(comma_side(all_first_sub));	 
		    	$("span .selling-option-form-content__price__number-sub").text(comma_side(all_first_sub));
	    });
	    
		function select_list_side() {
			$("#pro-select-side-0").addClass("select-none");
			$(".production-select-button__production-sub").addClass("select-none");
		}
		
		
		/* 주문상품 수량 및 가격 */
		    $(".form-control").change(function (){
		    	
		    	var bsum = $(this).parent().parent().parent().parent().children(".main_order_h").val();
			    	bsum = bsum.replace(/,/g, '');
			    	bsum = parseInt(bsum);
		    	var id = $(this).attr("id");
		    	var cnt = $("#"+id).val();
		    		cnt = parseInt(cnt);
		    	var price = $(this).parent().parent().parent().parent().children(".main_order").val();
		    		price = price.replace(/,/g, '');
		    		price = parseInt(price);
		    	var group = cnt*price;
		    	
		    	
		    	if(cnt == 1) {
			    	all_first = all_first + price - bsum;
		    		$(this).parent().parent().parent().parent().children(".main_order_h").val(price);
		    	} else {
			    	all_first = all_first + group - bsum - price;
		    		$(this).parent().parent().parent().parent().children(".main_order_h").val(group);
		    	}
		    		
		    		
			    $("span .selling-option-form-content__price__number-main").text(comma(all_first));
			    $("span .selling-option-form-content__price__number-sub").text(comma(all_first));
			    
			    
			    if(cnt==1) {
			    	select_false(id)				    
			    	$("#sub-"+id).val("1").prop("selected", true);
			    } 
			    if(cnt==2) {
			    	select_false(id)				    
			    	$("#sub-"+id).val("2").prop("selected", true);
			    } 
			    else if(cnt==3) {
			    	select_false(id)
			    	$("#sub-"+id).val("3").prop("selected", true);
			    } 
			    else if(cnt==4) {
			    	select_false(id)
			    	$("#sub-"+id).val("4").prop("selected", true);
			    } 
			    else if(cnt==5) {
			    	select_false(id)
			    	$("#sub-"+id).val("5").prop("selected", true);
			    } 
			    else if(cnt==6) {
			    	select_false(id)
			    	$("#sub-"+id).val("6").prop("selected", true);
			    } 
			    else if(cnt==7) {
			    	select_false(id)
			    	$("#sub-"+id).val("7").prop("selected", true);
			    } 
			    else if(cnt==8) {
			    	select_false(id)
			    	$("#sub-"+id).val("8").prop("selected", true);
			    }
			    else if(cnt==9) {
			    	select_false(id)
			    	$("#sub-"+id).val("9").prop("selected", true);
			    } 
			    else if(cnt==10) {
			    	select_false(id)
			    	$("#sub-"+id).val("10").prop("selected", true);
			    }
			   
		    });
	    
		    function select_false(id) {
		    	for(var i=1; i<11; i++) {
		    		$("#sub-"+id).val("i").prop("selected", false);
		    	}
		    }

		    
	    /* 주문상품 수량 및 가격 - 사이드 */
		    $(".form-control-sub").change(function part_sum_side(){
		    	var bsum = $(this).parent().parent().parent().parent().children(".sub_order_h").val();
			    	bsum = bsum.replace(/,/g, '');
			    	bsum = parseInt(bsum);
		    	var id_sub = $(this).attr("id");
		    		id_sub = id_sub.split("-");
		    	var cnt = $("#sub-"+id_sub[1]).val();
		    		cnt = parseInt(cnt);
		    	var price = $(this).parent().parent().parent().parent().children(".sub_order").val();
		    		price = price.replace(/,/g, '');
		    		price = parseInt(price);
		    	var group = cnt*price;
		    	
		    	if(cnt == 1) {
		    		all_first_sub = all_first_sub + price - bsum;
			    	$(this).parent().parent().parent().parent().children(".sub_order_h").val(price);
			    } else {
			    	all_first_sub = all_first_sub + group - bsum - price;
			    	$(this).parent().parent().parent().parent().children(".sub_order_h").val(group);
			   	}
		    		
		    		
			    $("span .selling-option-form-content__price__number-main").text(comma_side(all_first_sub));
			    $("span .selling-option-form-content__price__number-sub").text(comma_side(all_first_sub));
			    
			    
			    if(cnt==1) {
			    	select_false_side(id_sub)				    
			    	$("#"+id_sub[1]).val("1").prop("selected", true);
			    }
			    if(cnt==2) {
			    	select_false_side(id_sub)				    
			    	$("#"+id_sub[1]).val("2").prop("selected", true);
			    } 
			    else if(cnt==3) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("3").prop("selected", true);
			    } 
			    else if(cnt==4) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("4").prop("selected", true);
			    } 
			    else if(cnt==5) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("5").prop("selected", true);
			    } 
			    else if(cnt==6) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("6").prop("selected", true);
			    } 
			    else if(cnt==7) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("7").prop("selected", true);
			    } 
			    else if(cnt==8) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("8").prop("selected", true);
			    }
			    else if(cnt==9) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("9").prop("selected", true);
			    } 
			    else if(cnt==10) {
			    	select_false_side(id_sub)
			    	$("#"+id_sub[1]).val("10").prop("selected", true);
			    }
			   
		    });
	    
		    function select_false_side(id_sub) {
		    	for(var i=1; i<11; i++) {
		    		$("#"+id_sub[1]).val("i").prop("selected", false);
		    	}
		    }
	    	
	    
		/* 주문상품 삭제 */
		$(".selling-option-item__delete-main").click(function(){
			var click_id = $(this).attr("id");
			click_id = click_id.split("-");
			
	    	var cnt = $("#"+click_id[2]).val();
	    		cnt = parseInt(cnt);
	    	var price =  $("span#"+click_id[2]).text();
	    		price = price.replace(/,/g, '');
	    		price = parseInt(price);
	    	var group = 0;
	    		group = group + cnt*price ;
			
			all_first = all_first - group;
			select_false(click_id);
			//alert(all_first);
			$("#pro-order-"+click_id[2]).addClass("order-none");
			$("#pro-order-side-"+click_id[2]).addClass("order-none");
			
			$("span .selling-option-form-content__price__number-main").text(comma(all_first));
		    $("span .selling-option-form-content__price__number-sub").text(comma(all_first));
		});
		
		    function select_false(click_id) {
		    	for(var i=1; i<11; i++) {
		    		$("#sub-"+click_id[2]).val("i").prop("selected", false);
		    		$("#"+click_id[2]).val("i").prop("selected", false);
		    	}
		    		$("#sub-"+click_id[2]).val("1").prop("selected", true);
		    		$("#"+click_id[2]).val("1").prop("selected", true);
		    }
	    
		    /* 계산한 값 콤마 포함해서 가져오기 */
		    function comma(all_first) {
				   all_first = String(all_first);
			        return all_first.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			    }		    

		    
		/* 사이드 주문상품 삭제 */
		$(".selling-option-item__delete-sub").click(function(){
			var click_id = $(this).attr("id");
			click_id = click_id.split("-");
			
			var cnt = $("#sub-"+click_id[3]).val();
	    		cnt = parseInt(cnt);
	    	var price =  $("span#sub-"+click_id[3]).text();
	    		price = price.replace(/,/g, '');
	    		price = parseInt(price);
	    	var group = 0;
	    		group = group + cnt*price ;
			
	    		all_first_sub = all_first_sub - group;
				select_false_side(click_id);
				//alert(all_first_sub);
				$("#pro-order-side-"+click_id[3]).addClass("order-none");
				$("#pro-order-"+click_id[3]).addClass("order-none");
				
				$("span .selling-option-form-content__price__number-main").text(comma_side(all_first_sub));
			    $("span .selling-option-form-content__price__number-sub").text(comma_side(all_first_sub));
		});
		
			function select_false_side(click_id) {
		    	for(var i=1; i<11; i++) {
		    		$("#sub-"+click_id[3]).val("i").prop("selected", false);
		    		$("#"+click_id[3]).val("i").prop("selected", false);
		    	}
		    		$("#sub-"+click_id[3]).val("1").prop("selected", true);
		    		$("#"+click_id[3]).val("1").prop("selected", true);
		    }
		
		 /* 계산한 값 콤마 포함해서 가져오기 - 사이드 */
	    function comma_side(all_first_sub) {
	    	all_first_sub = String(all_first_sub);
		        return all_first_sub.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		    }
		
		var status = '';
		
		function best_ajax(rpage, status) {
			
			$.ajax({
				url:"interior_review.do?ino=${ino}&rpage="+rpage+"&status="+status,
				success: function(result) {
					var jdata = JSON.parse(result);
					$(".production-review-feed__list").empty();
					var output = "";
					for(var i in jdata.interior_review) {
						output += '<div class="production-review-item__container">';
						output += '<article class="production-review-item">';
						output += '<div class="production-review-item__writer">';
						output += '<a href="http://localhost:9000/myhouse/mypage_profile1.do">';
						output += '<img src="http://localhost:9000/myhouse/resources/upload/'+jdata.interior_review[i].member_spimage+'" class="production-review-item__writer__img">';
						output += '</a>';
						output += '<div class="production-review-item__writer__info">';
						output += '<p class="production-review-item__writer__info__name">'+jdata.interior_review[i].nickname+'</p>';
						output += '<button class="production-review-item__writer__info__total-star-wrap" type="button">';
						output += '<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">';
						if(jdata.interior_review[i].star==1) {
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>';
						
						} else if(jdata.interior_review[i].star==2) {
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>';
						
						} else if(jdata.interior_review[i].star==3) {
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>&nbsp';
							output +='<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>';
						
						} else if(jdata.interior_review[i].star==4) {
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>';
						
						} else if(jdata.interior_review[i].star==5) {
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
							output += '<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>&nbsp';
						} 
						output += '</span>';
						output += '<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>';
						output += '<span class="production-review-item__writer__info__date">'+ jdata.interior_review[i].vdate +' ∙ 스위트홈 구매</span>';
						output += '</div>';
						output += '</div>';
						output += '<div class="production-review-item__name">'+ jdata.interior_review[i].goods_name +'</div>';
						if(jdata.interior_review[i].review_simage != null) {
							output += '<button type="button" class="production-review-item__img__btn">';
							output += '<img class="production-review-item__img" src="http://localhost:9000/myhouse/resources/upload/'+jdata.interior_review[i].review_simage +'">';
							output += '</button>';
						}
						output += '<p class="production-review-item__description">'+jdata.interior_review[i].vcontent+'</p>';
						output += '</article>';
						output += '</div>';
					}
						$(".production-review-feed__list").empty();
						$("#ampaginationsm").remove();
											
						var pagee = '<div id="ampaginationsm" style="text-align:center;"></div>';
						$(".production-review-feed__list").append(output);
						$(".production-review-feed__list").after(pagee);
						
						if(status == '베스트순') {
							$("#review-best").addClass("production-review-feed__filter__order--active");
							$("#review-best").removeClass("production-review-feed__filter__order");
							$("#review-recently").addClass("production-review-feed__filter__order"); 
							$("#review-recently").removeClass("production-review-feed__filter__order--active"); 
							$("#review-photo").addClass("production-review-feed__filter__order");
							$("#review-photo").removeClass("production-review-feed__filter__order--active");
						} else if(status == '최신순') {
							$("#review-recently").addClass("production-review-feed__filter__order--active");
							$("#review-recently").removeClass("production-review-feed__filter__order");
							$("#review-best").removeClass("production-review-feed__filter__order--active"); 
							$("#review-best").addClass("production-review-feed__filter__order"); 
							$("#review-photo").addClass("production-review-feed__filter__order");
							$("#review-photo").removeClass("production-review-feed__filter__order--active");
						} else if (status == '사진리뷰') {
							$("#review-photo").removeClass("production-review-feed__filter__order");
							$("#review-photo").addClass("production-review-feed__filter__order--active");
							$("#review-recently").removeClass("production-review-feed__filter__order--active");
							$("#review-recently").addClass("production-review-feed__filter__order");
							$("#review-best").removeClass("production-review-feed__filter__order--active"); 
							$("#review-best").addClass("production-review-feed__filter__order"); 
						}
						
						
						page(jdata.dbcount, jdata.reqpage, jdata.pagesize);
				}
			});
			
		}
		
		/* 베스트순 */
		$("#review-best").click(function(){
			best_ajax("", "베스트순");
		});
		
		
		/* 최신순 */
		$("#review-recently").click(function (){
			status = $(this).text();
			best_ajax("", status);
		});
		
		/* 사진리뷰 */
		$("#review-photo").click(function photo(rpage){
			status = $(this).text();
			status = $.trim(status)
			best_ajax("", status);
		});
		
		   /** 페이징 처리 함수 **/
	      function page(dbcount, reqpage, pagesize){
	         //페이지 번호 및  링크
	            var pager = jQuery("#ampaginationsm").pagination({
	               maxSize : 5,
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
	            	
	               best_ajax(e.page,"");
	            });
	      }//page
	      
	    
		
		// 스크롤 위치마다 border-bottom 주기 
		
		
		var isVisible1 = false;
		var isVisible2 = false;
		var isVisible3 = false;
		var isVisible4 = false;
		
		$(window).on('scroll',function() {
		    if (checkVisible($('#production-selling-information'))&&!isVisible1) {
		    	remove_list();
				$("#scroll-pro").addClass("production-selling-navigation__item--active");
		        isVisible1=true; isVisible2 = false; isVisible3 = false; isVisible4 = false;
		    } else if (checkVisible($('#production-selling-review'))&&!isVisible2) {
		    	remove_list();
				  $("#scroll-review").addClass("production-selling-navigation__item--active");
		        isVisible2=true; isVisible1 = false; isVisible3 = false; isVisible4 = false;
		    } else if (checkVisible($('#production-selling-question'))&&!isVisible3) {
		    	remove_list(); 
				  $("#scroll-q-a").addClass("production-selling-navigation__item--active");
		        isVisible3=true; isVisible2 = false; isVisible1 = false; isVisible4 = false;
		    } else if (checkVisible($('#production-selling-delivery'))&&!isVisible4) {
		    	remove_list();
				  $("#scroll-delivery").addClass("production-selling-navigation__item--active");
		        isVisible4=true; isVisible2 = false; isVisible3 = false; isVisible1 = false;
		    }
		});
		
		function checkVisible( elm, eval ) {
		    eval = eval || "object visible";
		    var viewportHeight = $(window).height(), // Viewport Height
		        scrolltop = $(window).scrollTop(), // Scroll Top
		        y = $(elm).offset().top,
		        elementHeight = $(elm).height();   
		    
		    if (eval == "object visible") return ((y < (viewportHeight + scrolltop)) && (y > (scrolltop - elementHeight)));
		    if (eval == "above") return ((y < (viewportHeight + scrolltop)));
		} 
		
		function remove_list() {
			$("#scroll-pro").removeClass("production-selling-navigation__item--active");
			$("#scroll-review").removeClass("production-selling-navigation__item--active");
			$("#scroll-q-a").removeClass("production-selling-navigation__item--active");
			$("#scroll-delivery").removeClass("production-selling-navigation__item--active");
			
		} 
		
		/* 리뷰쓰기 클릭 */
		$(".production-selling-section__right").click(function(){
			if($("#react-modal").hasClass("react-modal-none")) {
				$("#react-modal").removeClass("react-modal-none");
				$("#react-modal").addClass("react-modal");
			} else {
				$("#react-modal").addClass("react-modal-none");
				$("#react-modal").removeClass("react-modal");
			}
		});
		
		/* 리뷰쓰기 - 상품선택리스트 ajax */
		$(".form-control-review").change(function(){
			var goods_list = $(this).val();
			var goods_img = $(".review-list-goods-wrap").attr("id");
			
			$.ajax({
				url:"interior_review_goods_list.do?gno="+goods_list,
				success:function(result) {
					var jdata = JSON.parse(result);
					var output = "";
					
					$(".review-list-goods").empty();
					for(var i in jdata.interior_review_goods_list) {
								output += '<div class="review-list-goods-wrap" id="'+jdata.gno+'">';
								output += '<img class="review-modal__form__product__image" src="http://localhost:9000/myhouse/resources/upload/'+jdata.interior_review_goods_list[i].goods_simage+'">';
								output += '<div class="review-modal__form__product__contents">';
								output += '<div class="review-modal__form__product__contents__brand">'+jdata.interior_review_goods_list[i].company+'</div>';
								output += '<div class="review-modal__form__product__contents__brand">'+jdata.interior_review_goods_list[i].ititle+'</div>';
								output += '<div class="review-modal__form__product__contents__name">'+jdata.interior_review_goods_list[i].goods_name+'</div>';
								output += '<div class="review-modal__form__product__contents__options"></div>';
								output += '</div>';
								output += '</div>';
					}
					$(".review-list-goods").append(output);
					
				}
			});
			
		});
		
		 var domEleArray = [$('#select-picture').clone()];
		 $("#review-image-input").hide();
		 var file_img = "";
		   function readURL(input) {    
				   if (input.files && input.files[0]) {
			            var reader = new FileReader(); 
			            reader.onload = function (e) {
			          	$('.select-picture img').attr('src', e.target.result);
			            $("#review-image-input").show();
			            //alert("file");
			           }                   
			            reader.readAsDataURL(input.files[0]);
			        }
		    }
			
		   /* 리뷰쓰기 - 사진첨부 */
		     $(document).on("change","#select-picture",function(event){
		    	 //alert("change");
			        readURL(this);
	          });

		    /* 리뷰쓰기 - 사진첨부 : 삭제*/
		    $(document).on("click",".select-picture__delete",function(event){
	            //alert($(this).text());
	            domEleArray[1] = domEleArray[0].clone(true); 
		        $('#select-picture').replaceWith(domEleArray[1]);
		        $('.select-picture img').attr('src', '');
		        $("#review-image-input").hide();
	          });

		
		/* 리뷰쓰기 - 별점 마우스 오버/아웃 */
		$("#review-star-1").mouseover(function(){
			$("#review-star-1").addClass("suggested");
		});
		$("#review-star-2").mouseover(function(){
			$("#review-star-1").addClass("suggested");
			$("#review-star-2").addClass("suggested");
		});
		$("#review-star-3").mouseover(function(){
			$("#review-star-1").addClass("suggested");
			$("#review-star-2").addClass("suggested");
			$("#review-star-3").addClass("suggested");
		});
		$("#review-star-4").mouseover(function(){
			$("#review-star-1").addClass("suggested");
			$("#review-star-2").addClass("suggested");
			$("#review-star-3").addClass("suggested");
			$("#review-star-4").addClass("suggested");
		});
		$("#review-star-5").mouseover(function(){
			$("#review-star-1").addClass("suggested");
			$("#review-star-2").addClass("suggested");
			$("#review-star-3").addClass("suggested");
			$("#review-star-4").addClass("suggested");
			$("#review-star-5").addClass("suggested");
		});
		
		$("#review-star-1").mouseout(function(){
			$("#review-star-1").removeClass("suggested");
		});
		$("#review-star-2").mouseout(function(){
			$("#review-star-1").removeClass("suggested");
			$("#review-star-2").removeClass("suggested");
		});
		$("#review-star-3").mouseout(function(){
			$("#review-star-1").removeClass("suggested");
			$("#review-star-2").removeClass("suggested");
			$("#review-star-3").removeClass("suggested");
		});
		$("#review-star-4").mouseout(function(){
			$("#review-star-1").removeClass("suggested");
			$("#review-star-2").removeClass("suggested");
			$("#review-star-3").removeClass("suggested");
			$("#review-star-4").removeClass("suggested");
		});
		$("#review-star-5").mouseout(function(){
			$("#review-star-1").removeClass("suggested");
			$("#review-star-2").removeClass("suggested");
			$("#review-star-3").removeClass("suggested");
			$("#review-star-4").removeClass("suggested");
			$("#review-star-5").removeClass("suggested");
		});
		
		/* 마우스 클릭시 */
		$("#review-star-1").click(function(){
			$("#review-star-1").addClass("selected");
			$("#review-star-2").removeClass("selected");
			$("#review-star-3").removeClass("selected");
			$("#review-star-4").removeClass("selected");
			$("#review-star-5").removeClass("selected");
			
		});
		$("#review-star-2").click(function(){
			$("#review-star-1").addClass("selected");
			$("#review-star-2").addClass("selected");
			$("#review-star-3").removeClass("selected");
			$("#review-star-4").removeClass("selected");
			$("#review-star-5").removeClass("selected");
		});
		$("#review-star-3").click(function(){
			$("#review-star-1").addClass("selected");
			$("#review-star-2").addClass("selected");
			$("#review-star-3").addClass("selected");
			$("#review-star-4").removeClass("selected");
			$("#review-star-5").removeClass("selected");
		});
		$("#review-star-4").click(function(){
			$("#review-star-1").addClass("selected");
			$("#review-star-2").addClass("selected");
			$("#review-star-3").addClass("selected");
			$("#review-star-4").addClass("selected");
			$("#review-star-5").removeClass("selected");
		});
		$("#review-star-5").click(function(){
			$("#review-star-1").addClass("selected");
			$("#review-star-2").addClass("selected");
			$("#review-star-3").addClass("selected");
			$("#review-star-4").addClass("selected");
			$("#review-star-5").addClass("selected");
		});
		
		/* textarea 글자수 제한 및 경고창*/
		$("#vcontent").keyup(function(e){
			var inputlength = $(this).val().length;
			$("#review-text-count").html(inputlength);
			if (inputlength <20) {
				$(".review-modal__section__title__error-message").css("display","block");
				$("#vcontent").addClass("error");
				$(".review-modal__section__title-text").addClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text-none");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
			} else {	
				$(".review-modal__section__title__error-message").css("display","none");
				$("#vcontent").removeClass("error");
				$(".review-modal__section__title-text").removeClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text-none");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
			}
		});
		
		/* 리뷰 완료 버튼 클릭시 alert */
		$(".review-modal__form__submit").click(function(){
			if($(".review-list-goods").children().attr("class") == "review-list-goods-wrap") {
				$(".review-modal__section__title-goods-list").removeClass("review-modal__section__title--error");
				$(".review-modal__section__title__error-message-goods-list").css("display","none");
			} else {
				$(".review-modal__section__title-goods-list").addClass("review-modal__section__title--error");
				$(".review-modal__section__title__error-message-goods-list").css("display","block");
			}
			
			if($("#review-star-1").hasClass("selected")) {
				$(".review-modal__section__title-star").removeClass("review-modal__section__title--error");
				$(".review-modal__section__title__error-message-star").css("display","none");
			} else {
				$(".review-modal__section__title-star").addClass("review-modal__section__title--error");
				$(".review-modal__section__title__error-message-star").css("display","block");
			}
			
			if($(".review-modal__form__review-input__length__value").text() != 0) {
				$(".review-modal__section__title-text").removeClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text-none");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
			} else {
				$(".review-modal__section__title-text").addClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text-none");
			}
			
			if($(".review-modal__form__review-input__length__value").text() <20) {
				$(".review-modal__section__title-text").addClass("review-modal__section__title--error");
			} else {
				$(".review-modal__section__title-text").removeClass("review-modal__section__title--error");
			}
		
			if($("input[type=checkbox]").is(":checked")) {
				$(".review-modal__section__title-question").removeClass("review-modal__section__title--error");
				$(".checkbox-input").removeClass("errored"); 
				//alert("aaaa");
			} else {
				$(".review-modal__section__title-question").addClass("review-modal__section__title--error");
				$(".checkbox-input").addClass("errored"); 
			}
			
			if($("#review-star-1").hasClass("selected") && $(".review-modal__form__review-input__length__value").text() != 0 && $(".review-modal__form__review-input__length__value").text() >=20 && $("input[type=checkbox]").is(":checked")){
				reviewWriteForm.submit();
			}
			
		});
		
		
		
		/* 오늘의 리뷰 정책 */
		$(".review-modal__form__agree__policy-button").click(function(){
			if($("#review-modal__form__policy").hasClass("review-modal__form__policy")) {
				$("#review-modal__form__policy").removeClass("review-modal__form__policy");
				$("#review-modal__form__policy").addClass("review-modal__form__policy-none");
			} else {
				$("#review-modal__form__policy").removeClass("review-modal__form__policy-none");
				$("#review-modal__form__policy").addClass("review-modal__form__policy");
			}
		});
		
		/* 리뷰창 닫기 */
		$(".review-modal__close").click(function(){
			var review_close = confirm("작성하고 있던 내용이 유실됩니다. 정말 다른 페이지로 이동하시겠어요?");
			if(review_close == true) {
				 $("#gno option:eq(0)").prop("selected", true);
				 $(".review-list-goods").empty();
				 $(".review-modal__section__title-goods-list").removeClass("review-modal__section__title--error");
				 $(".review-modal__section__title__error-message-goods-list").css("display","none");
				 for(var i=1; i<6; i++) {
					 $("#review-star-"+i).removeClass("selected"); 
				 }
				$(".review-modal__section__title-star").removeClass("review-modal__section__title--error");
				$(".review-modal__section__title__error-message-star").css("display","none");
				$('.select-picture img').attr('src', '');
			    $("#review-image-input").hide();
			    $("textarea").val("");
			    $("#review-text-count").html(0);
			    $(".review-modal__section__title__error-message").css("display","none");
				$("#vcontent").removeClass("error");
				$(".review-modal__section__title-text").removeClass("review-modal__section__title--error");
				$("#text-required-item").addClass("review-modal__section__title__error-message-text-none");
				$("#text-required-item").removeClass("review-modal__section__title__error-message-text");
				$("#react-modal").removeClass("react-modal");
				$("#react-modal").addClass("react-modal-none");
				$(".review-modal__section__title-question").removeClass("review-modal__section__title--error");
				$(".checkbox-input").removeClass("errored"); 
				$("input[type=checkbox]").prop("checked",false);
				
			} else if(review_close == false) {
				$("#react-modal").removeClass("react-modal-none");
				$("#react-modal").addClass("react-modal");
			}
		
		});
		
		
		
		/* 문의하기 클릭 */
		$(".production-selling-section__right-q").click(function(){
			if($("#question-modal").hasClass("react-modal-none")) {
				$("#question-modal").removeClass("react-modal-none");
				$("#question-modal").addClass("react-modal");
			} else {
				$("#question-modal").addClass("react-modal-none");
				$("#question-modal").removeClass("react-modal");
			}
		});
		
		/* 문의하기 유형 선택 - 상품 */
		$(".question-1").click(function(){
			if($(".question-1").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("상품");
				question_type();
				$(".question-1").removeClass("product-question__wrap__type-select__box");
				$(".question-1").addClass("product-question__wrap__type-select__box--select");
			} 
		});
		/* 문의하기 유형 선택 - 배송 */
		$(".question-2").click(function(){
			if($(".question-2").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("배송");
				question_type();
				$(".question-2").removeClass("product-question__wrap__type-select__box");
				$(".question-2").addClass("product-question__wrap__type-select__box--select");
			} 
		});
		/* 문의하기 유형 선택 - 반품 */
		$(".question-3").click(function(){
			if($(".question-3").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("반품");
				question_type();
				$(".question-3").removeClass("product-question__wrap__type-select__box");
				$(".question-3").addClass("product-question__wrap__type-select__box--select");
			}
		});
		/* 문의하기 유형 선택 - 교환 */
		$(".question-4").click(function(){
			if($(".question-4").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("교환");
				question_type();
				$(".question-4").removeClass("product-question__wrap__type-select__box");
				$(".question-4").addClass("product-question__wrap__type-select__box--select");
			}
		});
		/* 문의하기 유형 선택 - 환불 */
		$(".question-5").click(function(){
			if($(".question-5").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("환불");
				question_type();
				$(".question-5").removeClass("product-question__wrap__type-select__box");
				$(".question-5").addClass("product-question__wrap__type-select__box--select");
			}
		});
		/* 문의하기 유형 선택 - 기타 */
		$(".question-6").click(function(){
			if($(".question-6").hasClass("product-question__wrap__type-select__box")) {
				$(".product-question__wrap__type-select input").val("기타");
				question_type();
				$(".question-6").removeClass("product-question__wrap__type-select__box");
				$(".question-6").addClass("product-question__wrap__type-select__box--select");
			}
		});
		
		function question_type() {
			for(var i=1; i<7; i++) {
				$(".question-"+i).addClass("product-question__wrap__type-select__box");
				$(".question-"+i).removeClass("product-question__wrap__type-select__box--select");
			}
		}
		
		
		/* 문의 완료 클릭 시 alert */
		$(".product-question__wrap__buttons__submit").click(function(){
			/* 문의하기 - 상품명 고르기 */
			if($("#goods-list option:selected").text() == "선택해주세요") {
				$("#goods-list").addClass("error");
				$("#goods-name").addClass("product-question__wrap__sub-title--error");
			} else {
				$("#goods-list").removeClass("error");
				$("#goods-name").removeClass("product-question__wrap__sub-title--error");
			}
			
			/* 문의하기 - 문의내용 */
			if($(".product-question__wrap__question").val().length < 1 ) {
				$("#qcontent").addClass("error");
				$("#question-content").addClass("product-question__wrap__sub-title--error");
			} else if($(".product-question__wrap__question").val().length >= 1) {
				$("#qcontent").removeClass("error"); 
				$("#question-content").removeClass("product-question__wrap__sub-title--error");
				
			}
			
			if($("#goods-list option:selected").text() != "선택해주세요" && $(".product-question__wrap__question").val().length >= 1) {
					questionWriteForm.submit();					
			}
			
		});
		/* 문의창 닫기 */
		$(".product-question__wrap__close").click(function(){
			var question_close = confirm("작성하고 있던 내용이 유실됩니다. 정말 다른 페이지로 이동하시겠어요?");
			if(question_close == true) {
				$("#question-model").removeClass("react-modal");
				$("#question-modal").addClass("react-modal-none");
			} else if(question_close == false) {
				$("#question-modal").removeClass("react-modal-none");
				$("#question-modal").addClass("react-modal");
			}
		
		}); 
		
		/* 문의화면 ajax */
		function q_ajax(qpage) {
			
			$.ajax({
				url:"interior_question_proc.do?ino=${ino}&qpage="+qpage,
				success: function(result) {
					
					var output = '';
					$(".production-question-feed__list").empty();
					 
					var jdata = JSON.parse(result);
					for (var i in jdata.interior_question) {
						output += '<article class="production-question-feed__item" id="answer-wrap-'+jdata.interior_question[i].qno+'">';
						output += '<header class="production-question-feed__item__header">';
						if(jdata.interior_question[i].ostatus == 0) {
							output += '비구매 | ';
						} else if (jdata.interior_question[i].ostatus == null) {
							output += '비구매 | ';
						} else if (jdata.interior_question[i].ostatus == 1) {
							output += '구매 | ';
						}
						output += ''+jdata.interior_question[i].qtype+' |';
						if(jdata.interior_question[i].qstatus == 0) {
							output += '<span class="unanswered"> 미답변</span>';
						} else if (jdata.interior_question[i].qstatus == 1) {
							output += '<span class="answered"> 답변완료</span>';
						}
						if("${email}"== jdata.interior_question[i].selleremail) {
							if(jdata.interior_question[i].qstatus == 0) {
								output += '<div class="production-selling-section__right-answer" id="answer-'+jdata.interior_question[i].qno+'"><button type="button" >답변하기</button></div>';
							}else if(jdata.interior_question[i].qstatus == 1) {
								output += '<div class="production-selling-section__right-update" id="update-'+jdata.interior_question[i].qno+'"><button type="button" >수정</button></div>'
								output += '<span> | </span>';
								output += '<div class="production-selling-section__right-delete" id="'+jdata.interior_question[i].qno+'-delete"><button type="button" >삭제</button></div>';
							}
						}
						
						output += '</header> ';
						output += '<p class="production-question-feed__item__author">'+jdata.interior_question[i].nickname+' | '+jdata.interior_question[i].qdate+'</p>';
						output += '<div class="production-question-feed__item__question">';
						output += '<span class="production-question-feed__item__badge">Q&nbsp;</span>';
						output += '<p class="production-question-feed__item__content"><span class="production-question-feed__item__content__option-name">'+jdata.interior_question[i].goods_name+'<br></span>'+jdata.interior_question[i].qcontent+'</p>';
						output += '</div>';
						output += '<div class="production-question-feed__item__answer" id="answer-'+jdata.interior_question[i].qno+'">';
						if(jdata.interior_question[i].qstatus == 1) {
							output += '<span class="production-question-feed__item__badge">A&nbsp;</span>';
							output += '<p class="production-question-feed__item__answer__author">';
							output += '<span class="author">'+jdata.interior_question[i].company+'</span>&nbsp;<span class="date">'+jdata.interior_question[i].qdate_r+'</span></p>';
							output += '<p class="production-question-feed__item__content">'+jdata.interior_question[i].qreply+'</p>';
						}
						output += '</div>';
						output += '<div class="production-question-feed__item__answer-write answer-none" id="'+jdata.interior_question[i].qno+'">';
						output += '<input type="hidden" value="${vo.ino}">';
						output += '';
						output += '</div>';
						output += '</article>';
					}
					
					$(".production-question-feed__list").empty();
					$("#ampaginationsm_q").remove();
					var pagee = '<div id="ampaginationsm_q" style="text-align:center;"></div>';
					
					$(".production-question-feed__list").append(output);
					$(".production-question-feed__list").after(pagee);

							
					 page2(jdata.dbcount, jdata.reqpage, jdata.pagesize);	
					
				}	
			});
			
		}
		
		 /** 페이징 처리 함수 **/
	    function page2(dbcount, reqpage, pagesize){
	       //페이지 번호 및  링크
	          var pager = jQuery("#ampaginationsm_q").pagination({
	             maxSize : 5,
	             totals:dbcount,
	             page : reqpage,
	             pageSize : pagesize,
	             
	             lastText : '&raquo;&raquo;',
	             firstText : '&laquo;&laquo;',
	             preTest : '&laquo;',
	             nextTest : '&raquo;',
	             
	             btnSize : 'sm'
	          });
	          
	          //
	          jQuery("#ampaginationsm_q").on('am.pagination.change',function(e){
	        	  q_ajax(e.page);
	          });
	    }//page
		
		/* 문의답변 - 답변하기 클릭시 */
		$(document).on("click",".production-selling-section__right-answer",function(event){
			var id = $(this).attr("id");
				id = id.split("-");
				
				if($("#"+id[1]).hasClass("answer-none")) {
					$("#"+id[1]).removeClass("answer-none");
					var	output = '<form name="answerForm" class="answerForm'+id[1]+'">'
					 	output += '<span class="production-question-feed__item__badge">A&nbsp;</span>';
						output += '<div>';
						output += '<span class="author" style="width:50%; margin-right:8px; font-weight:700;">${vo.company }</span>';
						output += '<div class="product-question__wrap__sub-title" id="question-content-admin-'+id[1]+'" style="display:inline-block; font-size:14px;">[ 문의답변 ]</div>';
						output += '</div>';
						output += '<textarea placeholder="문의 내용을 입력하세요" maxlength="1000" id="qcontent-admin-'+id[1]+'" name="qreply" class="form-control text-area-input product-question__wrap__question-admin" style="height: 39px;"></textarea>';
						output += '<div class="product-question__wrap__buttons" id="'+id[1]+'-btn" style="display:block; margin:16px auto; ">';
						output += '<button class="button button--color-blue button--size-50 button--shape-4 product-question__wrap__buttons__submit-fin" id="'+id[1]+'-fin" type="button" style="width:49%; margin-right:5px;">작성완료</button>';
						output += '<button class="button button--color-blue button--size-50 button--shape-4 product-question__wrap__buttons__submit-cancel" id="'+id[1]+'-del" type="button" style="width:49%;">작성취소</button>';
						output += '</div>';
						output += '</form>';
						$("#"+id[1]).append(output);
						
						$("#answer-"+id[1]+" button").text("취소하기");	 
				} else {
						$("#answer-"+id[1]+" button").text("답변하기");
						$("#"+id[1]).empty();
						$("#"+id[1]).addClass("answer-none");
				}
				
		}); 
		
		/* 문의답변 완료 클릭 시 alert ----> 문의답변 쓰기*/
		$(document).on("click",".product-question__wrap__buttons__submit-fin",function(event){
			
			var id = $(this).attr("id");
				id = id.split("-");
				//alert(id);
			
			var qreply = $("#qcontent-admin-"+id[0]).val();
			/* 문의답변 - 문의내용 */
			if($("#qcontent-admin-"+id[0]).val().length < 1 ) {
				$("#qcontent-admin-"+id[0]).addClass("error");
				$("#question-content-admin-"+id[0]).addClass("product-question__wrap__sub-title--error");
			} else if($("#qcontent-admin-"+id[0]).val().length >= 1) {
				$("#qcontent-admin-"+id[0]).removeClass("error"); 
				$("#question-content-admin-"+id[0]).removeClass("product-question__wrap__sub-title--error");
				
			
				$.ajax({
					url:"interior_question_answer.do?qno="+id[0]+"&qreply="+qreply+"&ino=${ino}",
					success: function(result) {
						q_ajax("");
						
					} 
				});
				
				
			}
			
			
			// submit
		});
		/* 문의답변 화면처리 */
		function answer_page(id){ 
		$.ajax({
			url:"interior_question_answer_proc.do?qno="+id[0]+"&ino=${ino}",
			success: function(result) {
					 $("#"+id[0]).addClass("answer-none");
					
					var jdata = JSON.parse(result);
					var output = "";
					//$("#answer-wrap-"+id[0]).empty();
					for(var i in jdata.interior_answer) {
						//output +='<article class="production-question-feed__item" data-qna-id="2637633">';
						output += '<header class="production-question-feed__item__header">';
						if(jdata.interior_answer[i].ostatus == '0') {
							output += '비구매 | ';
						} else if (jdata.interior_answer[i].ostatus == '1') {
							output += '구매 | ';
						} else if (jdata.interior_answer[i].ostatus == null) {
							output += '비구매 | ';
						}
						output += ''+jdata.interior_answer[i].qtype+' | ';
						 if(jdata.interior_answer[i].qstatus == 0) {
							output += '<span class="unanswered">미답변</span>';
							output += '<div class="production-selling-section__right-answer" id="answer-'+id[0]+'"><button type="button" >답변하기</button></div>';
						} else if (jdata.interior_answer[i].qstatus == 1) {
							output += '<span class="answered">답변완료</span>';
							output += '<div class="production-selling-section__right-update" id="update-'+id[0]+'"><button type="button" >수정</button></div>';
							output += '<span> | </span>';
							output += '<div class="production-selling-section__right-delete" id="'+id[0]+'-delete"><button type="button" >삭제</button></div>';
						} 
						output += '</header>';
						output += '<p class="production-question-feed__item__author">'+jdata.interior_answer[i].nickname+' | '+jdata.interior_answer[i].qdate+'</p>';
						output += '<div class="production-question-feed__item__question">';
						output += '<span class="production-question-feed__item__badge">Q&nbsp;</span>';
						output += '<p class="production-question-feed__item__content"><span class="production-question-feed__item__content__option-name">'+jdata.interior_answer[i].goods_name+'<br></span>'+jdata.interior_answer[i].qcontent+'</p>';
						output += '</div>';
						output += '<div class="production-question-feed__item__answer" id="answer-'+id[0]+'">';
						if(jdata.interior_answer[i].qstatus ==1) {
							output += '<span class="production-question-feed__item__badge">A&nbsp;</span>';
							output += '<p class="production-question-feed__item__answer__author">';
							output += '<span class="author">'+jdata.interior_answer[i].company+'</span>&nbsp;<span class="date">'+jdata.interior_answer[i].qdate_r+'</span></p>';
							output += '<p class="production-question-feed__item__content">'+jdata.interior_answer[i].qreply+'</p>';
						}
						output += '</div>';
						//output += '</article>';
					}
					
					$("#answer-wrap-"+id[0]).append(output); 
				} 
			});
		
		}
		
		/* 문의답변 수정처리 */
		$(document).on("click",".production-selling-section__right-update",function(event){
			var id = $(this).attr("id");
			id = id.split("-");
				//alert("update===>"+id[1]);
			var qreply = $("#qcontent-admin-"+id[1]).val();
				
				$.ajax({
					url:"interior_question_answer_update_proc.do?qno="+id[1]+"&ino=${ino}",
					success: function(result) {
						var jdata = JSON.parse(result);
						var	output = "";
						$("#answer-"+id[1]).empty();
						//$("#"+id[1]).remove();
						$("#"+id[1]).removeClass("answer-none");
						$("#"+id[1]).empty();
						//alert("aaaaaaaaaa-update");
						for(var i in jdata.interior_answer) {
							//output += '<div class="production-question-feed__item__answer-write" id='+id[1]+'>';
							output += '<form name="answerForm" class="answerForm'+id[1]+'">'
						 	output += '<span class="production-question-feed__item__badge">A&nbsp;</span>';
							output += '<div>';
							output += '<span class="author" style="width:50%; margin-right:8px; font-weight:700;">'+jdata.interior_answer[i].company+'</span>';
							output += '<div class="product-question__wrap__sub-title" id="question-content-admin-'+id[1]+'" style="display:inline-block; font-size:14px;">[ 문의답변 ]</div>';
							output += '</div>';
							output += '<textarea placeholder="문의 내용을 입력하세요" maxlength="1000" id="qcontent-admin-'+id[1]+'" name="qreply" class="form-control text-area-input product-question__wrap__question-admin" style="height: 39px;">'+jdata.interior_answer[i].qreply+'</textarea>';
							output += '<div class="product-question__wrap__buttons" id="'+id[1]+'-btn" style="display:block; margin:16px auto; ">';
							output += '<button class="button button--color-blue button--size-50 button--shape-4 product-question__wrap__buttons__submit-fin" id="'+id[1]+'-fin" type="button" style="width:49%; margin-right:5px;">작성완료</button>';
							output += '<button class="button button--color-blue button--size-50 button--shape-4 product-question__wrap__buttons__submit-cancel" id="'+id[1]+'-del" type="button" style="width:49%;">작성취소</button>';
							output += '</div>';
							output += '</form>';
							//output += '</div>';
						}
						$("#"+id[1]).append(output);
						
					} 
				});
				
			
		});
		
		/* 문의답변 삭제처리 */
		$(document).on("click",".production-selling-section__right-delete",function(event){
			var id = $(this).attr("id");
			id = id.split("-");
			
			$.ajax({
				url:"interior_question_answer_delete.do?qno="+id[0]+"&ino=${ino}",
				success: function(result) {
					var jdata = JSON.parse(result);
					
					if(!$("#"+id[0]).hasClass("answer-none")) {
						 $("#"+id[0]).addClass("answer-none");
					}

					$("#answer-"+id[0]).empty();
					q_ajax("");
				
				}  
			});
			
		});
		
		/* 문의답변 취소 클릭 시 */
		$(document).on("click",".product-question__wrap__buttons__submit-cancel",function(event){
			var id = $(this).attr("id");
			id = id.split("-");
				$("textarea#qcontent-admin-"+id[0]).val("");
				//alert("del"+id[0]);
		});
		
		$(".form-control").change(function(){
			var id = $(this).attr("id");
		//	alert($("#"+id).val());
		});
		
		var gno = new Array();
		
		$(".production-select-list__item-main-list").each(function(i){
			$(this).click(function(e){
		
				var id = $(this).attr("id");
				id = id.split("-");
				gno.push(id[2]);
				e.preventDefault();

			});
		}); 
		$(".production-select-list__item-sub-list").each(function(i){
			$(this).click(function(e){
		
				var id = $(this).attr("id");
				id = id.split("-");
				gno.push(id[3]);
				e.preventDefault();

			});
		}); 
	

		$(".selling-option-item__delete-main").each(function(i){
			$(this).click(function(e){
				var id = $(this).attr("id");
					id = id.split("-");
				var itemtoRemove = id[2];
					gno.splice($.inArray(itemtoRemove, gno),1);
				
			});
		});


		$(".buying-main").click(function(){
			var ocount = new Array();
			var cnt = '';
			$.each(gno, function(index, item){ 
				if($("#pro-order-"+item+" .form-control").val() != null) {
					 cnt = $("#pro-order-"+item+" .form-control").val();
					 ocount.push(cnt);
					 
				}
			});

			//alert(gno);
			//alert(ocount);
			
			location.href="http://localhost:9000/myhouse/store_payment.do?email=${email}&gno="+gno+"&ocount="+ocount;
		}); 
			
		$(".basket-main").click(function(){
			var bcount = new Array();
			var cnt = '';
			$.each(gno, function(index, item){ 
				if($("#pro-order-"+item+" .form-control").val() != null) {
					 cnt = $("#pro-order-"+item+" .form-control").val();
					 bcount.push(cnt);
					
				}
			});

			/* alert(gno);
			alert(bcount); */
			
			location.href="http://localhost:9000/myhouse/store_basket_proc.do?email=${email}&gno="+gno+"&bcount="+bcount;
		}); 
			
			
		
	});
	
	
</script>
</head>
<body>
<!-- header -->
	<jsp:include page="../header1.jsp" />
<div class="production-selling">
	<div class="production-selling-overview container">
		<nav class="commerce-category-breadcrumb-wrap production-selling-overview__category">
			<!-- <ol class="commerce-category-breadcrumb">
				<li class="commerce-category-breadcrumb__entry"><a class="link" href="/store/category?category=0&amp;affect_type= ProductSaleDetail&amp;affect_id=647815">가구</a>
			</ol> -->
		</nav>
		<div class="production-selling-overview__container row">
			<div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
				<div class="production-selling-cover-image-container">
					<!-- Swiper -->
					  <div class="swiper-container gallery-top">
					    <div class="swiper-wrapper main">
					        <c:forEach var="vo" items="${interior_top }" >
							      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/resources/upload/${vo.goods_simage})"></div>
					    	  </c:forEach>
					    </div>
					    <!-- Add Arrows -->
					  </div>
					  <div class="swiper-container gallery-thumbs">
						  <ul class="swiper-wrapper thumb">
						 	 <c:forEach var="vo" items="${interior_top }" >
							      <li class=" swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}); width:70px;"></li>
					    	  </c:forEach>
						  	
						  </ul>
					  </div>
				</div> <!-- production-selling-cover-image-container -->
			</div> <!-- production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7 -->
			<div class="production-selling-overview__content col-12 col-md-6 col-lg-5">
				<div class="production-selling-header">
					<h1 class="production-selling-header__title">
						<p class="production-selling-header__title__brand-wrap">
							<a class="production-selling-header__title__brand" href="#">${vo.company}</a>
						</p>
						<span class="production-selling-header__title__name">${vo.ititle }</span>
					</h1>
					<div class="production-selling-header__content production-selling-header__content--deal" id="${email }">
						<div class="production-selling-header__action">
							<button class="production-selling-header__action__button production-selling-header__action__button-scrap " type="button" id="main-scrap">
								<!-- production-selling-header__action__button--active -->
								<svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
									<span class="count">${vo.scrap_cnt }</span></button> <!-- 스크랩수 -->
						</div>  
						<P class="production-selling-header__review-wrap">
							<a class="production-selling-header__review" href="#">
								<span class="production-selling-header__review__icon" aria-label="별점 4.6점">
								<c:choose>
									<c:when test="${vo.star_count eq 1}">
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
									</c:when>
									<c:when test="${vo.star_count eq 2}">
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
									</c:when>
									<c:when test="${vo.star_count eq 3}">
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
									</c:when>
									<c:when test="${vo.star_count eq 4}">
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
									</c:when>
									<c:when test="${vo.star_count eq 5}">
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
										<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
									</c:when>
									
								</c:choose>
								</span>
								<span class="production-selling-header__review__text">
									<span class="number">${vo.review_cnt }</span><span class="postfix">개 리뷰</span>
								</span>
							</a>
						</P> <!-- production-selling-header__review-wrap -->
						<p class="production-selling-header__price">
							<span class="production-selling-header__price__row">
								<span class="production-selling-header__price__price-wrap">
									<span class="production-selling-header__price__price">
										<span class="number">${vo.goods_price}</span><span class="won"> 원</span><span class="won"> 외</span>
							</span> <!-- production-selling-header__price__row -->
						</p>
					</div>
					<p class=" production-selling-header__delivery production-selling-header__delivery--deal">
						<span class="production-selling-header__delivery__type">배송 상품정보 참고</span>
					</p>
				</div> <!-- production-selling-header -->
				<div class="production-selling-option-form production-selling-overview__option-form">
					<div class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">
						<div class="production-select-dropdown">
							<div class="production-select-dropdown__button">
								<button class="production-select-button" type="button">
									<div class="production-select-button__production" id="pro-select-0">
										<div class="production-select-button__production__blank">상품을 선택하세요.</div>
										<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
									</div>
									<c:forEach var="vo" items="${interior_top }" >
									<div class="production-select-button__production-box select-none" id="pro-select-${vo.gno }">
										<div class="production-select-button__production__index">${vo.rno }</div>
										<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}"></div>
										<div class="production-select-button__production__text">${vo.goods_name }</div>
										<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
									</div>
									</c:forEach>
								</button>
							</div>
							<div class="production-select-dropdown__list-container" id="pro-select-list">
								<ul class="production-select-list production-select-dropdown__list">
									<c:forEach var="vo" items="${interior_top }" >
									<li class="production-select-list__item-main-list" id="select-item-${vo.gno }">
										<button class="production-select-item" type="button">
											<div class="production-select-item__index">${vo.rno }</div>
											<div class="production-select-item__image"><img class="image" alt="" src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}"></div>
											<div class="production-select-item__contents"><span class="production-select-item__contents__name">${vo.goods_name }</span>
											<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">56<span class="percentage">% </span></span>
											<span class="production-item-price__price">${vo.goods_price }</span></span>
											<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div>
										</button>
									</li>
									</c:forEach>
								</ul>
							</div>
						</div> <!-- production-select-dropdown -->
						<ul class="selling-option-form-content__list select-none" id="pro-order-0">
						<!-- <form class="card-collection-form container" name="StoreBasketForm" action="store_basket_proc.do" method="post" enctype="multipart/form-data"> -->
							<c:forEach var="vo" items="${interior_top }" >
							<li class="order-list order-none" id="pro-order-${vo.gno }" ><article class="selling-option-item">
								<input type="hidden" class="main_order" value="${vo.goods_price }">
								<input type="hidden" class="main_order_h" value="0">
								<input type="hidden" class="main_order_gno" value="${vo.gno }">
								<h1 class="selling-option-item__production">${vo.goods_name }</h1>
							<!-- 	<h2 class="selling-option-item__name">침대프레임 사이즈: 퀸(매트제외) / 색상 옵션: 내츄럴원목</h2> -->
								<button class="selling-option-item__delete-main" type="button" aria-label="삭제" id="order-del-${vo.gno }"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
								<div class="selling-option-item__controls">
									<div class="selling-option-item__quantity-main">
										<div class="input-group select-input option-count-input">
										<select class="form-control count-main"  id="${vo.gno }" name="count-name">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
										</div>
									</div>
									<p class="selling-option-item__price">
										<span class="selling-option-item__price__number" id="${vo.gno }">${vo.goods_price }</span>원
									</p></div>
									</article>
								</li>
								</c:forEach>
							</ul>
						<p class="selling-option-form-content__price">
							<span class="selling-option-form-content__price__left">주문금액</span>
							<span class="selling-option-form-content__price__right">
								<span class="selling-option-form-content__price__number-main">0</span>원
							</span>
						</p>
					</div>
					<div class="production-selling-option-form__footer">
						<button class="button button--color-blue-inverted button--size-55 button--shape-4 basket-main" type="button">장바구니</button>
						<button class="button button--color-blue button--size-55 button--shape-4 buying-main" type="button">바로구매</button>
					</div>
				</div> <!-- production-selling-option-form production-selling-overview__option-form -->
			</div>
			
		</div> <!-- production-selling-overview__container row -->
	</div> <!-- production-selling-overview containe -->
	<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="130" class="sticky-container production-selling-navigation-wrap" style="position: sticky; top: 0;">
		<div class="sticky-child production-selling-navigation" style="position:relative">
			<nav class="production-selling-navigation__content">
				<ol class="production-selling-navigation__list">
					<li><a class="production-selling-navigation__item production-selling-navigation__item--active" href="#production-selling-information" id="scroll-pro">상품정보</a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-review" id="scroll-review">리뷰<span class="production-selling-navigation__item__count">${vo.review_cnt}</span></a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-question" id="scroll-q-a">문의<span class="production-selling-navigation__item__count">${vo.qno_count }</span></a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-delivery" id="scroll-delivery">배송/환불</a></li>
				</ol></nav>
		</div>
	</div> <!-- sticky-container production-selling-navigation-wrap -->
	<div class="production-selling__detail-wrap container">
		<div class="production-selling__detail row">
			<div class="production-selling__detail__content col-12 col-lg-8">
				<div class="production-selling-content">
					<a id="production-selling-information"></a>
					<section class="idx production-selling-section">
						<div class="production-selling-description production-selling-description--notice production-selling-description--open">
							<ul class="production-selling-description__delivery-notice">
								<li><b>배송까지 <span class="red">최대 15일</span> (주말과 공휴일 제외) 소요됩니다.</b></li>
								<li>고객주문 &gt; 주문확인 &gt; 상품준비(3~7일) &gt; 안내전화 &gt; 배송</li>
								<li>주문확인 이후에는 구매 취소와 배송지 변경이 불가합니다.</li>
								<%-- <li>${vo.icontent }</li> --%>	
							</ul>
							<div class="production-selling-description__content">
								<img src="http://localhost:9000/myhouse/resources/upload/${vo.interior_simage }">
							</div>
						</div> <!-- 상품정보::사진  -->
					</section>
					<a id="production-selling-review"></a>
					<section class="idx production-selling-section">
						<header class="production-selling-section__header">
							<h1 class="production-selling-section__title">리뷰 <span class="count">${vo.review_cnt}</span></h1>
							<div class="production-selling-section__right"><button type="button">리뷰쓰기</button></div>
							
						</header>
						<div class="production-review-feed">
							<div class="production-review-feed__header-v2">
								<div class="production-review-feed__header-v2__stars">
									<div class="production-review-feed__header-v2__stars__badge">
										<span class="badge__mobile">4.5</span> <!-- 별점값 받는 부분 :: 안보임 -->
										<span class="icon" aria-label="별점 4.5점">
											<c:choose>
												<c:when test="${vo.star_count eq 1}">
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
												</c:when>
												<c:when test="${vo.star_count eq 2}">
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
												</c:when>
												<c:when test="${vo.star_count eq 3}">
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
												</c:when>
												<c:when test="${vo.star_count eq 4}">
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
												</c:when>
												<c:when test="${vo.star_count eq 5}">
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
													<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
												</c:when>
											</c:choose>
										</span>
										<span class="badge__pc">평균 ${vo.star_count } 점</span>
									</div> <!-- 별점 -->
									<div class="production-review-feed__header-v2__stars__avg">
										<div class="production-review-feed__header-v2__stars__avg-warp">
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label" id="star_5">5점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${rvo5.star_cnt }<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label" id="star_4">4점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${rvo4.star_cnt }<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label" id="star_3">3점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${rvo3.star_cnt }<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label" id="star_2">2점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${rvo2.star_cnt }<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label" id="star_1">1점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${rvo1.star_cnt }<span>&nbsp;&nbsp;개</span></div>
											</div>
										</div>
									</div> <!-- 별점 준 인운수 -->
								</div>
							</div> <!-- production-review-feed__header-v2 -->
							<div class="filter">
								<div class="production-review-feed__filter-wrap">
									<div class="production-review-feed__filter">
										<div class="production-review-feed__filter__order-list">
											<button class="production-review-feed__filter__order--active" aria-pressed="true" type="button" id="review-best">베스트순</button>
											<button class="production-review-feed__filter__order" aria-pressed="false" type="button" id="review-recently">최신순</button>
											<button class="production-review-feed__filter__order production-review-feed__filter__order--photo" aria-pressed="false" type="button" id="review-photo"><svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" d="M15.821 3a.67.67 0 0 1 .679.672v10.656a.67.67 0 0 1-.679.672H2.18a.67.67 0 0 1-.679-.672V3.672c0-.375.3-.672.679-.672H15.82zm-.679 1.344H2.858v8.14L7.01 7.781c.094-.125.284-.125.394 0l2.321 2.657c.048.046.063.109.048.156l-.3 1.375c-.016.11.11.172.173.094l2.369-2.579a.202.202 0 0 1 .284 0l2.842 3.094V4.344zm-2.526 3.61a1.1 1.1 0 0 1-1.105-1.095 1.1 1.1 0 0 1 1.105-1.093 1.1 1.1 0 0 1 1.105 1.093 1.1 1.1 0 0 1-1.105 1.094z">
												</path></svg>사진리뷰</button>
										</div> <!-- production-review-feed__filter__order-list -->
									</div>
								</div> <!-- production-review-feed__filter-wrap -->
							</div> <!-- filter -->
							<div class="production-review-feed__list">
								<c:forEach var="rvo" items="${interior_review }" >
								<div class="production-review-item__container"> 
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="http://localhost:9000/myhouse/mypage_profile1.do">
												<img src="http://localhost:9000/myhouse/resources/upload/${rvo.member_spimage }" class="production-review-item__writer__img" >
											</a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">${rvo.nickname }</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<c:choose>
														<c:when test="${rvo.star eq 1}">
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
														</c:when>
														<c:when test="${rvo.star eq 2}">
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
														</c:when>
														<c:when test="${rvo.star eq 3}">
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
														</c:when>
														<c:when test="${rvo.star eq 4}">
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 없음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-544"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
														</c:when>
														<c:when test="${rvo.star eq 5}">
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
															<!-- 있음 --><svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
														</c:when>
													</c:choose>
													
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">${rvo.vdate } ∙ 스위트홈 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name">${rvo.goods_name }</div>
										<c:if test="${rvo.review_simage ne null}">
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="http://localhost:9000/myhouse/resources/upload/${rvo.review_simage }">
										</button>
										</c:if>
										<p class="production-review-item__description">${rvo.vcontent }</p>
									</article>
								</div> <!-- production-review-item__container -->
								</c:forEach>
								
							</div> <!-- production-review-feed__list -->
							<!--  -->
						</div>
					</section>
					<a id="production-selling-question"></a>
					<section class="idx production-selling-section">
						<header class="production-selling-section__header">
							<h1 class="production-selling-section__title">문의 <span class="count">${vo.qno_count }</span></h1>
							<div class="production-selling-section__right-q"><button>문의하기</button></div>
						</header>
						<div class="production-question-feed">
							<div class="production-question-feed__list" >
					
							</div> <!-- production-question-feed__list -->
							<!-- <div id="ampaginationsm"></div> -->
						</div> <!-- production-question-feed -->
					</section> <!-- 문의하기  -->
					<a id="production-selling-delivery"></a>
					<section class="idx production-selling-section">
						<header class="production-selling-section__header"><h1 class="production-selling-section__title">배송</h1></header>
						<table class="production-selling-table">
							<tbody>
								<tr><th>배송</th><td>업체직접배달 | 15일 이내 배송</td></tr>
								<tr><th>배송비</th><td>무료배송</td></tr>
								<tr><th>배송불가 지역</th><td>도서산간 지역 / 제주도</td></tr>
								<tr><th>지역별 차등 배송비</th><td>서울경기 20,000원,충청도 50,000원,전라도/경상도 70,000원, 강원도 80,000원</td></tr>
							</tbody>
						</table>
					</section>
					<section class="production-selling-section">
						<header class="production-selling-section__header"><h1 class="production-selling-section__title">교환/환불</h1></header>
						<div class="production-selling-refund">
							<table class="production-selling-table production-selling-refund__table">
								<tbody>
									<tr><th>반품배송비</th><td>100,000원 (최초 배송비가 무료인 경우 200,000원 부과)</td></tr>
									<tr><th>교환배송비</th><td>100,000원</td></tr>
									<tr><th>보내실 곳</th><td>(21409) 인천 부평구 부영로25번길 18 (부평동)  1층</td></tr>
								</tbody>
							</table>
							<h2 class="production-selling-refund__title">반품/교환 사유에 따른 요청 가능 기간</h2>
							<p class="production-selling-refund__note">반품 시 먼저 판매자와 연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
							<ol class="production-selling-refund__list">
								<li>구매자 단순 변심은 상품 수령 후 7일 이내&nbsp;<small>(구매자 반품배송비 부담)</small></li>
								<li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내.<br>둘 중 하나 경과 시 반품/교환 불가&nbsp;<small>(판매자 반품배송비 부담)</small></li>
							</ol>
							<h2 class="production-selling-refund__title">반품/교환 불가능 사유</h2>
							<p class="production-selling-refund__note">아래와 같은 경우 반품/교환이 불가능합니다.</p>
							<ol class="production-selling-refund__list">
								<li>반품요청기간이 지난 경우</li>
								<li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우&nbsp;<small>(단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</small></li>
								<li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우&nbsp;<small>(예: 식품, 화장품)</small></li>
								<li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우&nbsp;<small>(라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</small></li>
								<li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우&nbsp;<small>(예: 식품, 화장품)</small></li>
								<li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li><li>복제가 가능한 상품 등의 포장을 훼손한 경우&nbsp;<small>(CD/DVD/GAME/도서의 경우 포장 개봉 시)</small></li>
							</ol>
						</div> <!-- production-selling-refund :: 배송 및 환불 -->
					</section>
				</div>
			</div> <!-- production-selling__detail__content col-12 col-lg-8 -->
			<div class="production-selling__detail__sidebar col-4">
			
				<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="183" class="sticky-container production-selling-sidebar-wrap" style="position: sticky; top:40px;">
					<div class="sticky-child production-selling-sidebar" style="position: relative; box-sizing: border-box; height: 720px;">
						<section class="production-selling-sidebar-content production-selling-sidebar__content">
							<div class="production-selling-option-form production-selling-sidebar-content__option-form">
								<div class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">
									<div class="production-select-dropdown-side">
										<div class="production-select-dropdown__button-side">
											<button class="production-select-button" type="button">
												<div class="production-select-button__production">
													<div class="production-select-button__production__blank" id="pro-select-side-0">상품을 선택하세요.</div>
													<c:forEach var="vo" items="${interior_top }" >
													<div class="production-select-button__production-sub select-none" id="pro-select-side-${vo.gno }">
														<div class="production-select-button__production__index">${vo.rno }</div>
														<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}"></div>
														<div class="production-select-button__production__text">${vo.goods_name }</div>
													</div>
													</c:forEach>
													<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
												</div></button>
										</div> <!-- production-select-dropdown__button-side -->
										<div class="production-select-dropdown__list-container deal-selling__sidebar-production-list" id="side-order-list">
											<ul class="production-select-list production-select-dropdown__list">
												<c:forEach var="vo" items="${interior_top }" >
												<li class="production-select-list__item-sub-list" id="select-side-item-${vo.gno }">
													<button class="production-select-item" type="button">
														<div class="production-select-item__index">${vo.rno }</div>
														<div class="production-select-item__image"><img class="image" src="http://localhost:9000/myhouse/resources/upload/${vo.goods_simage}"></div>
														<div class="production-select-item__contents">
															<span class="production-select-item__contents__name">${vo.goods_name }</span>
															<span class="production-item-price production-select-item__contents__price">
																<span class="production-item-price__rate">56<span class="percentage">% </span></span>
																<span class="production-item-price__price">${vo.goods_price }</span>
															</span>
															<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div>
														</div>
													</button>
												</li>
												</c:forEach>
											</ul>
										</div>
									</div> <!-- production-select-dropdown -->
									<ul class="selling-option-form-content__list select-none" id="pro-order-side-0">
									<!-- <form class="card-collection-form container" name="uploadPhotoForm" action="upload_photo_proc.do" method="post" enctype="multipart/form-data"> -->
										<c:forEach var="vo" items="${interior_top }" >
										<li class="order-list order-none" id="pro-order-side-${vo.gno }"><article class="selling-option-item">
												<input type="hidden" class="sub_order" value="${vo.goods_price }">
												<input type="hidden" class="sub_order_h" value="0">
												<h1 class="selling-option-item__production">${vo.goods_name }</h1>
												<button class="selling-option-item__delete-sub" type="button" aria-label="삭제" id="order-del-side-${vo.gno }"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
											<div class="selling-option-item__controls">
												<div class="selling-option-item__quantity-sub">
													<div class="input-group select-input option-count-input">
													<select class="form-control-sub" id="sub-${vo.gno }">
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
													</select>
													</div>
												</div>
													<p class="selling-option-item__price">
														<span class="selling-option-item__price__number" id="sub-${vo.gno }">${vo.goods_price }</span>원
													</p>
											 </div>	
										</article></li>
										</c:forEach>
									</ul>
									<p class="selling-option-form-content__price">
										<span class="selling-option-form-content__price__left">주문금액</span>
										<span class="selling-option-form-content__price__right">
											<span class="selling-option-form-content__price__number-sub">0</span>원
										</span>
									</p>
								</div> <!-- selling-option-form-content deal-selling-option-form-content production-selling-option-form__form :: 주문내용 -->
								<div class="production-selling-option-form__footer" id=${email }>
									<div class="scrap-box">
										<button class="button button--color-gray-14-inverted button--size-55 button--shape-4 production-selling-sidebar-content__scrap" type="button" id="side-order"><svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg></button>
									</div>

									<button class="button button--color-blue-inverted button--size-55 button--shape-4 basket-sub" type="button">장바구니</button>
									<button class="button button--color-blue button--size-55 button--shape-4 buying-sub" type="button">바로구매</button>
								</div>
							</div> <!-- production-selling-option-form production-selling-sidebar-content__option-form -->
							<!-- </form> -->
						</section>
					</div> <!-- sticky-child production-selling-sidebar -->
				</div>
			</div> <!--production-selling__detail__sidebar col-4  -->
		</div>
	</div>
</div> <!-- production-selling -->

<!-- 리뷰쓰기 창  -->
<div class="react-modal-none react-modal--center review-modal__modal__wrap open open-active" id="react-modal">
	<div class="react-modal__content-wrap">
		<div class="react-modal__content review-modal__modal">
			<div class="review-modal">
				<div class="review-modal__title">리뷰 쓰기<button type="button" class="review-modal__close"><svg class="review-modal__close__icon" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path></svg></button></div>
				<form class="review-modal__form" name="reviewWriteForm" action="interior_review_insert.do?ino=${ino}"  method="post" id="frm-review"  enctype="multipart/form-data">
					<input type="hidden" id="ino" name="ino" value="${vo.ino }">
					<div class="review-modal__section__title-goods-list" style="margin-top:20px; margin-bottom:-10px;">구매 상품
							<div class="review-modal__section__title__error-message-goods-list" style="display:none;" >필수 선택 항목입니다.</div></div>
					<div>
						<div class="product-review__wrap__option-select" style="width:100%;"> 
							<div class="input-group select-input product-review__wrap__option-select__input" >
								<select class="form-control-review empty" id="${vo.gno }" name="gno">
									<option value="" >선택해주세요</option>
									<c:forEach var="vo" items="${interior_top }">
										<option value="${vo.gno }">${vo.goods_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="review-modal__form__product">
							<div class="review-list-goods" >
								
							</div>
						</div>
					</div>
					
					<div class="review-modal__section">
						<div class="review-modal__section__title-star" style="margin-top:-20px">별점 평가
							<div class="review-modal__section__title__error-message-star" style="display:none;" >필수 입력 항목입니다.</div></div>
						<div class="review-modal__form__star__wrap">
							<div class="review-modal__form__star">
								<div class="review-modal__form__star__label">만족도</div>
									<div class="review-modal__form__star__value">
										<ul class="rating-input">
											<li ><label class="rating-input__star" aria-label="별점 1점" id="review-star-1"><input type="radio" value="1" name="star"><svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
											<li ><label class="rating-input__star" aria-label="별점 2점" id="review-star-2"><input type="radio" value="2" name="star"><svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
											<li ><label class="rating-input__star" aria-label="별점 3점" id="review-star-3"><input type="radio" value="3" name="star"><svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
											<li ><label class="rating-input__star" aria-label="별점 4점" id="review-star-4"><input type="radio" value="4" name="star"><svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
											<li ><label class="rating-input__star" aria-label="별점 5점" id="review-star-5"><input type="radio" value="5" name="star"><svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
										</ul>
									</div>
							</div>
						</div>
					</div>
					<div class="review-modal__section">
						<div class="review-modal__section__title-photo">사진 첨부 (선택)</div>
						<div class="review-modal__section__explain">사진을 첨부해주세요. (최대 1장)</div>
						<div class="select-picture" id="review-image-input">
							<img class="select-picture__contents" src="" >
								<button class="button button--color-blue button--size-50 button--shape-4 select-picture__delete" type="button"><svg viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet"><defs><filter id="delete-a" width="134.3%" height="175%" x="-17.1%" y="-37.5%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="3"></feGaussianBlur><feColorMatrix in="shadowBlurOuter1" result="shadowMatrixOuter1" values="0 0 0 0 0.182857143 0 0 0 0 0.205714286 0 0 0 0 0.22 0 0 0 0.2 0"></feColorMatrix><feMerge><feMergeNode in="shadowMatrixOuter1"></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter><path id="delete-b" d="M11 3.83v10c0 .92-.75 1.67-1.67 1.67H2.67c-.92 0-1.67-.75-1.67-1.67v-10h10zM8.08.5l.84.83h2.91V3H.17V1.33h2.91L3.92.5h4.16z"></path></defs><g fill="none" fill-rule="evenodd" filter="url(#delete-a)" transform="translate(4 2)"><mask id="delete-c" fill="#fff"><use xlink:href="#delete-b"></use></mask><g fill="#FFF" mask="url(#delete-c)"><path d="M-4-2h20v20H-4z"></path></g></g></svg>
								삭제</button> 
						</div>
							<label class="button button--color-blue-inverted button--size-50 button--shape-4 upload-button" type="button" id="image-add">
								<svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M21.1 4c.5 0 .9.4.9.9v14.2c0 .5-.4.9-.9.9H2.9a.9.9 0 01-.9-.9V4.9c0-.5.4-.9.9-.9h18.2zm-.91 1.8H3.8v10.85l5.54-6.27c.12-.17.38-.17.52 0l3.1 3.54c.06.06.08.14.06.2l-.4 1.84c-.02.14.15.23.23.12l3.16-3.43a.27.27 0 01.38 0l3.79 4.12V5.8zm-3.37 4.8a1.47 1.47 0 01-1.47-1.45c0-.81.66-1.46 1.47-1.46s1.48.65 1.48 1.46c0 .8-.66 1.45-1.48 1.45z"></path></svg> 
								사진 첨부하기<input id="select-picture" type="file" name="file1">
							</label> 
							
					</div>
					<div class="review-modal__section">
						<div class="review-modal__section__title-text">리뷰 작성 
						<div class="review-modal__section__title__error-message" style="display:none;">20자 이상 입력해주세요.</div> 
						<div class="review-modal__section__title__error-message-text-none" id="text-required-item" >필수 입력 항목입니다.</div></div>
						<textarea placeholder="자세하고 솔직한 리뷰는 다른 고객에게 큰 도움이 됩니다. (최소 20자 이상)" class="form-control text-area-input review-modal__form__review-input" id="vcontent" name="vcontent" style="height: 56px;"></textarea>
						<div class="review-modal__form__review-input__length">
							<span class="review-modal__form__review-input__length__value" id="review-text-count">0</span>
						</div>
					</div>
					<div class="review-modal__section">
						<div class="review-modal__section__title-question">상품을 직접 사용하고 작성한 리뷰인가요?
							<div class="review-modal__section__title__error-message-question" style="display:none;" >필수 입력 항목입니다.</div></div>
						<div class="form-check checkbox-input">
							<label class="form-check-label-chk" for="form-check-label">
								<input class="form-check" type="checkbox" id="form-check-label">
								<span class="check-img" id="check-img"></span>
								<span class="review-modal__form__agree">네. 상품을 직접 사용 후 작성한 리뷰이며,&nbsp;<span class="review-modal__form__agree__policy-button">오늘의집 리뷰 정책</span>에 동의합니다.</span>
							</label>
						</div>
					</div>
					<div class="review-modal__form__policy-none"  id="review-modal__form__policy">스위트홈은 비교적 정보를 얻기 힘든 가구와 인테리어 제품의 정보 공유를 위해 직접 사용한 유저들의 생생하고 진실된 리뷰 문화를 만들어 가고자 합니다. 
따라서 스위트홈의 유저라면 오늘의집에서 직접 구매하지 않은 제품도 사용 경험을 공유하고 포인트를 적립받으실 수 있습니다. 
단, 다음과 같은 리뷰의 경우 블라인드 및 통보 없이 삭제 될 수 있으며, 공정위의 &lt;추천·보증 등에 관한 표시·광고 심사지침(이하 지침)&gt; 및 스위트홈 서비스 이용 약관 제 14조에 따라 처벌 받을 수 있습니다. 
1. 리뷰를 작성하는 조건으로 금전적 또는 물질적 대가를 제공받은 경우 
2. 리뷰의 대상 업체 또는 경쟁업체의 관계자이거나 해당 업체와 개인적/사업적으로 관련 있는 경우 
3. 해당 상품에 대한 허위의 내용을 작성한 경우 
4. 욕설, 비난 등 업체나 타인에게 불쾌한 내용을 작성한 경우 </div>
					<button class="button button--color-blue button--size-50 button--shape-4 review-modal__form__submit" type="button">완료</button>
				</form>
				<div class="review-modal__explain">
					<ul>
						<li>사진 첨부시&nbsp;<span class="review-modal__explain__warning">캡쳐, 도용, 유사상품 촬영, 동일상품 여부 식별이 불가한 경우</span>에는 등록이 거절되며 사유는 별도 안내되지 않습니다.</li>
						<li>상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는 사전 경고 없이 삭제 및 포인트 회수될 수 있습니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 문의하기 창 -->
<div class="react-modal-none react-modal--center product-question__modal open open-active" id="question-modal">
	<div class="react-modal__content-wrap">
		<div class="react-modal__content product-question">
			<form class="product-question__wrap" action="interior_question_insert.do" method="post" name="questionWriteForm">
				<input type="hidden" id="ino" name="ino" value="${vo.ino }">
				<div class="product-question__wrap__close">
					<svg class="product-question__wrap__close__icon" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path></svg>
				</div>
				<div class="product-question__wrap__title">상품 문의하기</div>
				<div class="product-question__wrap__sub-title">문의유형</div>
				<div class="product-question__wrap__type-select">
					<input type="hidden" id="qtype" name="qtype" value="상품">
						<div class="product-question__wrap__type-select__box--select question-1" >상품</div>
						<div class="product-question__wrap__type-select__box question-2" >배송</div>
						<div class="product-question__wrap__type-select__box question-3" >반품</div>
						<div class="product-question__wrap__type-select__box question-4" >교환</div>
						<div class="product-question__wrap__type-select__box question-5" >환불</div>
						<div class="product-question__wrap__type-select__box question-6" >기타</div>
				</div>
				<div class="product-question__wrap__sub-title" id="goods-name" name="goods_name">상품명</div>
				<div class="product-question__wrap__option-select">
					<div class="input-group select-input product-question__wrap__option-select__input">
						<select class="form-control-question empty" id="goods-list" name="gno">
							<option value="" >선택해주세요</option>
							<c:forEach var="vo" items="${interior_top }">
								<option value="${vo.gno }">${vo.goods_name }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="product-question__wrap__sub-title" id="question-content">문의내용</div>
				<textarea placeholder="문의 내용을 입력하세요" maxlength="1000" id="qcontent" name="qcontent"
					class="form-control text-area-input product-question__wrap__question" style="height: 39px;"></textarea>
				<div class="product-question__wrap__explain">문의내용에 대한 답변은 ‘마이페이지 &gt; 나의 쇼핑 &gt; 나의 문의내역’ 또는 ‘상품 상세페이지’에서 확인 가능합니다.</div>
				<div class="product-question__wrap__buttons">
					<button class="button button--color-blue button--size-50 button--shape-4 product-question__wrap__buttons__submit" type="button">완료</button>
				</div>
			</form>
 		</div>
	</div>
</div>

<!-- 스크랩 팝업 -->
<div class="toast-message-root">
	<div class="toast-message toast-message-transition-enter-done" style="display:none" id="scrap-add">
		<button class="toast-message__footer" type="button" id="taost-none2">
			<div class="toast-message__footer__close">
				<svg class="toast-message__footer__close__icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#bdbdbd" d="M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z"></path></svg></div></button>
		<div class="toast-message__body">스크랩했습니다</div>
		<a class="button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button" 
			href="/users/11910649/collections">스크랩북 보기</a>
		<button class="button button--color-blue button--size-40 button--shape-4 toast-message__button 
		toast-message__button--last">폴더에 담기</button>
	</div>
	<div class="toast-message toast-message-transition-enter-done" style="display:none" id="scrap-del">
		<button class="toast-message__footer" type="button">
			<div class="toast-message__footer__close">
				<svg class="toast-message__footer__close__icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#bdbdbd" d="M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z"></path></svg></div></button>
			<div class="toast-message__body">스크랩북에서 삭제했습니다.</div>
	</div>
</div>
<!-- footer -->
	<jsp:include page="../footer.jsp"/>

</body>
<script>
$(document).ready(function(){
	
	
}); // document


</script>
</html>
