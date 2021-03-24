package com.spring.service1;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.MemberVO;


public interface MemberService {
	ModelAndView getMemberContent(String id);
	ModelAndView getMemberList(String rpage);
	ModelAndView getMemberInfo(String email);
	ModelAndView getMemberList2(String rpage);
	String getResultJoin(MemberVO vo);
	String stateUpdate(String[] inos);
	String stateUpdate2(String[] inos);
	String sellerUpdate(String[] emails);
	String sellerUpdate2(String[] emails);
	String getResultLoginCheck(MemberVO vo,HttpSession session);
}
