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
	 *  update : 공지사항 업데이트
	 */
	public boolean getUpdate(noticeVO vo) {
		boolean result= false;
		int value = sqlSession.update(namespace+".noticeupdate1",vo);
		if(value != 0 ) result = true;
		return result;
	}
	
	/**
	 *  Insert : 공지사항 글쓰기
	 */
	public boolean noticeInsert(noticeVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".noticeinsert",vo);
		if(value != 0) result = true;
		return result;
	}
	/**
	 * 공지사항 삭제 
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
	 * 상세페이지
	 */
	public noticeVO getDetail(String nno) {
		noticeVO vo=(noticeVO)sqlSession.selectOne(namespace+".getDetail1", nno);
		
		return vo;
	}
	/**
	 * 전체 리스트 
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
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".listcount2");
	}
}
