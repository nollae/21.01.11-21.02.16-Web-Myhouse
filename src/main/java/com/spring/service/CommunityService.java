package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

public interface CommunityService {
	ModelAndView getList(String rpage,String email); 
	ModelAndView getContent(String pno,String email);
	ModelAndView getUpdate(String pno);
	ModelAndView getResultUpdate(Object vo);
	ModelAndView getGoodsList(String value);
	String getGoods(String gname);
	String getDelete(String pno);
	String getFollow(String w_email,String email);
	String deleteFollow(String w_email,String email);
	String getLike(String pno,String email);
	String deleteLike(String pno,String email);
	String getScrap(String pno,String email);
	String deleteScrap(String pno,String email);
	String getCommentWrite(String pno, String content ,String email);
	String getReplyWrite(String pno, String tag, String content, String cgroup ,String email);
	String getCommentDelete(String cno);
	String getCommentUpdate(String cno);
	String getCommentLike(String cno,String email);
	String deleteCommentLike(String cno,String email);
	String getCommunityListAjax(String order, String type, String style, String rpage,String email);
}
