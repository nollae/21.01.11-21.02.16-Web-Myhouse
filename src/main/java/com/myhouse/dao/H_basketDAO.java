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
	
		  // 1. ��ٱ��� �߰�
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
	    // 2. ��ٱ��� ���
	    public List<basketVO> listCart(String email) {
	        return sqlSession.selectList(namespace+".listCart", email);
	    }
	    // 3. ��ٱ��� ����
	    public void delete(String bno) {
	        sqlSession.delete(namespace+".deleteCart", bno);
	    }
	    // 4. ��ٱ��� ����
	    public void modifyCart(basketVO vo) {
	        sqlSession.update("basket.modifyCart", vo);
	    }
	    // 5. ��ٱ��� �ݾ� �հ�
	    public String sumMoney(String email) {
	        return sqlSession.selectOne(namespace+".sumMoney", email);
	    }
	    // 6. ��ٱ��� ������ ��ǰ ���ڵ� Ȯ��
	    public int countCart(String gno, String email) {
	        Map<String, String> map = new HashMap<String, String>();
	        System.out.println("dao:gno,email��:"+gno+","+email);
	        map.put("gno", gno);
	        map.put("email",email);
	        return sqlSession.selectOne(namespace+".countCart",map);
	    }
	    // 7. ��ٱ��� ��ǰ���� ����
	    public void updateCart(basketVO vo) {
	        sqlSession.update(namespace+".updateCart", vo);
	    }
	}

	








