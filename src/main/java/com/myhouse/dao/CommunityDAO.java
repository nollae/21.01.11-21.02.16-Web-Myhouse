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
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".listcount");
	}
	
	/**
	 * 전체사진 리스트 (최신인기순) 
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
	 *  리스트 카운트
	 */
	public int getListCount(String order, String type, String style) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("order", order);
		param.put("type", type);
		param.put("style", style);
		return sqlSession.selectOne(namespace+".listcountajax",param);
	}
	
	/**
	 * 리스트(카테고리)
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
