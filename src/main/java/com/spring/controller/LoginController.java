package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;
import com.spring.service1.MemberServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * �α��� - �α��� ó��
	 */
	@RequestMapping(value="/loginCheck.do",method=RequestMethod.GET)
	@ResponseBody
	public String idCheck(MemberVO vo,HttpSession session) {
		return memberService.getResultLoginCheck(vo,session);//ajax ����
	}
	/**
	 * ��й�ȣ ã�� ó��
	 */
	@RequestMapping(value="/pass_update_proc.do",method=RequestMethod.POST)
	public String pass_update(String email) {
		return memberService.mailSendWithPassword(email);
	}
	/**
	 * ��й�ȣ ã�� ȭ��
	 */
	@RequestMapping(value="/pass_update.do",method=RequestMethod.GET)
	public String pass_update() {
		return "/login/pass_update";
	}
	
	/**
	 * �α׾ƿ� ó��
	 */
	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		String sessionId=(String)session.getAttribute("sessionId");
		String result="";
		if(svo != null || sessionId!=null) {
			session.invalidate();
			result ="index";
		}else {
			result="errorPage";
		}
		
		return result;
	}
	
	 
	
	/**
	 * �α��� ����� ȭ��
	 * @return
	 */
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	/**
	 * �ַ�������
	 */
	@RequestMapping(value="/errorPage.do",method=RequestMethod.GET)
	public String index() {
		return "errorPage";
	}
	
}
