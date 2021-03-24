package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface SearchService {
	 ModelAndView getList(String value);//서치에서 판매 리스트가져오기
	 ModelAndView getList2();//index에서 판매 리스트가져오기
}
