package com.myhouse.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class yk_MemberDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.ykmember";

	/**
	 * ÆÇ¸ÅÀÚ½ÅÃ»
	 */
	public int updateSeller(String email) {
		return sqlSession.update(namespace+".updateseller", email);
	}

	/**
	 * ÆÈ·Î¿ì
	 */
	public int insertFollow(String w_email, String email) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("w_email", w_email);
		param.put("email", email + ",");
		return sqlSession.update(namespace + ".insertfollow", param);
	}

	/**
	 * ÆÈ·ÎÀ×
	 */
	public int insertFollowing(String w_email, String email) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("w_email", w_email + ",");
		param.put("email", email);
		return sqlSession.update(namespace + ".insertfollowing", param);
	}

	/**
	 * ÆÈ·Î¿ì Ãë¼Ò
	 */
	public int delFollow(String w_email, String email) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("w_email", w_email);
		param.put("email", email + ",");
		return sqlSession.update(namespace + ".delfollow", param);
	}

	/**
	 * ÆÈ·ÎÀ× Ãë¼Ò
	 */
	public int delFollowing(String w_email, String email) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("w_email", w_email + ",");
		param.put("email", email);
		return sqlSession.update(namespace + ".delfollowing", param);
	}

	/**
	 * ÆÈ·Î¿ì ¿©ºÎ
	 */
	public String getFollow(String pno, String email) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace + ".getfollow", param);
	}
}
