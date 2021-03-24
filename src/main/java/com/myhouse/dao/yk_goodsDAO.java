package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.goodsVO;

public class yk_goodsDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.ykgoods";
	
	public boolean getInsert(goodsVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace + ".insert", vo);
		if (value != 0)
			result = true;
		return result;
	}
	
	public ArrayList<goodsVO> getGoodsList(String gname){
		List<goodsVO> list = sqlSession.selectList(namespace+".getlist", gname);
		return (ArrayList<goodsVO>) list;
	}
}
