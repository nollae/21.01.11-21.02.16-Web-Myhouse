package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.interiorVO;

public class yk_interiorDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.ykinterior";
	
	public boolean getInsert(interiorVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace + ".insert", vo);
		if (value != 0)
			result = true;
		return result;
	} 
}
