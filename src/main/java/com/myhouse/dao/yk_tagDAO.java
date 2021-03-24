package com.myhouse.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.tagVO;

public class yk_tagDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.yktag";
	
	public int tagCount(String pno) {
		return sqlSession.selectOne(namespace+".tagcount",pno);
	}
	
	public ArrayList<tagVO> tagList(String pno){
		List<tagVO> list = sqlSession.selectList(namespace+".taglist",pno);
		return (ArrayList<tagVO>) list;
	}
	/**
	 * 태그 넣기
	 */
	public boolean getInsertTag(String pno, String ptags) {
		Map<String,String> param = new HashMap<String,String>();
		boolean dao_result =false;			
	
		List<String> ptag = Arrays.asList(ptags.split(","));
			
		for(String gno:ptag) {
			param.put("pno", String.valueOf(pno));
			param.put("gno", String.valueOf(gno));
			
			System.out.println(param.get("pno")); 
			System.out.println(param.get("gno"));
		
			int result = sqlSession.insert(namespace+".inserttag",param);
			if(result != 0) {
				dao_result = true;
			}
		}
		return dao_result;
	}
	
	/**
	 * 태그 삭제
	 */
	public boolean getDeleteTag(String pno) {
		int result = sqlSession.delete(namespace+".deletetag",pno);
		if(result == 0) return false;
		else return true;
	}
		
}
