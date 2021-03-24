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
	 * 좋아요 갯수
	 */
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace+".countlike",pno);
	}
	
	/**
	 * 좋아요 
	 */
	public int getInsert(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.insert(namespace+".getinsert",param);
	}
	
	/**
	 * 좋아요 취소 
	 */
	public int getDelete(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.delete(namespace+".getdelete",param);
	}
	
	/**
	 * 좋아요여부 
	 */
	public int getLike(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace+".getlike",param);
	}
}
