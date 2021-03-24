package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhouse.dao.H_basketDAO;
import com.myhouse.vo.basketVO;


@Service("ShoppingBasketService")
public class ShoppingBasketImpl {
	@Autowired	
	private H_basketDAO basketDAO; 
	
	// 1. 장바구니 추가
    public String insert(String email, String[] gnolist, String[] bcountlist) {
    	String result= "";
		boolean dao_result = basketDAO.insert(email, gnolist, bcountlist);
		System.out.println("service====>" +email);
		System.out.println("service====>" +gnolist);
		System.out.println("service====>" +bcountlist);
		
		/*
		 * String gnolist1 ="&gno="; String ocountlist1 ="&ocount=";
		 * 
		 * for(int i=0; i<gnolist.length; i++) { gnolist1 += gnolist[i]; } for(int i=0;
		 * i<ocountlist.length; i++) { ocountlist1 += ocountlist[i]; }
		 */
		
		if(dao_result) {
			result = "redirect:/shoppingBasket_list.do";
		} else {
			System.out.println("error");
		}
		
		return result;
    }
    
    // 2. 장바구니 목록
    public List<basketVO> listCart(String email) {
        return basketDAO.listCart(email);
    }
    // 3. 장바구니 삭제
    public void delete(String bno) {
    	basketDAO.delete(bno);
    }
    // 4. 장바구니 수정
    public void modifyCart(basketVO vo) {
    	basketDAO.modifyCart(vo);
    }
    // 5. 장바구니 금액 합계
    public String sumMoney(String email) {
        return basketDAO.sumMoney(email);
    }
    // 6. 장바구니 상품 확인
    public int countCart(String gno, String email) {
        return basketDAO.countCart(gno, email);
    }
    // 7. 장바구니 상품 수량 변경
    public void updateCart(basketVO vo) {
    	basketDAO.updateCart(vo);
    }
	
}
