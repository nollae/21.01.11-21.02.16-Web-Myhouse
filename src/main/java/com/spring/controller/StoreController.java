package com.spring.controller;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.SessionVO;
import com.myhouse.vo.StoreIndexVO;
import com.spring.service.InteriorServiceImpl;

@Controller
public class StoreController {
	
	@Autowired
	private InteriorServiceImpl interiorService; 
	

	/*
	 * store_pay_cancel 화면
	 */
	@RequestMapping(value="/store_pay_cancel.do",method=RequestMethod.GET) 
	public String store_pay_cancel() {
		
		return "/store/store_pay_cancel";
	}
	
	/*
	 * store_pay_fin_card 화면
	 */
	@RequestMapping(value="/store_pay_fin_card.do",method=RequestMethod.GET) 
	public ModelAndView store_pay_fin_card(HttpSession session, String ono) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		StringTokenizer ono_ = new StringTokenizer(ono,",");
		
		String[] onolist = new String[ono_.countTokens()];

		for(int i=0; i<onolist.length; i++) {
			onolist[i] = ono_.nextToken();
		}

		if(svo == null) {
			return null;
		}else {
			return interiorService.getPayFinish(svo.getEmail(), onolist);
		}
		
	}
	/*
	 * store_pay_finish 화면
	 */
	@RequestMapping(value="/store_pay_finish.do",method=RequestMethod.GET) 
	public String store_pay_finish() {
		
		return "/store/store_pay_finish";
	}
	
	
	/*
	 * store_payment - bank_pay 결제
	 */
	@ResponseBody
	@RequestMapping(value="/bank_pay.do",method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8") 
	public String bank_pay(HttpSession session, String gno) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		StringTokenizer gno_ = new StringTokenizer(gno,",");
		
		String[] gnolist = new String[gno_.countTokens()];
		
		for(int i=0; i<gnolist.length; i++) {
			gnolist[i] = gno_.nextToken();
		}
		
		if(svo == null) {
			return null;
		}else {
			return interiorService.getAmountPay(svo.getEmail(), gnolist);
		}
		
	}
	
	/*
	 * store_payment - nice_card_pay 결제
	 */
	@ResponseBody
	@RequestMapping(value="/nice_card_pay.do",method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8") 
	public String nice_card_pay(HttpSession session, String gno) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		StringTokenizer gno_ = new StringTokenizer(gno,",");
		
		String[] gnolist = new String[gno_.countTokens()];
		
		for(int i=0; i<gnolist.length; i++) {
			gnolist[i] = gno_.nextToken();
		}
		
		if(svo == null) {
			return null;
		}else {
			return interiorService.getAmountPay(svo.getEmail(), gnolist);
		}
		
		
	}
	/*
	 * store_payment - 주문금액
	 */
	@ResponseBody
	@RequestMapping(value="/amount_pay.do",method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8") 
	public String amount_pay(HttpSession session, String gno) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		StringTokenizer gno_ = new StringTokenizer(gno,",");
		
		String[] gnolist = new String[gno_.countTokens()];
		
		for(int i=0; i<gnolist.length; i++) {
			gnolist[i] = gno_.nextToken();
		}
		if(svo == null) {
			return null;
		}else {
			return interiorService.getAmountPay(svo.getEmail(), gnolist);
		}
		
	}
	
	/*
	 * store_payment - 주소 리스트
	 */
	@ResponseBody
	@RequestMapping(value="/addr_list.do",method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8") 
	public String addr_list(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo == null) {
			return null;
		}else {
			return interiorService.getAddrList(svo.getEmail());
		}
		
	}
	/*
	 * store_payment - 주소 입력 --- 결제하기 클릭
	 */
	@ResponseBody
	@RequestMapping(value="/pay_addr_insert.do",method=RequestMethod.GET) 
	public String addr_insert(HttpSession session, String name, String phone, String memo) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		System.out.println("controller!!!!!!!!!---->"+phone);
		System.out.println("controller!!!!!!!!!---->"+memo);
		
		if(svo == null) {
			return null;
		}else {
			return interiorService.getPayAddrInsert(svo.getEmail(), name, phone, memo);
		}
		
	}
	/*
	 * store_payment - 주소 입력
	 */
	@ResponseBody
	@RequestMapping(value="/addr_insert.do",method=RequestMethod.GET) 
	public String addr_insert(HttpSession session, String name, String addr, String addr_num, String phone) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		if(svo == null) {
			return null;
		}else {
			return interiorService.getAddrInsert(svo.getEmail(), name, addr, addr_num, phone);
		}
		
	}
	
	
	@RequestMapping(value="/store_payment.do",method=RequestMethod.GET) 
	public ModelAndView store_payment(HttpSession session, String gno, String ocount) {
		ModelAndView mv = new ModelAndView();
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		StringTokenizer gno_ = new StringTokenizer(gno,",");
		StringTokenizer ocount_ = new StringTokenizer(ocount,",");
		
		String[] gnolist = new String[gno_.countTokens()];
		String[] ocountlist = new String[ocount_.countTokens()];
		
		for(int i=0; i<gnolist.length; i++) {
			gnolist[i] = gno_.nextToken();
		}
		for(int i=0; i<ocountlist.length; i++) {
			ocountlist[i] = ocount_.nextToken();
		}
		
		if(svo == null) {
			mv.setViewName("/login/login");
			return mv;
		}else {
			return interiorService.getPayment(svo.getEmail(), gnolist, ocountlist);
		}
	}
		
	/*
	 * store_page :: question - delete
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_answer_delete.do", method=RequestMethod.GET)
	public String interior_question_answer_delete(String qno, String ino) {
		System.out.println("store_index qno!!!!!!!!!!!!---------->"+qno);
		System.out.println("store_index ino!!!!!!!!!!!!!!---------->"+ino);
		return interiorService.getInteriorQuestionAnswerDelete(qno, ino);
	}
	
	/*
	 * store_page :: question - answer :: 화면
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_answer_update_proc.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_question_answer_update_proc(String qno, String ino) {
		System.out.println("store_index qno!!!---------->"+qno);
		System.out.println("store_index ino!!!---------->"+ino);
		return interiorService.getInteriorQuestionAnswerProc(qno, ino);
	}
	
	/*
	 * store_page :: question - answer :: 화면
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_answer_proc.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_question_answer_proc(String qno, String ino) {
		System.out.println("store_index qno!!!---------->"+qno);
		System.out.println("store_index ino!!!---------->"+ino);
		return interiorService.getInteriorQuestionAnswerProc(qno, ino);
	}
	
	/*
	 * store_page :: question - answer
	 */
	@RequestMapping(value="/interior_question_answer.do", method=RequestMethod.GET)
	public ModelAndView interior_question_answer(String qno, String qreply, String ino) {
		System.out.println("store_index qno---------->"+qno);
		System.out.println("store_index ino---------->"+ino);
		System.out.println("store_index qreply---------->"+qreply);
		return interiorService.getInteriorQuestionAnswer(qno, qreply, ino);
	}
	
	/*
	 * store_page :: question - write
	 */
	@RequestMapping(value="/interior_question_insert.do", method=RequestMethod.POST)
	public String interior_question_insert(StoreIndexVO vo, HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		vo.setEmail(svo.getEmail());
		
		if(svo.getEmail()== null) {
			System.out.println("nulllllllllllll!!!!!!");
			return "/login/login";
		}else {
			return interiorService.getInteriorQuestionInsert(vo);
		}
	}
	
	/*
	 * store_page :: question 화면
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_proc.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_question_proc(String ino, String qpage) {
		System.out.println("store_index ino!!!---------->"+ino);
		return interiorService.getInteriorQuestionProc(ino, qpage);
	}
	
	
	/*
	 * store_page :: review - write
	 */
	@RequestMapping(value="/interior_review_insert.do", method=RequestMethod.POST)
	public String interior_review_insert(StoreIndexVO vo, HttpServletRequest request, HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		String path1 = request.getSession().getServletContext().getRealPath("/");
		String path2 = "\\resources\\upload\\";
		vo.setEmail(svo.getEmail());
		vo.setSavepath(path1+path2);
		if(vo.getEmail()== "") {
			return "/login/login";
		} else {
			return interiorService.getInteriorReviewInsert(vo);
			
		}
		
	}
	
	/*
	 * store_page :: review - 상품리스트 선택
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_goods_list.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_review_goods_list(String gno) {
		return interiorService.getInteriorReviewGoodsList(gno);
	}
	
	/*
	 * store_page :: review - 베스트순
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8") 
	public String interior_review(String ino, String status, String rpage) {
		return interiorService.getInteriorReview(ino, status, rpage);
	}
	
	/*
	 * store_page :: 스크랩 처리 :: 삭제
	 */
	@RequestMapping(value="/interior_scrap_del_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_del_proc(HttpSession session, String ino) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		System.out.println("store_index---------->"+ino);
		if(svo == null) {
			return interiorService.getInteriorScrapDelProc("", ino);
		}else {
			return interiorService.getInteriorScrapDelProc(svo.getEmail(), ino);
		}
	}
	
	/*
	 * store_page :: 스크랩 처리
	 */
	@RequestMapping(value="/interior_scrap_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_proc(HttpSession session, String ino) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		System.out.println("store_index---------->"+ino);
		if(svo == null) {
			return interiorService.getInteriorScrapProc("", ino);
		}else {
			return interiorService.getInteriorScrapProc(svo.getEmail(), ino);
		}
		 
	}
	
	
	/*
	 * store_index :: 스크랩 처리 :: 삭제
	 */
	@ResponseBody
	@RequestMapping(value="/store_scrap_del_proc.do", method=RequestMethod.GET)
	public String store_scrap_del_proc(HttpSession session, String ino) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo == null) {
			return null; 
		}else {
			return interiorService.getStoreScrapDelProc(svo.getEmail(), ino); 
		}
	}
	
	/*
	 * store_index :: 스크랩 처리
	 */
	@ResponseBody
	@RequestMapping(value="/store_scrap_proc.do", method=RequestMethod.GET)
	public String store_scrap_proc(HttpSession session, String ino) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo == null) {
			return null; 
		}else {
			return interiorService.getStoreScrapProc(svo.getEmail(), ino); 
		}
		
	}
	
	/*
	 * store_page 화면 :: 상품 주문 화면
	 */
	@ResponseBody
	@RequestMapping(value="/main_order.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String main_order(String gno) {
		
			return interiorService.getStoreMainOrderProc(gno); 
		
	}

	/*
	 * store_page 화면
	 */
	@RequestMapping(value="/store_page.do",method=RequestMethod.GET) 
	public ModelAndView store_page(String ino, HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo == null) {
			return interiorService.getInteriorTop(ino, "");
		} else {
			return interiorService.getInteriorTop(ino, svo.getEmail());
		}
		
	}
	
	
	/*
	 * store_index - 상세카테고리
	 */
	@ResponseBody
	@RequestMapping(value="/category_list.do", method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8")
	public String category_tone(String category, String tone, String color, String season, String rpage, String status) {
		
		System.out.println(category);
		System.out.println("controller---->"+tone);
		System.out.println("controller---->"+color);
		System.out.println("controller---->"+season);
		System.out.println("status---->"+status);
		System.out.println("controller + rpage---->"+rpage);
		
		StringTokenizer tone_ = new StringTokenizer(tone,",");
		StringTokenizer color_ = new StringTokenizer(color,",");
		StringTokenizer season_ = new StringTokenizer(season,",");
		
		String[] tonelist = new String[tone_.countTokens()];
		String[] colorlist = new String[color_.countTokens()];
		String[] seasonlist = new String[season_.countTokens()];
		
		for(int i=0; i<tonelist.length; i++) {
			tonelist[i] = tone_.nextToken();
		}
		for(int i=0; i<colorlist.length; i++) {
			colorlist[i] = color_.nextToken();
		}
		for(int i=0; i<seasonlist.length; i++) {
			seasonlist[i] = season_.nextToken();
		}
		
		
		return interiorService.getListCategory(category, tonelist, colorlist, seasonlist, rpage, status); 
	}
	/*
	 * store_index 화면 - 스크랩
	 */
	@ResponseBody
	@RequestMapping(value="/scrap_exist_proc.do", method=RequestMethod.GET)
	public String scrap_exist_proc(HttpSession session, String ino) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		System.out.println("inooooo"+ino);
		System.out.println("emailll svo"+svo);
		if(svo == null) {
			return null; 
		}else {
			return interiorService.getScrapProc(svo.getEmail(),ino ); 
		}
	}
	/*
	 * store_index 화면
	 */
	@RequestMapping(value="/store_index.do", method=RequestMethod.GET)
	public ModelAndView store_index(String category, String rpage) {
		System.out.println("rpage~~~~~~~~~~>"+rpage);
		return interiorService.getList(category); 
	}
	
	
}
