package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.CommunityVO;

public class CommunityDAO  extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.community";
	
	/**
	 * ��ü ����Ʈ ī��Ʈ
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".listcount");
	}
	
	/**
	 * ��ü���� ����Ʈ (�ֽ��α��) 
	 */
	public ArrayList<CommunityVO> getList(int start, int end, String email){
		Map<String, String> param = new HashMap<String, String>();
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		param.put("email", email);
		List<CommunityVO> list = sqlSession.selectList(namespace+".list", param);
		return (ArrayList<CommunityVO>) list;
	}
	
	
	/**
	 *  ����Ʈ ī��Ʈ
	 */
	public int getListCount(String order, String type, String style) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("order", order);
		param.put("type", type);
		param.put("style", style);
		return sqlSession.selectOne(namespace+".listcountajax",param);
	}
	
	/**
	 * ����Ʈ(ī�װ�)
	 */
	public ArrayList<CommunityVO> getSortList(String order, String type, String style, int start, int end, String email){
		Map<String, String> param = new HashMap<String, String>();
		param.put("order", order);
		param.put("type", type);
		param.put("style", style);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		param.put("email", email);
		List<CommunityVO> list = sqlSession.selectList(namespace+".sortlist", param);
		return (ArrayList<CommunityVO>) list;
	}
	
	
}
