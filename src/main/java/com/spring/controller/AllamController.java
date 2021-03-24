package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AllamController {

	/**
	 * 알람 페이지(내소식)
	 * @return
	 */
	@RequestMapping(value="/allam_mynews.do",method=RequestMethod.GET)
	public String allam_mynews() {
		return "/allam/allam_mynews";
	}
	
	/**
	 * 알람 페이지(팔로잉)
	 * @return
	 */
	@RequestMapping(value="/allam_following.do",method=RequestMethod.GET)
	public String allam_following() {
		return "/allam/allam_following";
	}
	
	
}
