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
	 *  select : email 입력 시 회원정보 모두 가져옴 
	 */
	public MemberVO getMemberInfo(String email) {
		return sqlSession.selectOne(namespace+".getInfoAll", email);
	}
	/**
	 *  update : seller 업데이트 1로
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
	 *  update : seller 업데이트 0으로
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
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".memberlistcount");
	}
	
	/**
	 * 전체사진 리스트 (최신인기순)
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
	 *  update : 공지사항 업데이트
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
	 *  update : 공지사항 업데이트
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
	 *  select : nid 입력 시 회원정보 가져옴 
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
	 * Insert : 네이버 첫 로그인 시 정보 저장 
	 */
	public boolean getInsert2(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".naverinsert", vo);
		if(value!=0) result=true;
		return result;
	}
	/**
	 *  select : naverId 입력 시 회원정보 가져옴 
	 */
	public SessionVO getInfo(String naverId) {
		return sqlSession.selectOne(namespace+".getinfo2", naverId);
	}
	/**
	 *  select : 이메일 입력 시 회원사진정보 가져옴 
	 */
	public String getProfile(String email) {
		return sqlSession.selectOne(namespace+".getprofile", email);
	}
	
	/**
	 *  select : 이메일 입력 시 회원 정보 가져옴 
	 */
	public String getPass(String email) {
		return sqlSession.selectOne(namespace+".getinfo", email);
	}
	
	/**
	 *   회원가입 - 아이디 중복체크l
	 */
	public int getIdCheck(String email) {
		return sqlSession.selectOne(namespace+".idcheck", email);
	}
		
	/**
	 * Select 로그인
	 */
	public SessionVO getLogin(MemberVO vo) {
		 return sqlSession.selectOne(namespace +".login",vo);
	}
	 
	
	/**
	 * Insert : 회원가입 
	 */
	public boolean getInsert(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".insert", vo);
		if(value!=0) result=true;
		return result;
	}
	
	
}
