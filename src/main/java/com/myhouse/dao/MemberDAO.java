package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.noticeVO;

public class MemberDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.member";
	
	/**
	 *  select : email �Է� �� ȸ������ ��� ������ 
	 */
	public MemberVO getMemberInfo(String email) {
		return sqlSession.selectOne(namespace+".getInfoAll", email);
	}
	/**
	 *  update : seller ������Ʈ 1��
	 */
	public boolean sellerUpdate2(String[] emails) {
		boolean result=true;
		for(String email:emails) {
			if(sqlSession.update(namespace+".sellerUpdate1",email)==0) {
				result=false;
			}
			
		}
		return result;
	}
	/**
	 *  update : seller ������Ʈ 0����
	 */
	public boolean sellerUpdate(String[] emails) {
		boolean result=true;
		for(String email:emails) {
			if(sqlSession.update(namespace+".sellerUpdate0",email)==0) {
				result=false;
			}
			
		}
		return result;
	}
	
	
	/**
	 * ��ü ����Ʈ ī��Ʈ
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".memberlistcount");
	}
	
	/**
	 * ��ü���� ����Ʈ (�ֽ��α��)
	 */
	public ArrayList<MemberVO> getMemberList(int start, int end){
		Map<String, String> param = new HashMap<String, String>();
		
		String str_start=String.valueOf(start);
		String str_end=String.valueOf(end);
		param.put("start",str_start);
		param.put("end",str_end);
		
		List<MemberVO> list = sqlSession.selectList(namespace+".memberlist", param);
		return (ArrayList<MemberVO>) list;
	}
	
	/**
	 *  update : �������� ������Ʈ
	 */
	public boolean stateUpdate2(String[] inos) {
		boolean result=true;
		for(String ino:inos) {
			if(sqlSession.update(namespace+".stateUpdate1",ino)==0) {
				result=false;
			}
			
		}
		return result;
	}
	/**
	 *  update : �������� ������Ʈ
	 */
	public boolean stateUpdate(String[] inos) {
		boolean result=true;
		for(String ino:inos) {
			if(sqlSession.update(namespace+".stateUpdate0",ino)==0) {
				result=false;
			}
			
		}
		return result;
	}
	/**
	 *  select : nid �Է� �� ȸ������ ������ 
	 */
	public ArrayList<MemberVO> getInfo2(ArrayList<interiorVO> list) {
		ArrayList<MemberVO> mlist=new ArrayList<MemberVO>();
		for(interiorVO vo:list) {
			String email=vo.getEmail();
			mlist.add((MemberVO)sqlSession.selectOne(namespace+".getinfo3", email));
		}
		return mlist;
	}
	/**
	 * Insert : ���̹� ù �α��� �� ���� ���� 
	 */
	public boolean getInsert2(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".naverinsert", vo);
		if(value!=0) result=true;
		return result;
	}
	/**
	 *  select : naverId �Է� �� ȸ������ ������ 
	 */
	public SessionVO getInfo(String naverId) {
		return sqlSession.selectOne(namespace+".getinfo2", naverId);
	}
	/**
	 *  select : �̸��� �Է� �� ȸ���������� ������ 
	 */
	public String getProfile(String email) {
		return sqlSession.selectOne(namespace+".getprofile", email);
	}
	
	/**
	 *  select : �̸��� �Է� �� ȸ�� ���� ������ 
	 */
	public String getPass(String email) {
		return sqlSession.selectOne(namespace+".getinfo", email);
	}
	
	/**
	 *   ȸ������ - ���̵� �ߺ�üũl
	 */
	public int getIdCheck(String email) {
		return sqlSession.selectOne(namespace+".idcheck", email);
	}
		
	/**
	 * Select �α���
	 */
	public SessionVO getLogin(MemberVO vo) {
		 return sqlSession.selectOne(namespace +".login",vo);
	}
	 
	
	/**
	 * Insert : ȸ������ 
	 */
	public boolean getInsert(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".insert", vo);
		if(value!=0) result=true;
		return result;
	}
	
	
}
