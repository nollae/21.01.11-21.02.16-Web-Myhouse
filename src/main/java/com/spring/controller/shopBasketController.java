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
	
	// 1. ��ٱ��� �߰�
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
		 * //���� email �ۼ��� ���� SessionVO svo = (SessionVO)session.getAttribute("svo");
		 * String email = svo.getEmail(); vo.setEmail(email);
		 * 
		 * System.out.println("��ٱ���:"+vo.getEmail());
		 * System.out.println("gno:"+vo.getGno());
		 * System.out.println("bcount:"+vo.getBcount());
		 * 
		 * // ��ٱ��Ͽ� ���� ��ǰ�� �ִ��� �˻� int count =
		 * ShoppingBasketService.countCart(vo.getGno(), email);
		 * System.out.println("��ٱ��� ����:"+count); if(count == 0){ // ������ insert
		 * ShoppingBasketService.insert(vo); } else { // ������ update
		 * ShoppingBasketService.updateCart(vo);
		 * 
		 * }
           return "redirect://index.do";
		 * 
		 */
		return ShoppingBasketService.insert(email, gnolist, bcountlist);
    }

    // 2. ��ٱ��� ���
	@RequestMapping(value="/shoppingBasket_list.do",method=RequestMethod.GET)
    public ModelAndView list(HttpSession session, ModelAndView mv){
		SessionVO svo = (SessionVO)session.getAttribute("svo");
	    System.out.println("��ٱ��� ��� ����:"+svo.getEmail());
        Map<String, Object> map = new HashMap<String, Object>();
        List<basketVO> list = ShoppingBasketService.listCart(svo.getEmail()); // ��ٱ��� ���� 
        String sumMoney = ShoppingBasketService.sumMoney(svo.getEmail()); // ��ٱ��� ��ü �ݾ� ȣ��
        map.put("list", list);                // ��ٱ��� ������ map�� ����
        map.put("count", list.size());        // ��ٱ��� ��ǰ�� ����
        map.put("sumMoney", sumMoney);        // ��ٱ��� ��ü �ݾ�
        mv.setViewName("shoppingBasket/shoppingBasket_list");  
        mv.addObject("map", map);            // map ���� ����
        return mv;
    }

    // 3. ��ٱ��� ����
	@RequestMapping(value="/shoppingBasket_proc_delete.do",method=RequestMethod.GET)
    public String delete(String bno){
    	ShoppingBasketService.delete(bno);
        return "redirect:/shoppingBasket_list.do";
    }

    // 4. ��ٱ��� ����
    @RequestMapping("update.do")
    public String update(int[] bcount, int[] gno, HttpSession session) {
        // session�� id
        String email = (String) session.getAttribute("email");
        // ���ڵ��� ���� ��ŭ �ݺ��� ����
        for(int i=0; i<gno.length; i++){
        	basketVO vo = new basketVO();
            vo.setEmail(email);
            vo.setBcount(bcount[i]);
            ShoppingBasketService.modifyCart(vo);
        }

        return "redirect:/shoppingBasket/shoppingBasket_list.do";
    }
}
