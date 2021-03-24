package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.SessionVO;
import com.spring.service1.MypageService;

@Controller
public class ScrapController {

	@Autowired
	private MypageService mypageService;
	/**
	 * ½ºÅ©·¦ Ã¹È­¸é(¸ðµÎ)
	 * @return
	 */
	@RequestMapping(value="/scrap_all.do",method=RequestMethod.GET)
	public ModelAndView scrap_all(HttpSession session) {
		  SessionVO svo = (SessionVO)session.getAttribute("svo"); 
		  return mypageService.getscrap_all(svo.getEmail());
		 
	}
	
	/**
	 * ½ºÅ©·¦ »óÇ°
	 * @return
	 */
	@RequestMapping(value="/scrap_product.do",method=RequestMethod.GET)
	public ModelAndView scrap_prodouct(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getscrap_pro(svo.getEmail());
	}
	
	/**
	 * ½ºÅ©·¦ »çÁø
	 * @return
	 */
	@RequestMapping(value="/scrap_houses.do",method=RequestMethod.GET)
	public ModelAndView scrap_houses(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getscrap_photo(svo.getEmail());
	}
	
}
