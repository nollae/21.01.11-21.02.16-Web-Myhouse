package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class followController {

	/**
	 * 개인 팔로잉 페이지
	 * @return
	 */
	@RequestMapping(value="/follow_home_followee.do",method=RequestMethod.GET)
	public String follow_home_followee() {
		return "/follow/follow_home_followee";
	}
	
	/**
	 * 개인 팔로워 페이지
	 * @return
	 */
	@RequestMapping(value="/follow_home_follower.do",method=RequestMethod.GET)
	public String follow_home_follower() {
		return "/follow/follow_home_follower";
	}
	
	/**
	 * 개인 페이지
	 * @return
	 */
	@RequestMapping(value="/follow_list.do",method=RequestMethod.GET)
	public String follow_list() {
		return "/follow/follow_list";
	}
	
}
