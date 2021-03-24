package com.myhouse.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class yk_likeDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.like";
	
	/**
	 * ���ƿ� ����
	 */
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace+".countlike",pno);
	}
	
	/**
	 * ���ƿ� 
	 */
	public int getInsert(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.insert(namespace+".getinsert",param);
	}
	
	/**
	 * ���ƿ� ��� 
	 */
	public int getDelete(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.delete(namespace+".getdelete",param);
	}
	
	/**
	 * ���ƿ俩�� 
	 */
	public int getLike(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace+".getlike",param);
	}
}
