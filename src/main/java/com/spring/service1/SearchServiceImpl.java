package com.spring.service1;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.yj_InteriorDAO;
import com.myhouse.dao.yj_communityDAO;
import com.myhouse.vo.CommunityVO;
import com.myhouse.vo.StoreIndexVO;

@Service("SearchService")
public class SearchServiceImpl implements SearchService  {
	@Autowired
	private yj_InteriorDAO interiorDAO2;
	@Autowired
	private yj_communityDAO communityDAO2;
	
	// index페이지 - list
		@Override
		public ModelAndView getList2() {
			ModelAndView mv = new ModelAndView();
			ArrayList<StoreIndexVO> interior_list = interiorDAO2.getInteriorList2(); 
			ArrayList<CommunityVO> community_list = communityDAO2.getList2();
			ArrayList<String> img_list = new ArrayList<String>();
			for(CommunityVO vo:community_list) {
				String[] photos=vo.getPhoto_simage().split(",");
				img_list.add(photos[0]);
			}
					
			mv.addObject("interior_list", interior_list);
			mv.addObject("community_list", community_list);
			mv.addObject("img_list", img_list);
		    mv.setViewName("/index");
			
			return mv;
		}
	
	// store페이지 - list
	@Override
	public ModelAndView getList(String value) {
		ModelAndView mv = new ModelAndView();
		ArrayList<StoreIndexVO> interior_list = interiorDAO2.getInteriorList(value); 
		ArrayList<CommunityVO> community_list = communityDAO2.getList(value);
		ArrayList<String> img_list = new ArrayList<String>();
		for(CommunityVO vo:community_list) {
			String[] photos=vo.getPhoto_simage().split(",");
			img_list.add(photos[0]);
		}
				
		mv.addObject("interior_list", interior_list);
		mv.addObject("community_list", community_list);
		mv.addObject("img_list", img_list);
		mv.addObject("value", value);
	    mv.setViewName("/search/search");
		
		return mv;
	}
	
}
