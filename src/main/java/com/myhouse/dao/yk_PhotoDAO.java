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
	 * ���� ��ȸ�� ������Ʈ
	 */
	public void getUpdatehits(String pno) {
		sqlSession.update(namespace+".updatehits",pno);
	}
	/**
	 * �����Խù� ����
	 */
	public PhotoVO content(String pno) {
		return sqlSession.selectOne(namespace+".content",pno);
	}
	/**
	 * ���� �ۼ��� ����
	 */
	public MemberVO getWriterInfo(String pno) {
		return sqlSession.selectOne(namespace+".getwriterinfo",pno);
	}
	
	/**
	 * �ۼ��� ���� ����Ʈ
	 */
	public ArrayList<PhotoVO> getPhoto(String pno) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".getphotos",pno);
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * ���� ����
	 */
	public boolean getUpdate(PhotoVO vo) {
		boolean result = false;
		int val = sqlSession.update(namespace + ".update", vo);
		if (val != 0)
			result = true;
		return result;
	}
	/**
	 * ���� ���� 
	 */
	public int getDelete(String pno) {
		return sqlSession.delete(namespace+".getdelete", pno);
	}
	
	/**
	 * �ۼ��� ����
	 */
	public int getWriter(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.selectOne(namespace+".getwriter", param);
	}
}
