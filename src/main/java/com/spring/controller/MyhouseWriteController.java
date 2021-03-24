package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.SessionVO;
import com.spring.service.UploadPhotoServiceImpl;


@Controller
public class MyhouseWriteController {
	
	@Autowired
	private UploadPhotoServiceImpl uploadService;
	
	
	/**
	 * 게시판 글쓰기 처리
	 * 
	 */
	@RequestMapping(value="/upload_photo_proc.do",method=RequestMethod.POST)
	public String upload_photo_proc(PhotoVO vo,HttpServletRequest request,HttpSession session) {
		//세션 email 작성자 저장
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		String email = svo.getEmail();
		vo.setEmail(email);
		//서버의 저장경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		//vo에 저장경로 추가
		vo.setSavepath(root_path+attach_path);
		
		return uploadService.getResultWrite(vo);
	}
	
	/**
	 * 글쓰기 사진올리기
	 * @return
	 */
	@RequestMapping(value="/upload_photo.do",method=RequestMethod.GET)
	public String upload_photo() {
		return "/myhouseWrite/upload_photo";
	}
	
	/**
	 * 글쓰기 리뷰올리기
	 * @return
	 */
	@RequestMapping(value="/product_review.do",method=RequestMethod.GET)
	public ModelAndView search(String value) {
		return uploadService.getList(value); 
	}
	
	/**
	 * 글쓰기 고객센터
	 * @return
	 */
	@RequestMapping(value="/service_center.do",method=RequestMethod.GET)
	public String service_center() {
		return "/myhouseWrite/service_center";
	}
}
