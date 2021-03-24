package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.StoreIndexVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.noticeVO;

public class yj_InteriorDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.interior2";
	
	/**
	 *  select : email 입력 시 회원정보 모두 가져옴 
	 */
	public ArrayList<interiorVO> getInteriorInfo(String email) {
		List<interiorVO> interior_list =sqlSession.selectList(namespace+".getInfoAll3", email);
		return (ArrayList<interiorVO>) interior_list;
	}
	
	// 관리자페이지 - 스토어 인테리어 리스트 카운트
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".admin_interior_list_count");
	}
	
	// 관리자페이지 - 스토어 인테리어 리스트
		public ArrayList<interiorVO> getInteriorList3(int start, int end){
			Map<String, String> param = new HashMap<String, String>();
			param.put("start1",String.valueOf(start));
			param.put("end1",String.valueOf(end));
			List<interiorVO> interior_list = sqlSession.selectList(namespace+".admin_interior_list",param);
			return (ArrayList<interiorVO>) interior_list;
		} 
	
	// index페이지 - 인테리어 리스트
		public ArrayList<StoreIndexVO> getInteriorList2(){
			List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".index_interior_list");
			return (ArrayList<StoreIndexVO>)interior_list;
		} 
		
	// store_index - list
	public ArrayList<StoreIndexVO> getInteriorList(String value){
		List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".list1", value);
		return (ArrayList<StoreIndexVO>)interior_list;
	} 
	
}
