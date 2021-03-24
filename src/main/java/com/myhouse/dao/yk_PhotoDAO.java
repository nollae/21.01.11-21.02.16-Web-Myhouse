package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;

public class yk_PhotoDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.photo";
	
	/**
	 * 사진 조회수 업데이트
	 */
	public void getUpdatehits(String pno) {
		sqlSession.update(namespace+".updatehits",pno);
	}
	/**
	 * 사진게시물 내용
	 */
	public PhotoVO content(String pno) {
		return sqlSession.selectOne(namespace+".content",pno);
	}
	/**
	 * 사진 작성자 정보
	 */
	public MemberVO getWriterInfo(String pno) {
		return sqlSession.selectOne(namespace+".getwriterinfo",pno);
	}
	
	/**
	 * 작성자 사진 리스트
	 */
	public ArrayList<PhotoVO> getPhoto(String pno) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".getphotos",pno);
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * 사진 수정
	 */
	public boolean getUpdate(PhotoVO vo) {
		boolean result = false;
		int val = sqlSession.update(namespace + ".update", vo);
		if (val != 0)
			result = true;
		return result;
	}
	/**
	 * 사진 삭제 
	 */
	public int getDelete(String pno) {
		return sqlSession.delete(namespace+".getdelete", pno);
	}
	
	/**
	 * 작성자 여부
	 */
	public int getWriter(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace+".getwriter", param);
	}
}
