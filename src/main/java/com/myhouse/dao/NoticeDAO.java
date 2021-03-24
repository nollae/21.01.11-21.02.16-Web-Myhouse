package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.CommunityVO;
import com.myhouse.vo.noticeVO;

public class NoticeDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.notice";
	
	
	
	/**
	 *  update : �������� ������Ʈ
	 */
	public boolean getUpdate(noticeVO vo) {
		boolean result= false;
		int value = sqlSession.update(namespace+".noticeupdate1",vo);
		if(value != 0 ) result = true;
		return result;
	}
	
	/**
	 *  Insert : �������� �۾���
	 */
	public boolean noticeInsert(noticeVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".noticeinsert",vo);
		if(value != 0) result = true;
		return result;
	}
	/**
	 * �������� ���� 
	 */
	public boolean noticeDelete(String[] nnos) {
		boolean result = false;
		int value =0;
		for(String nno : nnos) {
			int value1 = sqlSession.delete(namespace+".noticedelete",nno);
			if(value1==0)value=0;
		}
		if(value != 0) result = true;
		return result;
	}
	/**
	 * ��������
	 */
	public noticeVO getDetail(String nno) {
		noticeVO vo=(noticeVO)sqlSession.selectOne(namespace+".getDetail1", nno);
		
		return vo;
	}
	/**
	 * ��ü ����Ʈ 
	 */
	public ArrayList<noticeVO> getList(int start, int end){
		Map<String, String> param = new HashMap<String, String>();
		
		String str_start=String.valueOf(start);
		String str_end=String.valueOf(end);
		param.put("start1",str_start);
		param.put("end1",str_end);
		
		List<noticeVO> list = sqlSession.selectList(namespace+".list2", param);
		return (ArrayList<noticeVO>) list;
	}
	
	/**
	 * ��ü ����Ʈ ī��Ʈ
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".listcount2");
	}
}
