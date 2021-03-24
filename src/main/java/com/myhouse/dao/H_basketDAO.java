package com.myhouse.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.basketVO;

public class H_basketDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace="mapper.basket";	
	
		  // 1. 장바구니 추가
	    public boolean insert(String email, String[] gnolist, String[] bcountlist) {
	    	boolean result = false;
			
			Map<String, Object> order_param = new HashMap<String, Object>();
			
			order_param.put("email", email);           
			
			for(int i=0;i<gnolist.length;i++) {
				
				String gno = gnolist[i]; 
				String bcount =bcountlist[i]; 

				
				order_param.put("gno", gno);
				order_param.put("bcount", bcount);
				
			
				System.out.println("dao"+gno);
				System.out.println("dao"+bcount);
			}
			int value  = sqlSession.insert(namespace+".insertCart", order_param);

	    	
	    	if(value != 0) result = true;
			
			return result;
	    }
	    // 2. 장바구니 목록
	    public List<basketVO> listCart(String email) {
	        return sqlSession.selectList(namespace+".listCart", email);
	    }
	    // 3. 장바구니 삭제
	    public void delete(String bno) {
	        sqlSession.delete(namespace+".deleteCart", bno);
	    }
	    // 4. 장바구니 수정
	    public void modifyCart(basketVO vo) {
	        sqlSession.update("basket.modifyCart", vo);
	    }
	    // 5. 장바구니 금액 합계
	    public String sumMoney(String email) {
	        return sqlSession.selectOne(namespace+".sumMoney", email);
	    }
	    // 6. 장바구니 동일한 상품 레코드 확인
	    public int countCart(String gno, String email) {
	        Map<String, String> map = new HashMap<String, String>();
	        System.out.println("dao:gno,email값:"+gno+","+email);
	        map.put("gno", gno);
	        map.put("email",email);
	        return sqlSession.selectOne(namespace+".countCart",map);
	    }
	    // 7. 장바구니 상품수량 변경
	    public void updateCart(basketVO vo) {
	        sqlSession.update(namespace+".updateCart", vo);
	    }
	}

	








