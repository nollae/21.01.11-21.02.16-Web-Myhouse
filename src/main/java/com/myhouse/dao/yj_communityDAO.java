package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.CommunityVO;
import com.myhouse.vo.PhotoVO;

public class yj_communityDAO  extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.community2";
	
	/**
	 *  select : email 입력 시 회원정보 모두 가져옴 
	 */
	public ArrayList<PhotoVO> getCoummunityInfo(String email) {
		List<PhotoVO> interior_list =sqlSession.selectList(namespace+".getInfoAll2", email);
		return (ArrayList<PhotoVO>) interior_list;
	}
	/**
	 * 전체사진 리스트 (최신인기순)
	 */
	public ArrayList<CommunityVO> getList2(){
		List<CommunityVO> list = sqlSession.selectList(namespace+".index_community_list");
		return (ArrayList<CommunityVO>) list;
	}
	
	/**
	 * 전체사진 리스트 (최신인기순)
	 */
	public ArrayList<CommunityVO> getList(String value){
		List<CommunityVO> list = sqlSession.selectList(namespace+".list22",value);
		return (ArrayList<CommunityVO>) list;
	}
	
	
}
