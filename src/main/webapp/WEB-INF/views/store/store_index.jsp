<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.myhouse.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/swiper-bundle.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script>
<style>
	* {
	    box-sizing: border-box;
	}
	div, ul, li {
		margin:0;
		padding:0;
	 }
	a, button {
		cursor: pointer;
	    touch-action: manipulation;
	    color: inherit;
    	text-decoration: none;
	}
	a {
	    color: inherit;
	    text-decoration: none;
	}
	button {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    text-align: center;
	    align-items: flex-start;
	    font: 400 13.3333px Arial;
	}
	button {
		font-size:inherit;
	}
	ol, ul {
		list-style:none;
	}
	ol, ul {
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
	img {
		border:0;
	}
	h1 {
		font-weight: inherit;
	}
	.all {
		position: relative;
	    margin-right: auto;
	    margin-left: auto;
	    width: calc(100% - 120px);
	    height:auto;
	    overflow:hidden;
	}
	.category-feed-container {
		position: relative;
	    margin-right: auto;
	    margin-left: auto;
		width:1240px;
		height:auto;
	    overflow:hidden;
	}
	/* @media (min-width: 768px) */
	.category-feed-wrap {
	    margin-top: 40px;
	}
	/* @media (min-width:1024px) */
	.container {
		position:relative;
		margin-right: auto;
	    margin-left: auto;
	    width: calc(100% - 120px);
	    max-width: 100%;
	    box-sizing: border-box;
	    min-height: 1px;
	}
	/* @media (min-width:1024px) */
	.row {
		display:flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left:-10px;
		width:100%;
	}
	/* @media (min-width: 768px)  */
	.category-feed_side-bar {
		display:block;
		
	}
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.col-md-3 {
		padding-right: 10px;
		padding-left: 10px;
	}
	/* @media (min-width: 768px)  */
	.col-md-3 {
		position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 25%;
	    max-width: 25%;
	}
	.commerce-category-list {
	    max-width: 200px;
	}
	.commerce-category-list__others {
	    margin: 15px 0 30px;
	   /*  border-top: 1px solid #dbdbdb; */
	}
	.commerce-category-list__others__item {
	    margin-bottom: 20px;
	    font-size: 20px;
	    font-weight: 700;
	    color: #000;
	    margin-top:20px;
	}
	.commerce-category-list__others__item:hover {
	    color: lightgray;
	}
	.commerce-category-list__others__item a {
		transition: opacity .1s;
	}
	.commerce-category-list__others__item.selected {
		color:#35c5f0;
		font-size:22px;
		margin-bottom:20px;
		margin-top:20px;
	}
	.commerce-category-list__others__item.selected a {
		border-bottom: 2px solid #35c5f0;
	}
	.category-feed__content {
	    position: relative;
	    float:right;
	}
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.col-md-9 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	/* @media (min-width: 768px) */
	.col-md-9 {
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 75%;
	    max-width: 75%;
	}
	/* @media (min-width: 768px) */
	.commerce-category-header:first-child {
	    margin-top: 0;
	}
	/* @media (min-width: 768px) */
	.commerce-category-header {
	    padding: 0;
	    border-bottom: 0;
	    margin: 40px 0 0;
	}
	/* @media (min-width: 768px) */
	.category-feed__content__header .commerce-category-header__breadcrumb-wrap {
	    margin-bottom: 20px;
	}
	
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.swiper-container {
      width: 100%;
      height: 250px;
    }

	/* @media (min-width: 768px) */
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
    .swiper-container.swiper_none {
    	display:none;
    }
    .commerce-category-breadcrumb__entry {
    	margin-right: 5px;
    	font-size: 16px;
    	color:#000;	
        display: inline-block;
        line-height: 1.2;
        font-weight: 500;
        margin-bottom:15px;
    }
    .commerce-category-breadcrumb__entry .link {
    	transition: opacity .1s;
    	padding-left:10px;
    	
    	border-left : 3px solid #35c5f0;
    }
    .commerce-category-breadcrumb.disable{
    	display:none;
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
	.category-feed__content__filter {
		margin-top:20px;
	}
	.category-feed-filter-bar {
	    position: relative;
	}
	.category-filter-bar-control-list {
	    margin: 0 -4px;
	    display: flex;
   	 	-webkit-box-align: center;
	    align-items: center;
    	-webkit-box-pack: justify;
	    justify-content: space-between;
	    min-width: 0;
	}
	.category-filter-bar-control-list__left {
	    padding: 0;
	    overflow: hidden;
	    -webkit-box-flex: 0;
	    flex: 0 1 auto;
	    min-width: 0;
	    margin: 0;
	    list-style: none;
	}
	.category-filter-bar-control-list__item {
	    padding: 4px 0;
	    display: inline-block;
	    margin: 0 4px;
	    vertical-align: bottom;
	    font-size: 0;
	    line-height: 0;
	}
	.category-filter-bar-control-list__item-none {
	    padding: 4px 0;
	    display:none;
	    margin: 0 4px;
	    vertical-align: bottom;
	    font-size: 0;
	    line-height: 0;
	}
	.drop-down {
	    position: relative;
	    display: inline-block;
	}
	.category-filter-bar-button {
	    font-family: Noto Sans KR,Apple SD Gothic Neo,ë§‘ì€ ê³ ë”•,Malgun Gothic,sans-serif;
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
	    display:inline-block;
	    margin-right:80px;
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
	    font-size: 15px;
	    color: #9e9e9e;
	    line-height: 16px;
	    font-weight: 700;
	    display:inline-block;
	    
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
	/* 가격 section */
	.drop-down-panel .property-filter-panel-range-control {
	    width: 460px;
	    max-height: 370px;
	    padding: 16px 22px;
	    box-sizing: border-box;
	}
	/* 가격 */
	.drop-down-panel .property-filter-panel-range-control__list.property-filter-panel-entry-list {
	    max-height: 290px;
	    overflow: auto;
	    padding: 18px 22px 3px;
	    margin: 0 -22px;
	}
	/* 가격 */
	.drop-down-panel .property-filter-panel-range-control .property-filter-panel-entry-list {
	    display: flex;
	    flex-wrap: wrap;
	    box-sizing: border-box;
	    position: relative;
	    min-height: 34px;
	    max-width: 460px;
	    width: auto;
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
	.toast-message-transition-enter-done {
	    display: none;
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
	/* 카테고리 선택 단어 나열 */
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
	.category-filter-bar-tag-list__list-none {
	    display:none;
	}
	.category-filter-bar-tag-list__item {
	    display: inline-block;
	    margin: 0 2px;
	    padding: 4px 0;
	}
	.category-filter-bar-tag-list__item-price {
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
	.category-filter-bar-tag-price {
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
	.category-filter-bar-tag-price>.icon {
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
<script>
$(document).ready(function(){
	/* 전체 index */
	 cateList("", "", "","","");
	// 스크랩 유무
	scrap_exist();
	
	var status = '인기순';
	
	$(document).on("click","input[name='btn-filter']",function(event){
		 status = $(this).val();
	});
	
	
	/* 사이드 카테고리 선택 */
 	if("${category}" == "0" )  {
		select_list();
		$("#우드톤").addClass("category-filter-bar-control-list__item");
		$("#우드톤").removeClass("category-filter-bar-control-list__item-none");
		$("#사용계절").addClass("category-filter-bar-control-list__item-none");
		$("#사용계절").removeClass("category-filter-bar-control-list__item");
		$("#list-1").removeClass('disable');
		$("#list1").addClass('selected');
		$("#swiper1").removeClass('swiper_none');
	} else if("${category}" == "1" ) {
		select_list();
		select_cate_tag();
		$("#list-2").removeClass('disable');
		$("#list2").addClass('selected');
		$("#swiper2").removeClass('swiper_none');
	} else if("${category}"  == "2") {
		select_list();
		select_cate_tag();
		$("#list-3").removeClass('disable');
		$("#list3").addClass('selected');
		$("#swiper3").removeClass('swiper_none');
	} else if("${category}"  == "3") {
		select_list();
		select_cate_tag();
		$("#list-4").removeClass('disable');
		$("#list4").addClass('selected');
		$("#swiper4").removeClass('swiper_none');
	} else if('${category}'  == "4") {
		select_list();
		select_cate_tag();
		$("#list-5").removeClass('disable');
		$("#list5").addClass('selected');
		$("#swiper5").removeClass('swiper_none');
	} else if('${category}'  == "5") {
		select_list();
		select_cate_tag();
		$("#list-6").removeClass('disable');
		$("#list6").addClass('selected');
		$("#swiper6").removeClass('swiper_none');
	} else if('${category}'  == "6") {
		select_list();
		select_cate_tag();
		$("#list-7").removeClass('disable');
		$("#list7").addClass('selected');
		$("#swiper7").removeClass('swiper_none');
	} else if('${category}' == "7") {
		select_list();
		select_cate_tag();
		$("#list-8").removeClass('disable');
		$("#list8").addClass('selected');
		$("#swiper8").removeClass('swiper_none');
	} else if('${category}'  == "8") {
		select_list();
		select_cate_tag();
		$("#list-9").removeClass('disable');
		$("#list9").addClass('selected');
		$("#swiper9").removeClass('swiper_none');
	} else if('${category}'  == "9") {
		select_list();
		select_cate_tag();
		$("#list-10").removeClass('disable');
		$("#list10").addClass('selected');
		$("#swiper10").removeClass('swiper_none');
	} else if('${category}'  == "10") {
		select_list();
		select_cate_tag();
		$("#list-11").removeClass('disable');
		$("#list11").addClass('selected');
		$("#swiper11").removeClass('swiper_none');
	} else if('${category}'  == "11") { 
		select_list();
		$("#우드톤").removeClass("category-filter-bar-control-list__item");
		$("#우드톤").addClass("category-filter-bar-control-list__item-none");
		$("#사용계절").removeClass("category-filter-bar-control-list__item-none");
		$("#사용계절").addClass("category-filter-bar-control-list__item");
		$("#list-12").removeClass('disable');
		$("#list12").addClass('selected');
		$("#swiper12").removeClass('swiper_none');
	} else {
		select_list();
		$("#우드톤").addClass("category-filter-bar-control-list__item");
		$("#우드톤").removeClass("category-filter-bar-control-list__item-none");
		$("#사용계절").addClass("category-filter-bar-control-list__item-none");
		$("#사용계절").removeClass("category-filter-bar-control-list__item");
		$("#list-1").removeClass('disable');
		$("#list1").addClass('selected');
		$("#swiper1").removeClass('swiper_none');
	} 
	
	function select_cate_tag() {
		$("#우드톤").removeClass("category-filter-bar-control-list__item");
		$("#우드톤").addClass("category-filter-bar-control-list__item-none");
		$("#사용계절").addClass("category-filter-bar-control-list__item-none");
		$("#사용계절").removeClass("category-filter-bar-control-list__item");
	}
	function select_list() {
		$("#list1").removeClass('selected');
		$("#list2").removeClass('selected');
		$("#list3").removeClass('selected');
		$("#list4").removeClass('selected');
		$("#list5").removeClass('selected');
		$("#list6").removeClass('selected');
		$("#list7").removeClass('selected');
		$("#list8").removeClass('selected');
		$("#list9").removeClass('selected');
		$("#list10").removeClass('selected');
		$("#list11").removeClass('selected');
		$("#list12").removeClass('selected');
		$("#list-1").addClass('disable');
		$("#list-2").addClass('disable');
		$("#list-3").addClass('disable');
		$("#list-4").addClass('disable');
		$("#list-5").addClass('disable');
		$("#list-6").addClass('disable');
		$("#list-7").addClass('disable');
		$("#list-8").addClass('disable');
		$("#list-9").addClass('disable');
		$("#list-10").addClass('disable');
		$("#list-11").addClass('disable');
		$("#list-12").addClass('disable');
		$("#swiper1").addClass('swiper_none');
		$("#swiper2").addClass('swiper_none');
		$("#swiper3").addClass('swiper_none');
		$("#swiper4").addClass('swiper_none');
		$("#swiper5").addClass('swiper_none');
		$("#swiper6").addClass('swiper_none');
		$("#swiper7").addClass('swiper_none');
		$("#swiper8").addClass('swiper_none');
		$("#swiper9").addClass('swiper_none');
		$("#swiper10").addClass('swiper_none');
		$("#swiper11").addClass('swiper_none');
		$("#swiper12").addClass('swiper_none');
	}
	
	//swiper
	 var swiper = new Swiper('.swiper-container', {
	      spaceBetween: 30,
	      centeredSlides: true,
	      autoplay: {
	        delay: 2500,
	        disableOnInteraction: false,
	      },
	      pagination: {
	        el: '.swiper-pagination',
	        clickable: true,
	      },
	      navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	    });
	
	/* 상세 카테고리 상단 - 섹깔/모양 변경 */
	/* 우드톤 */
	$("#btn1-1").click(function(){
		var btn_id = $("#btn1-1").attr('id');
		btn_filter(btn_id);
	});
	/* 사용계절 */
	$("#btn1-3").click(function(){
			var btn_id = $("#btn1-3").attr('id');
			btn_filter(btn_id);
		});
	/* 색상 */
	$("#btn1-2").click(function(){
		var btn_id = $("#btn1-2").attr('id');
		btn_filter(btn_id);
	});
	/* 가격 */
	$("#btn1-6").click(function(){
		var btn_id = $("#btn1-6").attr('id');
		btn_filter(btn_id);
	});
	
	function btn_filter(btn_id) {
		if( $("#"+btn_id).hasClass("category-filter-bar-button")) {
			btn_filter_none()
			$("#"+btn_id).addClass("category-filter-bar-button--modal-open");
			$("#"+btn_id).removeClass("category-filter-bar-button");
			$("#"+btn_id+"-category").css("display","block");
		} else {
			$("#"+btn_id).addClass("category-filter-bar-button");
			$("#"+btn_id).removeClass("category-filter-bar-button--modal-open");
			$("#"+btn_id+"-category").css("display","none");
		} 
	}
	
	function btn_filter_none() {
		$("#btn1-1-category").css("display","none");
		$("#btn1-2-category").css("display","none");
		$("#btn1-3-category").css("display","none");
		$("#btn1-6-category").css("display","none");
		$("#btn1-1").addClass("category-filter-bar-button");
		$("#btn1-1").removeClass("category-filter-bar-button--modal-open");
		$("#btn1-2").addClass("category-filter-bar-button");
		$("#btn1-2").removeClass("category-filter-bar-button--modal-open");
		$("#btn1-3").addClass("category-filter-bar-button");
		$("#btn1-3").removeClass("category-filter-bar-button--modal-open");
		$("#btn1-6").addClass("category-filter-bar-button");
		$("#btn1-6").removeClass("category-filter-bar-button--modal-open");
	}
	
	
	var tone = new Array();
	var color = new Array();
	var season = new Array();
	
	/* 상세카테고리 클릭시 -> 해당 단어 나열 */
	//$('input:checkbox[id="checkbox_id"]').val();
	$(".cate-chk").change(function(){
		var chk_val1 = $(this).val().replace(/ /g, ''); 
		var chk_val = chk_val1.replace("/", ","); 
		
		var cate_word = '<li class="category-filter-bar-tag-list__item" id="'+chk_val+'"><button class="category-filter-bar-tag" type="button">'
			cate_word += chk_val
			cate_word += '<svg class="icon" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" opacity=".5"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg></button></li>';
		
		$("input[type=checkbox]:checked"). each(function(i){	
			if($(this).val() == '밝은톤' || $(this).val() == '중간톤' || $(this).val() == '어두운톤') {
				tone[i] = $(this).val();
			} 
			if($(this).val() == '화이트' || $(this).val() == '블랙' || $(this).val() == '브라운' || $(this).val() == '골드' ||$(this).val() == '오렌지' ||$(this).val() == '그린' ||$(this).val() == '네이비' ||$(this).val() == '핑크' ||$(this).val() == '투명' || $(this).val() == '그레이' ||
				$(this).val() == '베이지' ||$(this).val() == '실버' ||$(this).val() == '레드' ||$(this).val() == '옐로우' ||$(this).val() == '블루' ||$(this).val() == '바이올렛' ||$(this).val() == '멀티(혼합)') {
				color[i] = $(this).val();
			}
			if($(this).val() == '봄가을' || $(this).val() == '겨울' || $(this).val() == '여름' || $(this).val() == '사계절'){
				season[i] = $(this).val();
			}
		});
		
		if($(this).is(":checked")){
				$(".category-filter-bar-tag-list__list").append(cate_word);
				$("#chk-tag-ul").removeClass("category-filter-bar-tag-list-none");
				$("#chk-tag-ul").addClass("category-filter-bar-tag-list");
				
				 cateList(tone, color, season, "", status);
				
			}else{

				 
				 var itemtoRemove = chk_val;
				 
						if($(this).val() == '밝은톤' || $(this).val() == '중간톤' || $(this).val() == '어두운톤') {
							 tone.splice($.inArray(itemtoRemove, tone),1);
							
						} 
						if($(this).val() == '화이트' || $(this).val() == '블랙' || $(this).val() == '브라운' || $(this).val() == '골드' ||$(this).val() == '오렌지' ||$(this).val() == '그린' ||$(this).val() == '네이비' ||$(this).val() == '핑크' ||$(this).val() == '투명' || $(this).val() == '그레이' ||
							$(this).val() == '베이지' ||$(this).val() == '실버' ||$(this).val() == '레드' ||$(this).val() == '옐로우' ||$(this).val() == '블루' ||$(this).val() == '바이올렛' ||$(this).val() == '멀티(혼합)') {
							color.splice($.inArray(itemtoRemove, color),1);
						}
						if($(this).val() == '봄가을' || $(this).val() == '겨울' || $(this).val() == '여름' || $(this).val() == '사계절'){
							season.splice($.inArray(itemtoRemove, season),1);
					}
						// alert(itemtoRemove);
				
					if($('li.category-filter-bar-tag-list__item').length == 1){   
						 $("li#"+chk_val).remove();
						 $("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
						 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
						
						 cateList(tone, color, season, "", status);
					} else {
						 $("li#"+chk_val).remove();
						 cateList(tone, color, season, "", status);
					}
					 cateList(tone, color, season, "", status);
		}
		
			
	});
	
	/* 태그 닫기 창*/
	$(document).on("click","button.category-filter-bar-tag",function(){
		var tag_id=$(this).text();
		 $("li#"+tag_id).remove();
		 $("input:checkbox[value='"+tag_id+"']").prop("checked", false);
		 
		 var itemtoRemove = $(this).text();
		 //alert(itemtoRemove);
			if($(this).text() == '밝은톤' || $(this).text() == '중간톤' || $(this).text() == '어두운톤') {
				 tone.splice($.inArray(itemtoRemove, tone),1);
				
			} 
			if($(this).text() == '화이트' || $(this).text() == '블랙' || $(this).text() == '브라운' || $(this).text() == '골드' ||$(this).text() == '오렌지' ||$(this).text() == '그린' ||$(this).text() == '네이비' ||$(this).text() == '핑크' ||$(this).text() == '투명' || $(this).text() == '그레이' ||
				$(this).text() == '베이지' ||$(this).text() == '실버' ||$(this).text() == '레드' ||$(this).text() == '옐로우' ||$(this).text() == '블루' ||$(this).text() == '바이올렛' ||$(this).text() == '멀티(혼합)') {
				color.splice($.inArray(itemtoRemove, color),1);
			}
			if($(this).text() == '봄가을' || $(this).text() == '겨울' || $(this).text() == '여름' || $(this).text() == '사계절'){
				season.splice($.inArray(itemtoRemove, season),1);
		}
		 
			if($('li.category-filter-bar-tag-list__item').length == 0){   
				 $("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
				 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
				 cateList(tone, color, season, "", status);
			}
	});
	
	var ino = new Array();
	
	
	function cateList(tone, color, season, rpage, status){
		
		 $.ajax({
				url:"category_list.do?category=${category}&tone="+tone+"&color="+color+"&season="+season+"&rpage="+rpage+"&status="+status,
				success:function(result) {
					
					var jdata = JSON.parse(result);
					var output = '';
					$(".category-feed__content__content").empty();
					for (var i in jdata.category_list ) {
						output += '<input class="ino_input" type="hidden" value="'+jdata.category_list[i].ino+'">';
						output += '<div class="category-feed__content__item-wrap col-6 col-lg-4">';
						output += '<article class="production-item" id="pro-'+jdata.category_list[i].rno+'">';
						output += '<a class="production-item__overlay" href="http://localhost:9000/myhouse/store_page.do?ino='+ jdata.category_list[i].ino +'"></a>';
						output += '<div class="production-item-image production-item__image">';
						output += '<img class="image" src="http://localhost:9000/myhouse/resources/upload/'+ jdata.category_list[i].goods_simage +'">';
						output += '<button class="production-item-scrap-badge" type="button" id="pro-scrap-'+jdata.category_list[i].ino+'">';
						output += '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>';
						output += '<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>';
						output += '</button>';
						output += '<div class="production-item-image__dark-overlay"></div>';
						output += '</div>';
						output += '<div class="production-item__content">';
						output += '<h1 class="production-item__header">';
						output += '<span class="production-item__header__brand">'+jdata.category_list[i].company+'</span>';
						output += '<span class="production-item__header__name">'+jdata.category_list[i].ititle+'</span>';
						output += '</h1>';
						output += '<span class="production-item-price">';
						output += '<span class="production-item-price__price">'+jdata.category_list[i].goods_price+'원 외</span>';
						output += '</span>';
						output += '<p class="production-item-stats production-item-stats--review">';
						output += '<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>';
						output += '<strong class="avg">'+jdata.category_list[i].star_avg+'</strong>';
						output += '리뷰 '+jdata.category_list[i].star_count+'';
						output += '</p>';
						output += '</div>';
						output += '</article>';
						output += '</div>';
						
						
						
					}
						
					$(".category-feed__content__content").empty();
					$("#ampaginationsm").remove();
					$(".category-feed-filter-secondary").empty();
					
					var pagee = '<div id="ampaginationsm" style="text-align:center;"></div>';
					
					
					var output3 = '<p class="category-feed-filter-secondary__summary">전체'+jdata.dbcount+'개</p>';
					output3 += '<div class="category-feed-filter-secondary__right">';
					output3 += '<div class="category-feed-filter-secondary__right__item">';
					output3 += '<div class="drop-down panel-drop-down">';
					output3 += '<button class="category-filter-bar-order-button" type="button" value="인기순"  name="btn-filter" id="btn-list-2">인기순';
					output3 += '<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button></div>';
					output3 += '</div>';
					output3 += '<div class="btn-none" id="btn-orderby">';
					output3 += '<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 100000; right:10px; margin-top:20px;">';
					output3 += '<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">';
					output3 += '<div class="drop-down-panel" data-panel-title="정렬" data-panel-parents="">';
					output3 += '<ul class="property-filter-panel-entry-list">';
					
					output3 += '<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item selected " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">';
					output3 += '<input type="radio" class="fs-4H list-chk" value="인기순" checked="" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">인기순</span></div></div></button></li>';
					output3 += '<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">';
					output3 += '<input type="radio" class="fs-4H list-chk" value="낮은가격순"  name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">낮은가격순</span></div></div></button></li>';
					output3 += '<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">';
					output3 += '<input type="radio" class="fs-4H list-chk" value="높은가격순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">높은가격순</span></div></div></button></li>';
					output3 += '<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">';
					output3 += '<input type="radio" class="fs-4H list-chk" value="많은리뷰순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">많은리뷰순</span></div></div></button></li>';
					output3 += '<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">';
					output3 += '<input type="radio" class="fs-4H list-chk" value="최신순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">최신순</span></div></div></button></li></ul></div></div></div>';
					output3 += '</div>';
					output3 += '</div>';
						
				
					$(".category-feed-filter-secondary").append(output3);
					
					$(".category-feed__content__content").after(pagee);
					$(".category-feed__content__content").append(output);
					
					
					
					// 스크랩 처리
					for (var i in jdata.category_list ) {
						var	output2 = '<input class="ino_input" type="hidden" value="'+jdata.category_list[i].ino+'">';
						ino = jdata.category_list[i].ino;
						//alert(ino);
						scrap_exist(ino);
					}
					
					
					
					 page(jdata.dbcount, jdata.reqpage, jdata.pagesize)
					
					 
					 
				}
			}); 
	} //catelist
	
	
	
	/* 스크랩 유무에 따른 표시 여부 */
	 function scrap_exist(ino) {
		$.ajax({
			url:"scrap_exist_proc.do?email=${email}&ino="+ino,
			success:function(result) {
				var jdata = JSON.parse(result);
				//alert("ino::"+ino+"jdata::"+jdata.scrap_exist);
				if(result == "") {
					location.href="http://localhost:9000/myhouse/login.do";
				} else {
					if(jdata.scrap_exist!=0) {
						$("#pro-scrap-"+ino).removeClass("production-item-scrap-badge");
						$("#pro-scrap-"+ino).addClass("production-item-scrap-badge--active");
						
					} else {
						$("#pro-scrap-"+ino).removeClass("production-item-scrap-badge--active");
						$("#pro-scrap-"+ino).addClass("production-item-scrap-badge");
					} 
				}
				
			}
		});
	} 
	

	
	  
    /** 페이징 처리 함수 **/
    function page(dbcount, reqpage, pagesize){
       //페이지 번호 및  링크
          var pager = jQuery("#ampaginationsm").pagination({
             maxSize : 20,
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
          jQuery("#ampaginationsm").on('am.pagination.change',function(e){
             cateList(tone, color, season, e.page, status);
          });
    }//page
	
	
	
	/* (가격)상세카테고리 클릭시 -> 해당 단어 나열 */
	$(".price-list").change(function(){
		var chk_val = $(this).val().replace(/ /g, ''); 
		var cate_word = '<li class="category-filter-bar-tag-list__item-price" id="'+chk_val+'"><button class="category-filter-bar-tag-price" type="button">'
			cate_word += chk_val
			cate_word += '<svg class="icon" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" opacity=".5"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg></button></li>';
		//alert(cate_word);
		if($(this).is(":checked")){
			

			
			if($("li.category-filter-bar-tag-list__item-price").length == 1) {
				$("li.category-filter-bar-tag-list__item-price").remove();
			} 
			$(".category-filter-bar-tag-list__list").append(cate_word);
			$("#chk-tag-ul").removeClass("category-filter-bar-tag-list-none");
			$("#chk-tag-ul").addClass("category-filter-bar-tag-list");
			
		}else{
				
				if($('li.category-filter-bar-tag-list__item-price').length == 1){   
					 $("li#"+chk_val).remove();
					 $("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
					 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
					 cateList(tone, color, season, "", status);
				} else {
					 $("li#"+chk_val).remove();
					 cateList(tone, color, season, "", status);
				}
	}
	});
	
	
	/*(가격)태그 닫기창*/
	$(document).on("click","button.category-filter-bar-tag-price",function(){
		//alert("aaaaaaaaaa")
		var tag_id=$(this).text();
		$("li.category-filter-bar-tag-list__item-price").remove();
		 $("input:radio[value='"+tag_id+"']").prop("checked", false);
		 $("input:radio[value='전체']").prop("checked", true);
		 
			if($('li.category-filter-bar-tag-list__item-price').length == 0){   
				 $("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
				 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
			}
	});
	
	/* 초기화 클릭시 -> 상세카테고리 단어 리스트 지우기 */
	$(".text").click(function(){
		$("input:checkbox[name='cate-chk']").prop("checked", false);
		 $(".category-filter-bar-tag-list__list li").remove();
		$("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
		 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
	});
	
	/*(가격) 초기화 클릭시 -> 상세카테고리 단어 리스트 지우기 */
	$(".text").click(function(){
		$("input:radio[name='price-list']").prop("checked", false);
		$("input:radio[value='전체']").prop("checked", true);
		 $(".category-filter-bar-tag-list__list li").remove();
		$("#chk-tag-ul").addClass("category-filter-bar-tag-list-none");
		 $("#chk-tag-ul").removeClass("category-filter-bar-tag-list");
	});
	
	
	/* 인기순 , 최신순 등 선택창 */
	$(document).on("click",".category-feed-filter-secondary__right__item",function(){
		if($("#btn-orderby").hasClass("btn-none")) {
			$("#btn-orderby").removeClass("btn-none");
			$("#btn-orderby").addClass("btn-orderby");
		} else {
			$("#btn-orderby").addClass("btn-none");
			$("#btn-orderby").removeClass("btn-orderby");
		} 
	});
	
	/* 인기순, 최신순 등 선택하면 나타나는 화면 */
	$(document).on("click",".list-chk",function(){
		var chk = $('.list-chk').children().children().children().html();
		//alert(chk);
		var cate_name = $('input[name="btn-filter"]:checked').val();
		//alert(cate_name);
		var val = $('input[name="btn-filter"]:checked').val();
		var btn_sale = '<button class="category-filter-bar-order-button" type="button" value="판매순"  id="btn-list-1">판매순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_favorite= '<button class="category-filter-bar-order-button" type="button" value="인기순"  id="btn-list-1">인기순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_low = '<button class="category-filter-bar-order-button" type="button" value="낮은가격순"  id="btn-list-1">낮은가격순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_high = '<button class="category-filter-bar-order-button" type="button" value="높은가격순" id="btn-list-1">높은가격순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_review = '<button class="category-filter-bar-order-button" type="button" value="많은리뷰순" id="btn-list-1">많은리뷰순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_pic = '<button class="category-filter-bar-order-button" type="button" value="유저사진 많은순" id="btn-list-1">유저사진 많은순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		var btn_recently = '<button class="category-filter-bar-order-button" type="button" value="최신순"  id="btn-list-1">최신순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button>';
		
		if(cate_name == "판매순") {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_sale);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if (cate_name == "인기순") {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_favorite);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if(cate_name == ("낮은가격순")) {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_low);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if(cate_name == ("높은가격순")) {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_high);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if(cate_name == ("많은리뷰순")) {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_review);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if(cate_name == ("유저사진 많은순")) {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_pic);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else if(cate_name == ("최신순")) {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_recently);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} else {
			$(".category-feed-filter-secondary__right__item").children().remove();
			$(".category-feed-filter-secondary__right__item").append(btn_favorite);
			$("#btn-orderby").removeClass("btn-orderby");
			$("#btn-orderby").addClass("btn-none");
		} 
		
	});  

	
	/* 상품 스크랩 */
	$(document).on("click",".production-item-scrap-badge",function(){
		var id = $(this).attr("id");
			id = id.split("-");
			//alert(id);
				$.ajax({
					url:"store_scrap_proc.do?email=${email}&ino="+id[2],
					success: function(result) {
						
						if(result == "") {
							location.href="http://localhost:9000/myhouse/login.do";
						}else {
							if($("#pro-scrap-"+id[2]).hasClass("production-item-scrap-badge")) {
								$("#pro-scrap-"+id[2]).addClass("production-item-scrap-badge--active");
								$("#pro-scrap-"+id[2]).removeClass("production-item-scrap-badge");
								$("#scrap-add-"+id[2]).removeClass("toast-message-transition-enter-done");
								$("#scrap-add-"+id[2]).addClass("toast-message");
								$("#scrap-del-"+id[2]).addClass("toast-message-transition-enter-done");
								$("#scrap-del-"+id[2]).removeClass("toast-message");
								$("#scrap-add-"+id[2]).fadeOut(3800);
							} 
						}
						
						
					
					} 
				});	
			
	});
	$(document).on("click",".production-item-scrap-badge--active",function(){
		var id = $(this).attr("id");
			id = id.split("-");
				$.ajax({
					url:"store_scrap_del_proc.do?email=${email}&ino="+id[2],
					success: function(result) {
						
						if(result == "") {
							location.href="http://localhost:9000/myhouse/login.do";
						}else {
							if($("#pro-scrap-"+id[2]).hasClass("production-item-scrap-badge--active")) {
								$("#pro-scrap-"+id[2]).addClass("production-item-scrap-badge");
								$("#pro-scrap-"+id[2]).removeClass("production-item-scrap-badge--active");
								$("#scrap-add-"+id[2]).addClass("toast-message-transition-enter-done");
								$("#scrap-add-"+id[2]).removeClass("toast-message");
								$("#scrap-del-"+id[2]).removeClass("toast-message-transition-enter-done");
								$("#scrap-del-"+id[2]).addClass("toast-message");
								$("#scrap-del-"+id[2]).fadeOut(3800);
							} 
						}
						
						
					}
				});
			
	});
	
	
	
	/* 싱품 스크랩 닫기버튼 */
	$(".toast-message__footer__close").click(function(){
			$(".toast-message").css("display","none");
	});
	
});


</script>
</head>
<body>
	
<div class="all">
<!-- header -->
	<jsp:include page="../header1.jsp" />
<div class="category-feed-container">
	<div class="category-feed-wrap container">
		<div class="category-feed row">
			<div class="category-feed_side-bar col-12 col-md-3">
				<section class="commerce-category-list">
					<ul class="commerce-category-list__others">
						<li class="commerce-category-list__others__item " id="list1"><a href="?category=0">가구</a></li>
						<li class="commerce-category-list__others__item" id="list12"><a href="?category=11">패브릭</a></li>
						<li class="commerce-category-list__others__item" id="list2"><a href="?category=1">홈데코/조명</a></li>
						<li class="commerce-category-list__others__item" id="list3"><a href="?category=2">가전</a></li>
						<li class="commerce-category-list__others__item" id="list4"><a href="?category=3">수납/정리</a></li>
						<li class="commerce-category-list__others__item" id="list5"><a href="?category=4">생활</a></li>
						<li class="commerce-category-list__others__item" id="list6"><a href="?category=5">주방</a></li>
						<li class="commerce-category-list__others__item" id="list7"><a href="?category=6">DIY/공구</a></li>
						<li class="commerce-category-list__others__item" id="list9"><a href="?category=8">반려동물</a></li>
					</ul>
				</section>
			</div> <!-- category-feed_side-bar  -->
			<div class="category-feed__content col-12 col-md-9">
				<div class="commerce-category-header category-feed__content__header">
					<ol class="commerce-category-breadcrumb disable" id="list-1">
						<li class="commerce-category-breadcrumb__entry"><a class="link" href="?category=0" id="link1" >가구</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-2">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=1" id="link2" >홈데코/조명</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-3">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=2" >가전</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-4">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=3" >수납/정리</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-5">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=4" >생활</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-6">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=5" >주방</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-7">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=6" >DIY/공구</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-9">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=8" >반려동물</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-12">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=11" >패브릭</a></li>
					</ol>
							<div class="swiper-container swiper_none" id="swiper1">
							    <div class="swiper-wrapper">
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list1_swiper1.webp'); 
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list1_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination "></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper2">
							    <div class="swiper-wrapper " >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper3">
							    <div class="swiper-wrapper " >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper4.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper5.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper4">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper5">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper6">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper7">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list8_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper8">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list9_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list9_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper9">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list10_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list10_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper10">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper11">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper12">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list2_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list2_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
				</div> <!-- commerce-category-header category-feed__content__header -->
				<div class="category-feed__content__filter">
					<div class="filter">
						<div class="filter-bar category-feed-filter-bar">
							<div class="category-filter-bar-control-list">
								<ul class="category-filter-bar-control-list__left">
									<li class="category-filter-bar-control-list__item" id="우드톤">
										<div class="drop-down panel-drop-down" >
											<button class="category-filter-bar-button" type="button" id="btn1-1">
												우드톤<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
										<div style="display:none;" id="btn1-1-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 100000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="우드톤" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="밝은톤" name="cate-chk" >
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="밝은 톤">밝은 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="중간톤" name="cate-chk" >
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="중간 톤">중간 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="어두운톤" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="어두운 톤">어두운 톤</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 우드 톤 선택창 -->
									</li>
									<li class="category-filter-bar-control-list__item-none" id="사용계절">
										<div class="drop-down panel-drop-down" >
											<button class="category-filter-bar-button" type="button" id="btn1-3">
												사용계절<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
										<div style="display:none;" id="btn1-3-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 100000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="우드톤" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="봄가을" name="cate-chk" >
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="봄가을">봄가을</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="여름" name="cate-chk" >
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="여름">여름</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="겨울" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="겨울">겨울</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="사계절" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title" id="사계절">사계절</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 우드 톤 선택창 -->
									</li>
									<li class="category-filter-bar-control-list__item"  id="색상">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-2">
											색상<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
										<div style="display:none;" id="btn1-2-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 100000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="색상" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="화이트" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">화이트</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그레이" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그레이</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블랙" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블랙</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="베이지" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">베이지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="브라운" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">브라운</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="실버" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">실버</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="골드" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">골드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="레드" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">레드</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="오렌지" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">오렌지</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="옐로우" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">옐로우</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="그린" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">그린</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="블루" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">블루</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="네이비" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">네이비</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="바이올렛" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">바이올렛</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="핑크" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">핑크</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="멀티(혼합)" name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">멀티(혼합)</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz cate-chk" value="투명"  name="cate-chk">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">투명</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div> <!-- 색상 선택창 -->
									</li>
									<!-- <li class="category-filter-bar-control-list__item" id="가격">
										<div class="drop-down panel-drop-down" >
											<button class="category-filter-bar-button" type="button" id="btn1-6">
											가격<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
										<div style="display:none;" id="btn1-6-category">
											<div class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 100000;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="가격" data-panel-parents="">
														<section class="property-filter-panel-range-control">
																<ul class="property-filter-panel-entry-list property-filter-panel-range-control__list">
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item selected" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="전체"  checked="" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">전체</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="50,000원이하" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">50,000원 이하</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="50,000원~100,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">50,000원 ~ 100,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="100,000원~200,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">100,000원 ~ 200,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list"  value="200,000원~300,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">200,000원 ~ 300,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="300,000원~400,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">300,000원 ~ 400,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="400,000원~500,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">400,000원 ~ 500,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="500,000원~600,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">500,000원 ~ 600,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="600,000원~700,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">600,000원 ~ 700,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="700,000원~800,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">700,000원 ~ 800,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="800,000원~900,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">800,000원 ~ 900,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="900,000원~1,000,000원" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">900,000원 ~ 1000,000원</div></span></div></div></button></li>
																	<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item" type="button"><div class="property-filter-panel-entry-list__item__header"><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type"><input type="radio" class="fs-4H price-list" value="1,000,000원이상" name="price-list"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title"><div class="property-filter-panel-range-control__list-item">1,000,000원 이상</div></span></div></div></button></li></ul>				
														 </section>
													   </div>
													 </div>
												</div>
										</div> 가격 선택창
									</li> -->
								</ul>
							</div> <!-- category-filter-bar-control-list -->
							<div class="category-filter-bar-tag-list-none"id="chk-tag-ul">
								<div class="category-filter-bar-tag-list__list-container">
									<ul class="category-filter-bar-tag-list__list" >
									</ul>
								</div>
								<button class="category-filter-bar-tag-list__clear" type="button"><svg class="icon" width="20" height="20" viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h20v20H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M8.958.833c3.844 0 7.157 2.488 8.417 6.019l.887-1.538a.834.834 0 011.444.833L17.67 9.671a.833.833 0 01-1.138.305l-3.524-2.035a.833.833 0 11.833-1.443l2.054 1.186C14.943 4.654 12.174 2.5 8.958 2.5c-4.022 0-7.291 3.353-7.291 7.5s3.269 7.5 7.291 7.5c2.47 0 4.73-1.272 6.075-3.35a.833.833 0 011.399.905c-1.647 2.546-4.43 4.112-7.474 4.112C4.006 19.167 0 15.058 0 10S4.006.833 8.958.833z"></path></g></svg><span class="text">초기화</span></button>
							</div>
							<div class="category-filter-bar-tag-list-placeholder"></div>
							<div class="category-feed-filter-secondary">
								<%-- <p class="category-feed-filter-secondary__summary">전체${dbcount }개</p> --%>
								<!-- <div class="category-feed-filter-secondary__right">
									<div class="category-feed-filter-secondary__right__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-order-button" type="button" value="인기순"  id="btn-list-2">인기순
											<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg></button></div>
									</div>
									<div class="btn-none" id="btn-orderby">
										<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 100000; right:10px; margin-top:20px;">
										<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
										<div class="drop-down-panel" data-panel-title="정렬" data-panel-parents="">
										<ul class="property-filter-panel-entry-list">
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="판매순"  name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">판매순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item selected " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="인기순" checked="" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">인기순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="낮은가격순"  name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">낮은가격순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="높은가격순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">높은가격순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="많은리뷰순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">많은리뷰순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="유저사진 많은순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">유저사진 많은순</span></div></div></button></li>
											<li class="property-filter-panel-entry-list__item-wrap"><button class="property-filter-panel-entry-list__item " type="button"><div class="property-filter-panel-entry-list__item__header "><div class="property-filter-panel-entry-list__item__group"><div class="_2xClz input-type">
												<input type="radio" class="fs-4H list-chk" value="최신순" name="btn-filter"><span class="_2ekY2"></span></div><span class="property-filter-panel-entry-list__item__title">최신순</span></div></div></button></li></ul></div></div></div>
									</div>
								</div> -->
							</div>
						</div> <!-- filter-bar category-feed-filter-bar -->
					</div> <!-- filter -->
				</div> <!-- category-feed__content__filter -->
				<div class="virtualized-list category-feed__content__content row" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
				
		<%-- 		<c:forEach var="vo" items="${interior_list }">
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="http://localhost:9000/myhouse/store_page.do?ino=${vo.ino }"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/${vo.goods_simage}">
								<button class="production-item-scrap-badge" type="button" id="pro-scrap-${vo.ino }">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">${vo.company }</span>
									<span class="production-item__header__name">${vo.ititle }</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">${vo.goods_price } 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">${vo.star_avg }</strong>
									리뷰 ${vo.star_count }
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					</c:forEach>
				 --%>
					
				</div> <!-- virtualized-list category-feed__content__content row  -->
			</div> <!-- category-feed__content -->
		</div> <!-- category-feed -->
	</div>
</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</div>


<!-- 스크랩 팝업 -->
<c:forEach var="vo" items="${interior_list }">
<div class="toast-message-root">
	<div class="toast-message-transition-enter-done"  id="scrap-add-${vo.ino }">
		<button class="toast-message__footer" type="button" id="taost-none2">
			<div class="toast-message__footer__close">
				<svg class="toast-message__footer__close__icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#bdbdbd" d="M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z"></path></svg></div></button>
		<div class="toast-message__body">스크랩했습니다</div>
		<a class="button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button" 
			href="/users/11910649/collections">스크랩북 보기</a>
	</div>
	<div class="toast-message-transition-enter-done"  id="scrap-del-${vo.ino }">
		<button class="toast-message__footer" type="button">
			<div class="toast-message__footer__close">
				<svg class="toast-message__footer__close__icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#bdbdbd" d="M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z"></path></svg></div></button>
			<div class="toast-message__body">스크랩북에서 삭제했습니다.</div>
	</div>
</div>
</c:forEach>

</body>
</html>