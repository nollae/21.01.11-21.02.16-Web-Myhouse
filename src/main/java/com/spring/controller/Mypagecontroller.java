package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.reviewVO;
import com.spring.service1.MypageService;

@Controller
public class Mypagecontroller {

	
	@Autowired
	private MypageService mypageService;
	
	
	
	
	@RequestMapping(value="/mypage_profile.do", method=RequestMethod.GET)
	public String profile() {
		return "/mypage/profile";
	}
	
	@RequestMapping(value="/mypage_ask.do", method=RequestMethod.GET)
	public String ask() {
		return "/mypage/ask";
	}
	
	@RequestMapping(value="/mypage_ask1.do", method=RequestMethod.GET)
	public String ask1() {
		return "/mypage/ask1";
	}
	
	@RequestMapping(value="/mypage_scrap.do", method=RequestMethod.GET)
	public String scrap() {
		return "/mypage/scrap";
	}
	
	@RequestMapping(value="/mypage_like.do", method=RequestMethod.GET)
	public ModelAndView like(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getlike(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_activity.do", method=RequestMethod.GET)
	public ModelAndView activity(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getlactivity(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_activity2.do", method=RequestMethod.GET)
	public ModelAndView activity2(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getpanme(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_activity3.do", method=RequestMethod.GET)
	public ModelAndView activity3(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getqna(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_orderlist.do", method=RequestMethod.GET)
	public ModelAndView orderlist(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getorder(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_reception.do", method=RequestMethod.GET)
	public String reception() {
		return "/mypage/reception";
	}
	
	@RequestMapping(value="/mypage_notice.do", method=RequestMethod.GET)
	public ModelAndView notice() {
		return mypageService.getnotice();
	}
	
	@RequestMapping(value="/mypage_clientcenter.do", method=RequestMethod.GET)
	public String clientcenter() {
		return "/mypage/clientcenter";
	}
	
	
	@RequestMapping(value="/review_insert_proc.do", method=RequestMethod.POST)
	public ModelAndView review_insert(reviewVO vo, HttpServletRequest request,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		//서버의 저장경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		//vo에 저장경로 추가
		vo.setSavepath(root_path+attach_path);
		System.out.println("저장경로 = "+vo.getSavepath());
		vo.setEmail(svo.getEmail());
		return mypageService.getreviewinsert(vo);
	}
	
	@RequestMapping(value="/mypage_review_update_proc.do", method=RequestMethod.POST)
	public ModelAndView review_update(reviewVO vo, HttpServletRequest request,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		//서버의 저장경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		//vo에 저장경로 추가
		vo.setSavepath(root_path+attach_path);
		System.out.println("저장경로 = "+vo.getSavepath());
		vo.setEmail(svo.getEmail());
		return mypageService.getreviewupdate(vo);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/mypage_review_proc.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String review_proc(String gno) {
		return mypageService.getreviewproc(gno);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage_review_proc1.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String review_proc1(String gno) {
		return mypageService.getreviewproc1(gno);
	}
	
	
	
	@RequestMapping(value="/mypage_review.do", method=RequestMethod.GET)
	public ModelAndView rivew(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getreviewpage(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_review1.do", method=RequestMethod.GET)
	public ModelAndView review1(HttpSession session) {
	SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getreview1(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_review2.do", method=RequestMethod.GET)
	public ModelAndView rivew2(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getreview(svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_option.do", method=RequestMethod.GET)
	public ModelAndView option(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getoption(svo.getEmail());
	}
	
	@RequestMapping(value="/option_update_proc.do", method=RequestMethod.POST)
	public ModelAndView option_update_proc(MemberVO vo, HttpServletRequest request,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		//서버의 저장경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		//vo에 저장경로 추가
		vo.setSavepath(root_path+attach_path);
		System.out.println("저장경로 = "+vo.getSavepath());
		vo.setEmail(svo.getEmail());
		return mypageService.getResultUpdate(vo);
	}
	
	
	
	
	@RequestMapping(value="/mypage_password.do", method=RequestMethod.GET)
	public String password() {
		return "/mypage/password";
	}
	
	@RequestMapping(value="/pass_word_change_proc.do", method=RequestMethod.POST)
	public ModelAndView password(MemberVO vo,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getpasschange(vo.getPass(),svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_memberdelete.do", method=RequestMethod.GET)
	public String memberdelete() {
		return "/mypage/memberdelete";
	}
	
	
	@RequestMapping(value="/mypage_member_delete_proc.do", method=RequestMethod.POST)
	public String member_delete_proc(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getmember_delete(svo.getEmail());
	}
	
	
	@ResponseBody
	@RequestMapping(value="/mypage_picture.do", method=RequestMethod.GET)
	public ModelAndView picture(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getpicture(svo.getEmail());
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage_picture_scrap.do",method=RequestMethod.GET)
	public String picture_scrap(String pno,HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getpicturescrap(pno,svo.getEmail());
		
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage_picture_scrapdelete.do",method=RequestMethod.GET)
	public String picture_scrapdelete(String pno,HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		return mypageService.getpscrapdelete(pno,svo.getEmail());
	}
	
	
	@ResponseBody
	@RequestMapping(value="/mypage_picture_proc.do", method=RequestMethod.GET)
	public String picture_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
			return mypageService.getpictureproc(pno,svo.getNickname());
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage_picture_delete.do", method=RequestMethod.GET)
	public String picture_delete(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
			return mypageService.getpicturedelete(pno,svo.getEmail());
	}
	
	@RequestMapping(value="/mypage_noticecontent.do", method=RequestMethod.GET)
	public ModelAndView noticecontent(String nno) {
		return mypageService.getnoticecontent(nno);
	}
	
	@RequestMapping(value="/mypage_profile1.do", method=RequestMethod.GET)
	public ModelAndView profile1(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
			return mypageService.getphotolist(svo.getEmail());
		
	}
	
	@RequestMapping(value="/mypage_scrap1.do", method=RequestMethod.GET)
	public String scrap1() {
		return "/mypage/scrap1";
	}
	
	@RequestMapping(value="/mypage_scrap2.do", method=RequestMethod.GET)
	public String scrap2() {
		return "/mypage/scrap2";
	}
	
	@RequestMapping(value="/mypage_question.do", method=RequestMethod.GET)
	public ModelAndView question(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return mypageService.getquestlist(svo.getEmail());
	}
	
}
