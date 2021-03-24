package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.photo_commentVO;

public class photo_commentDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.photocomment";

	/** 댓글 개수 **/
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace + ".count", pno);
	}

	/** 답글 개수 **/
	public int getRecount(String pno) {
		return sqlSession.selectOne(namespace + ".re_count", pno);
	}

	/** 댓글 **/
	public ArrayList<photo_commentVO> getList(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		
		List<photo_commentVO> list = sqlSession.selectList(namespace + ".list", param);
		return (ArrayList<photo_commentVO>) list;
	}
	
	/**댓글 작성**/
	public int getWrite(String pno,String content, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("content", content);
		param.put("email", email);
		return sqlSession.insert(namespace+".getwrite", param);
	}
	
	/**답글 작성**/
	public int getReplyWrite(String pno, String tag, String content, String cgroup, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("tag", tag);
		param.put("content", content);
		param.put("cgroup", cgroup);
		param.put("email", email);
		return sqlSession.insert(namespace+".getreplywrite", param);
	}
	
	/**자식 댓글이 있는 댓글 삭제 **/
	public int getUpdate(String cno) {
		return sqlSession.update(namespace+".getupdate",cno);
	}
	
	/**댓글 삭제**/
	public int getDelete(String cno) {
		return sqlSession.delete(namespace+".getdelete",cno);
	}
	
	/**댓글 좋아요**/
	public int getCommentLike(String cno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("cno", cno);
		param.put("email", email+",");
		return sqlSession.update(namespace+".getcommentlike", param);
	}
	
	/**댓글 좋아요취소**/
	public int getDeleteCommentLike(String cno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("cno", cno);
		param.put("email", email+",");
		return sqlSession.update(namespace+".getdeletecommentlike", param);
	}

}
