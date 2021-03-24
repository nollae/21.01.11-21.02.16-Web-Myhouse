package com.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.SessionVO;
import com.myhouse.vo.basketVO;
import com.spring.service.ShoppingBasketImpl;

@Controller
public class shopBasketController  {
	
	@Autowired
	private ShoppingBasketImpl ShoppingBasketService;
	
	// 1. 장바구니 추가
	@RequestMapping(value="/store_basket_proc.do",method=RequestMethod.GET)
    public String store_basket_proc(String email, String gno, String bcount){
		System.out.println("controller!!---->"+email);
		System.out.println("controller!!---->"+gno);
		System.out.println("controller!!---->"+bcount);
		
		StringTokenizer gno_ = new StringTokenizer(gno,",");
		StringTokenizer bcount_ = new StringTokenizer(bcount,",");
		
		String[] gnolist = new String[gno_.countTokens()];
		String[] bcountlist = new String[bcount_.countTokens()];
		
		for(int i=0; i<gnolist.length; i++) {
			gnolist[i] = gno_.nextToken();
		}
		for(int i=0; i<bcountlist.length; i++) {
			bcountlist[i] = bcount_.nextToken();
		}
		
		
		/*
		 * //세션 email 작성자 저장 SessionVO svo = (SessionVO)session.getAttribute("svo");
		 * String email = svo.getEmail(); vo.setEmail(email);
		 * 
		 * System.out.println("장바구니:"+vo.getEmail());
		 * System.out.println("gno:"+vo.getGno());
		 * System.out.println("bcount:"+vo.getBcount());
		 * 
		 * // 장바구니에 기존 상품이 있는지 검사 int count =
		 * ShoppingBasketService.countCart(vo.getGno(), email);
		 * System.out.println("장바구니 갯수:"+count); if(count == 0){ // 없으면 insert
		 * ShoppingBasketService.insert(vo); } else { // 있으면 update
		 * ShoppingBasketService.updateCart(vo);
		 * 
		 * }
           return "redirect://index.do";
		 * 
		 */
		return ShoppingBasketService.insert(email, gnolist, bcountlist);
    }

    // 2. 장바구니 목록
	@RequestMapping(value="/shoppingBasket_list.do",method=RequestMethod.GET)
    public ModelAndView list(HttpSession session, ModelAndView mv){
		SessionVO svo = (SessionVO)session.getAttribute("svo");
	    System.out.println("장바구니 목록 세션:"+svo.getEmail());
        Map<String, Object> map = new HashMap<String, Object>();
        List<basketVO> list = ShoppingBasketService.listCart(svo.getEmail()); // 장바구니 정보 
        String sumMoney = ShoppingBasketService.sumMoney(svo.getEmail()); // 장바구니 전체 금액 호출
        map.put("list", list);                // 장바구니 정보를 map에 저장
        map.put("count", list.size());        // 장바구니 상품의 유무
        map.put("sumMoney", sumMoney);        // 장바구니 전체 금액
        mv.setViewName("shoppingBasket/shoppingBasket_list");  
        mv.addObject("map", map);            // map 변수 저장
        return mv;
    }

    // 3. 장바구니 삭제
	@RequestMapping(value="/shoppingBasket_proc_delete.do",method=RequestMethod.GET)
    public String delete(String bno){
    	ShoppingBasketService.delete(bno);
        return "redirect:/shoppingBasket_list.do";
    }

    // 4. 장바구니 수정
    @RequestMapping("update.do")
    public String update(int[] bcount, int[] gno, HttpSession session) {
        // session의 id
        String email = (String) session.getAttribute("email");
        // 레코드의 갯수 만큼 반복문 실행
        for(int i=0; i<gno.length; i++){
        	basketVO vo = new basketVO();
            vo.setEmail(email);
            vo.setBcount(bcount[i]);
            ShoppingBasketService.modifyCart(vo);
        }

        return "redirect:/shoppingBasket/shoppingBasket_list.do";
    }
}
