package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.noticeVO;

public interface NoticeService {
	ModelAndView getList(String rpage); 
	ModelAndView getList2(String rpage); 
	ModelAndView getDetail(String nno); 
	ModelAndView getDetail2(String nno); 
	String noticeDelete(String[] nno); 
	String noticeInsert(noticeVO vo); 
	String noticeUpdate(noticeVO vo); 
	 ModelAndView getInteriorTop(String ino, String email);
}
