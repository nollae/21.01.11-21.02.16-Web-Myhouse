package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.SessionVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;
import com.spring.service.SalesApplicationServiceImpl;

@Controller
public class SalesApplicationController {
	@Autowired
	private SalesApplicationServiceImpl salesService;
	
	
	@RequestMapping(value="/salesApplication.do", method=RequestMethod.GET)
	public String salesApplication() {
		return "/salesApplication/salesApplication";
	}
	
	/**상품등록**/
	 @RequestMapping(value="/sales_form_write_proc.do", method=RequestMethod.POST)
	 public String board_write_proc(interiorVO ivo, goodsVO gvo, HttpServletRequest request,HttpSession session) {
		 SessionVO svo=(SessionVO)session.getAttribute("svo");
		 ivo.setEmail(svo.getEmail());
		 //서버의 저장경로
		  String path1 = request.getSession().getServletContext().getRealPath("/");
		  String path2 = "\\resources\\upload\\";
		 //vo에 저장경로를 추가
		 ivo.setSavepath(path1+path2);
		 gvo.setSavepath(path1+path2);
	     return salesService.getResultWrite(ivo, gvo);
	  }
}
