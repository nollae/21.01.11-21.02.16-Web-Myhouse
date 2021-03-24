package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myhouse.vo.MemberVO;
import com.spring.service1.MemberServiceImpl;

@Controller
public class JoinController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * ȸ������ - ���̵� �ߺ�üũ ��ư ó��
	 */
	@RequestMapping(value="/idCheck.do",method=RequestMethod.GET)
	@ResponseBody
	public String idCheck(String email) {
		return memberService.getResultIdCheck(email);//ajax ����
	}
	/**
	 * ȸ������ ó��
	 * @return
	 */
	@RequestMapping(value="/join_proc.do",method=RequestMethod.POST)
	public String join_proc(MemberVO vo) {
		return memberService.getResultJoin(vo);
	}
	/**
	 * ȸ������
	 * @return
	 */
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
	
	
}
