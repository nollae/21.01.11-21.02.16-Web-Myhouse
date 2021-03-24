package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.MemberDAO;
import com.myhouse.dao.NoticeDAO;
import com.myhouse.dao.yh_InteriorDAO;
import com.myhouse.dao.yj_InteriorDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.StoreIndexVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.noticeVO;

@Service("communityService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private yj_InteriorDAO interiorDAO2;
	@Autowired
	private yh_InteriorDAO interiorDAO;
	@Autowired
	private MemberDAO memberDAO;
	
	// store_page - top
		public ModelAndView getInteriorTop(String ino, String email) {
			ModelAndView mv = new ModelAndView();
			
			
			
			// �������� : ��ܺκ� ---> ������ ��������
			ArrayList<StoreIndexVO> interior_top = interiorDAO.getInteriorTop(ino);   
			StoreIndexVO vo = interior_top.get(0);
			
			for(int i=0; i<interior_top.size(); i++ ) {
				vo = interior_top.get(i);
				System.out.println(vo);
			}
			
			
			int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
			
			
			// ����������
			//ArrayList<StoreIndexVO> interior_question = interiorDAO.getInteriorQeustion(ino); 

			/*
			 * StoreIndexVO qvo = interior_question.get(0);
			 * 
			 * for(int i=0; i<interior_question.size(); i++ ) { qvo =
			 * interior_question.get(i); System.out.println(qvo); }
			 */
			
			mv.addObject("interior_top", interior_top);
			mv.addObject("vo", vo); 
			mv.addObject("ino", ino);
			mv.addObject("email", email);
			mv.addObject("scrap_exist", scrap_exist);
			//mv.addObject("interior_question", interior_question);
			//mv.addObject("qvo", qvo);
			mv.setViewName("/admin/store_page_sample");
			
			//System.out.println("service-- ino ----->"+interior_top);
			
			return mv;
		}
	
	@Override
	public ModelAndView getList2(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		//2-1. ������ ���� ���� start, end count ���ϱ�
		//1������(1~10) , 2������(11~20)...
		int start =0;
		int end=0;
		int pageSize=6; //�� �������� ��µǴ� row
		int pageCount = 1;//��ü �������� : ��ü ����Ʈ row / �� �������� ��µǴ� row
		int dbCount = interiorDAO2.getListCount();// DB���� �� ��ü�ο�� ���
		int reqPage = 1;//��û������
		
		//2-2. ��ü������ �� ���ϱ�
		if(dbCount%pageSize==0){
			pageCount= dbCount/pageSize;
		}else{
			pageCount= dbCount/pageSize+1;
		
		}
		
		//2-3. start, end �� ���ϱ�
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage -1) * pageSize +1 ;
			end = reqPage * pageSize;
		}else{
			start = reqPage;
			end = pageSize;
		}

		ArrayList<interiorVO> list = interiorDAO2.getInteriorList3(start,end); 
		ArrayList<MemberVO> m_list=memberDAO.getInfo2(list);
		System.out.println("����� ����Ʈ ������"+list.size());
		mv.addObject("list", list);
		mv.addObject("m_list", m_list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("/admin/store_list");
		
		return mv;
	}; 
	/** ������Ʈ ó�� **/
	@Override
	public String noticeUpdate(noticeVO vo) {
		String result="";
		//DB����
		if(noticeDAO.getUpdate(vo)) {
			result="redirect:/admin_notice_detail.do?nno="+vo.getNno();
		}else {
			result="errorPage";
		}
		return result;
	}
	@Override
	public String noticeInsert(noticeVO vo) {
		String result="";
		if(noticeDAO.noticeInsert(vo)) {
			result="redirect:/notice_list_admin.do?rpage=1";
		}else {
			result="errorPage";
		}
		return result;
		
	}; 
	@Override
	public String noticeDelete(String[] nno) {
		return String.valueOf(noticeDAO.noticeDelete(nno));
	}; 
	@Override
	public ModelAndView getDetail2(String nno) {
		ModelAndView mv = new ModelAndView();
		noticeVO noticeVO =noticeDAO.getDetail(nno);
		mv.addObject("noticeVO", noticeVO);
		mv.setViewName("/admin/admin_notice_detail_s");
		    
		return mv;
	}; 
	@Override
	public ModelAndView getDetail(String nno) {
		ModelAndView mv = new ModelAndView();
		noticeVO noticeVO =noticeDAO.getDetail(nno);
		noticeVO.setNcontent(noticeVO.getNcontent().replaceAll("\n", "<br/>"));
		mv.addObject("noticeVO", noticeVO);
		mv.setViewName("/admin/admin_notice_detail");
		    
		return mv;
	}; 
	@Override
	public ModelAndView getList(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		 //1������(1~10), 2������(11~20) ...
	     int start =0;
	     int end = 0;
	     int pageSize = 6; // ���������� ��µǴ� row
	     int pageCount = 1; // ��ü ������ �� : ��ü ����Ʈ row / �� �������� ��µǴ� row
	     int dbCount = noticeDAO.getListCount(); //DB���� �� ��ü�ο�� ���
	     int reqPage = 1; //��û������
	      
	     //2-2. ��ü������ �� ���ϱ� - ȭ�����
	     if(dbCount % pageSize == 0) {
	        pageCount = dbCount/pageSize;
	     }else {
	        pageCount = dbCount/pageSize +1;
	     }
	      
	     //2-3. start, end �� ���ϱ�
	     if(rpage != null) {
	        reqPage = Integer.parseInt(rpage);
	        start = (reqPage -1) * pageSize +1;
	        end = reqPage*pageSize;
	     } else {
	        start = reqPage;
	        end = pageSize;
	     }
	    ArrayList<noticeVO> noticeList = noticeDAO.getList(start, end);
	     
	    mv.addObject("noticeList", noticeList);
	    mv.addObject("dbCount", dbCount);
	    mv.addObject("pageSize", pageSize);
	    mv.addObject("reqPage", reqPage);
	    mv.setViewName("/admin/notice_list_admin");
	    
	    return mv;
	}; 
}
