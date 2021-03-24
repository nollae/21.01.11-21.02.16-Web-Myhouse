package com.myhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.myhouse.vo.SessionVO;

public class AuthHandlerInterceptor extends HandlerInterceptorAdapter{
	
	/**
	 * ��Ʈ�ѷ��� ����Ǳ� ���� ȣ��� - ���ǰ�ü�� üũ
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    throws Exception {
			//1. �������� ��������
			HttpSession session =request.getSession();
			SessionVO svo = (SessionVO)session.getAttribute("svo");
			
			//2. svo ��ü üũ - null üũ
			if(svo == null) {
				response.sendRedirect("/MyCGV/login.do");
				return false;
			}else {
				if(!svo.getName().equals("������")) {
					response.sendRedirect("/MyCGV/index.do");
					return false;
				}
			}
		
			return true;//��Ʈ�ѷ��� �̵�
		}//preHandel
	
}
