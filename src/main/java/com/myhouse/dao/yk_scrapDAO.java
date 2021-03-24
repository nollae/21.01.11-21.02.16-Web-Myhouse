package com.myhouse.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class yk_scrapDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.scrap";
	
	/**
	 * ��ũ�� ����
	 */
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace+".countscrap",pno);
	}
	
	/**
	 * ��ũ��
	 */
	public int getInsert(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.insert(namespace+".getinsert",param);
	}
	
	/**
	 * ��ũ�� ��� 
	 */
	public int getDelete(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.delete(namespace+".getdelete",param);
	}
	
	/**
	 * ��ũ�� ���� 
	 */
	public int getScrap(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace+".getscrap",param);
	}
}
