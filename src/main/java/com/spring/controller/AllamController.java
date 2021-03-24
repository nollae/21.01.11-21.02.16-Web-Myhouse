package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AllamController {

	/**
	 * �˶� ������(���ҽ�)
	 * @return
	 */
	@RequestMapping(value="/allam_mynews.do",method=RequestMethod.GET)
	public String allam_mynews() {
		return "/allam/allam_mynews";
	}
	
	/**
	 * �˶� ������(�ȷ���)
	 * @return
	 */
	@RequestMapping(value="/allam_following.do",method=RequestMethod.GET)
	public String allam_following() {
		return "/allam/allam_following";
	}
	
	
}
