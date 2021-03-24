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
	 * �Խ��� �۾��� ó��
	 * 
	 */
	@RequestMapping(value="/upload_photo_proc.do",method=RequestMethod.POST)
	public String upload_photo_proc(PhotoVO vo,HttpServletRequest request,HttpSession session) {
		//���� email �ۼ��� ����
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		String email = svo.getEmail();
		vo.setEmail(email);
		//������ ������
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		//vo�� ������ �߰�
		vo.setSavepath(root_path+attach_path);
		
		return uploadService.getResultWrite(vo);
	}
	
	/**
	 * �۾��� �����ø���
	 * @return
	 */
	@RequestMapping(value="/upload_photo.do",method=RequestMethod.GET)
	public String upload_photo() {
		return "/myhouseWrite/upload_photo";
	}
	
	/**
	 * �۾��� ����ø���
	 * @return
	 */
	@RequestMapping(value="/product_review.do",method=RequestMethod.GET)
	public ModelAndView search(String value) {
		return uploadService.getList(value); 
	}
	
	/**
	 * �۾��� ������
	 * @return
	 */
	@RequestMapping(value="/service_center.do",method=RequestMethod.GET)
	public String service_center() {
		return "/myhouseWrite/service_center";
	}
}
