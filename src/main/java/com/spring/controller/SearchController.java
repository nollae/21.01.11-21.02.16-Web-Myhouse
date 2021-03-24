package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service1.SearchServiceImpl;

@Controller
public class SearchController {
	
	@Autowired
	private SearchServiceImpl searchService;
	/**
	 * °Ë»ö
	 */
	@RequestMapping(value="/search.do",method=RequestMethod.GET)
	public ModelAndView search(String value) {
		return searchService.getList(value); 
	}
}
