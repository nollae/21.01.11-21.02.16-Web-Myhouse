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

	/** ��� ���� **/
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace + ".count", pno);
	}

	/** ��� ���� **/
	public int getRecount(String pno) {
		return sqlSession.selectOne(namespace + ".re_count", pno);
	}

	/** ��� **/
	public ArrayList<photo_commentVO> getList(String pno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		
		List<photo_commentVO> list = sqlSession.selectList(namespace + ".list", param);
		return (ArrayList<photo_commentVO>) list;
	}
	
	/**��� �ۼ�**/
	public int getWrite(String pno,String content, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("content", content);
		param.put("email", email);
		return sqlSession.insert(namespace+".getwrite", param);
	}
	
	/**��� �ۼ�**/
	public int getReplyWrite(String pno, String tag, String content, String cgroup, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("tag", tag);
		param.put("content", content);
		param.put("cgroup", cgroup);
		param.put("email", email);
		return sqlSession.insert(namespace+".getreplywrite", param);
	}
	
	/**�ڽ� ����� �ִ� ��� ���� **/
	public int getUpdate(String cno) {
		return sqlSession.update(namespace+".getupdate",cno);
	}
	
	/**��� ����**/
	public int getDelete(String cno) {
		return sqlSession.delete(namespace+".getdelete",cno);
	}
	
	/**��� ���ƿ�**/
	public int getCommentLike(String cno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("cno", cno);
		param.put("email", email+",");
		return sqlSession.update(namespace+".getcommentlike", param);
	}
	
	/**��� ���ƿ����**/
	public int getDeleteCommentLike(String cno, String email) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("cno", cno);
		param.put("email", email+",");
		return sqlSession.update(namespace+".getdeletecommentlike", param);
	}

}
