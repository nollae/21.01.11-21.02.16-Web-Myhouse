package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.likeVO;
import com.myhouse.vo.noticeVO;
import com.myhouse.vo.questionVO;
import com.myhouse.vo.reviewVO;
import com.myhouse.vo.scrapVO;

public class MypagePhotoDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace="mapper.photo2";

	
	
	/**
	 * 리뷰 업데이트
	 */
	public boolean getreviewupdate(reviewVO vo) {
		boolean result = false;
		
		int value = sqlSession.update(namespace+".reviewupdate",vo);
		if(value != 0)  result = true;
		return result;
	}
	
	
	
	
	/**
	 * 리뷰 인서트
	 */
	public boolean getreviewinsert(reviewVO vo) {
		boolean result = false;
		
		int value = sqlSession.insert(namespace+".reviewinsert",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	/**
	 * 리뷰수정 ino로 수정할데이터값 받아오기
	 */
	public goodsVO getreviewproc1(String gno){
		goodsVO vo = sqlSession.selectOne(namespace+".reviewproc1",gno);
		System.out.println("여기는 다오");
		return vo;
	}
	
	/**
	 * 리뷰작성 ino로 데이터값 받아오기
	 */
	public goodsVO getreviewproc(String gno){
		goodsVO vo = sqlSession.selectOne(namespace+".reviewproc",gno);
		System.out.println("여기는 다오");
		return vo;
	}
	
		
	/**
	 * 스크랩 또누를시 삭제
	 */
	public int getpscrapdelete(String pno,String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		
		return sqlSession.delete(namespace+".scrapdelete",param);
	}
	
	
	
	
	/**
	 * 스크랩 누를시 인서트
	 */
	public int getpicturescrap(String pno,String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		System.out.println("DAO"+pno);
		return sqlSession.insert(namespace+".picturescrap",param);
	}
	
	
	/**
	 * 스크랩 사진리스트만 출력
	 */
	public ArrayList<scrapVO> getscrap_photo(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scrapphoto",email);
		return (ArrayList<scrapVO>)list;
	}
	
	/**
	 * 스크랩 사진 리스트 총갯수
	 */
	public int getscrap_house_count(String email) {
		return sqlSession.selectOne(namespace+".hcount",email);
	}
	
	/**
	 * 스크랩 상품리스트만 출력
	 */
	public ArrayList<scrapVO> getscrap_pro(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scrappro",email);
		return (ArrayList<scrapVO>)list;
	}
	
	/**
	 * 스크랩 상품리스트 총갯수
	 */
	public int getproduct_count(String email) {
		return sqlSession.selectOne(namespace+".productcount",email);
	}
	
	/**
	 * 스크랩 모든 리스트 총 갯수
	 */
	public int getscrap_allcount(String email) {
		return sqlSession.selectOne(namespace+".scrapallcount",email);
	}
	
	
	/**
	 * 스크랩 모든 리스트 출력
	 */
	public ArrayList<scrapVO> getscrap_all(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scraplist",email);
		return (ArrayList<scrapVO>)list;
	}
	
	
	
	/**
	 * 공지사항 내용
	 */
	public noticeVO getnoticecontent(String nno) {
		noticeVO vo = sqlSession.selectOne(namespace+".noticecontent",nno);
		return vo;
	}
	
	
	/**
	 * 공지사항
	 */
	public ArrayList<noticeVO> getnotice(){
		List<noticeVO> list = sqlSession.selectList(namespace+".notice");
		return (ArrayList<noticeVO>)list;
	}
	
	
	/**
	 * 나의활동 리스트
	 */
	public ArrayList<likeVO> getlactivity(String email){
		List<likeVO> list = sqlSession.selectList(namespace+".lactivity",email);
		return (ArrayList<likeVO>)list;
	}
	
	/**
	 * 판매할 상품 갯수
	 */
	public int getpanmecount(String email) {
		return sqlSession.selectOne(namespace+".panmecount",email);
	}
	
	
	
	/**
	 * 판매활동여부 리스트
	 */
	public ArrayList<interiorVO> getpanme(String email){
		List<interiorVO> list = sqlSession.selectList(namespace+".panme",email);
		return (ArrayList<interiorVO>)list;
	}
	
	
	/**
	 * LIKE 좋아요 삭제
	 */
	public int getlikedelete(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.delete(namespace+".plikedelete",param);
	}
	
	
	/**
	 * LIKE 좋아요 증가
	 */
	public int getlikeinsert(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("email", email);
		param.put("pno", pno);
		return  sqlSession.insert(namespace+".plike",param);
	}
	
	
	/**
	 * 닉네임 바꾸기
	 */
	public String getnickname(String nickname) {
		return sqlSession.selectOne(namespace+".nickname",nickname);
	}
	
	
	/**
	 * 리뷰작성 페이지(내가 구매한 상품 총 카운트)
	 */
	public int getreviewcount(String email) {
		return sqlSession.selectOne(namespace+".reviewcount",email);
	}
	
	
	/**
	 * 리뷰작성 페이지(내가 구매한 상품 리스트)
	 */
	public ArrayList<goodsVO> getreviewpage(String email){
		List<goodsVO> list = sqlSession.selectList(namespace+".reviewpage",email);
		
		return (ArrayList<goodsVO>)list;
	}
	
	
	
	
	/**
	 * 문의답변(내물품에 문의한 답변의 총갯수)
	 */
	public int getqnacount(String email) {
		return sqlSession.selectOne(namespace+".qnacount",email);
	}
	
	
	/**
	 * 문의답변(나의활동 내물품에 문의한거 답변리스트)
	 */
	public ArrayList<questionVO> getqna(String email){
		List<questionVO> list = sqlSession.selectList(namespace+".qna",email);
		
		return (ArrayList<questionVO>)list;
		
	}
	
	/**
	 * 나의문의 리스트 총갯수
	 */
	public int getquestlcount(String email) {
		return sqlSession.selectOne(namespace+".questlcount",email);
	}
	
	/**
	 * 나의문의 리스트(아무 상품이나 내가 문의한 리스트)
	 */
	public ArrayList<questionVO> getquestlist(String email){
		List<questionVO> list = sqlSession.selectList(namespace+".questlist",email);
		
		return (ArrayList<questionVO>)list;
	}
	
	
	/**
	 * 비밀번호 변경하기
	 */
	public boolean getpasschange(String pass,String email) {
		boolean result = false;
		Map<String,String> param = new HashMap<String,String>();
		param.put("pass",pass);
		param.put("email", email);
		int value = sqlSession.update(namespace+".passchange",param);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	/**
	 * 리뷰 리스트 가져오기 (최신순)
	 */
	public ArrayList<reviewVO> getreview1(String email){
		List<reviewVO> list = sqlSession.selectList(namespace+".review1",email);
		return (ArrayList<reviewVO>)list;
	}
	
	/**
	 * 내가 쓴 리뷰 총 카운트
	 */
	public int getreviewcount1(String email) {
		return sqlSession.selectOne(namespace+".reviewcount1",email);
	}
	
	
	
	/**
	 * 리뷰 리스트 가져오기(베스트순)
	 */
	public ArrayList<reviewVO> getreview(String email){
		List<reviewVO> list = sqlSession.selectList(namespace+".review",email);
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * 회원정보 수정처리하기
	 */
	public boolean getOptionUpdate(MemberVO vo) { //원래는 MemberVo vo
		boolean result = false;
		System.out.println("다오까지");
		
		  System.out.println("DAO="+vo.getFile1());
		  System.out.println(vo.getNickname()); System.out.println(vo.getGender());
		  System.out.println(vo.getHomepage()); System.out.println(vo.getIntro());
		  System.out.println(vo.getBirth()); System.out.println("image="+vo.getMember_image());
		  System.out.println("simage="+vo.getMember_spimage()); System.out.println("file="+vo.getFile1());
		 
		 
		int value = sqlSession.update(namespace+".update",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	/**
	 * 회원정보수정 가져오기
	 */
	public MemberVO getoption(String email) {
		MemberVO ovo = sqlSession.selectOne(namespace+".option",email);
		return ovo;
	}
	
	
	/**
	 * 좋아요한 사진 가져오기
	 */
	public ArrayList<PhotoVO> getlike(String email){
		List<PhotoVO> list = sqlSession.selectList(namespace+".likelist",email);
		return (ArrayList<PhotoVO>)list;
	}
	
	
	/**
	 *  주문내역 리스트 가져오기
	 */
	public ArrayList<interiorVO> getorder(String email){
		List<interiorVO> list = sqlSession.selectList(namespace+".orderlist",email);
		return (ArrayList<interiorVO>)list;
	}
	
	/**
	 *  주문내역 총 갯수
	 */
	public int getordercount(String email) {
		return sqlSession.selectOne(namespace+".ordercount",email);
	}
	
	
	/**
	 * 프로필 닉네임,팔로워,팔로잉 가져오기
	 */
	public MemberVO getprofile(String email) {
		MemberVO prof = sqlSession.selectOne(namespace+".profile",email);
		System.out.println(prof.getNickname());
		System.out.println(prof.getMember_spimage());
		return prof;
	}
	
	/**
	 * 팔로워 팔로워 카운트
	 */
	public int getfcount(String email) {
		int fcount = sqlSession.selectOne(namespace+".fcount",email);
		System.out.println("팔로워"+fcount);
		return fcount;
		
	}
	
	/**
	 * 팔로워 팔로잉 카운트
	 */
	public int getfcount1(String email) {
		int fcount1 = sqlSession.selectOne(namespace+".fcount1",email);
		System.out.println("팔로워"+fcount1);
		return fcount1;
		
	}
	
	
	
	
	/**
	 * 사진 불러오기(사진)
	 */
	public ArrayList<PhotoVO> getpicture(String email) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".picture",email);
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * 사진 총갯수 가져오기(모두보기)
	 */
	public int getphotocount(String email) {
		return sqlSession.selectOne(namespace+".photocount",email);
	}
	
	/**
	 * 스크랩 총갯수 가져오기 (모두보기)
	 */
	public int getscrapcount(String email) {
		return sqlSession.selectOne(namespace+".scrapcount",email);
	}
	
	
	
	/**
	 * 좋아요 총갯수 가져요기 (모두보기)
	 */
	public int getlikecount(String email) {
		return sqlSession.selectOne(namespace+".likecount",email);
	}
	
	
	/**
	 * 좋아요 갯수 가져오기 (각각 사진별로 pno )
	 */
	public int getplikecount(String pno) {
		return sqlSession.selectOne(namespace+".plikecount",pno);
	}
	
	/**
	 * 스크랩 갯수 가져오기 (각각 사진별로 pno )
	 */
	/*
	 * public int getpscrapcount(String pno) { return
	 * sqlSession.selectOne(namespace+".pscrapcount",pno); }
	 */
	
	
	/**
	 * 사진 리스트 불러오기(모두보기)
	 */
	public ArrayList<PhotoVO> getphotolist(String email){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist",email);
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
	/**
	 * 회원탈퇴 
	 */
	public boolean getmemberdelete(String email) {
		boolean result= false;
		int value = sqlSession.delete(namespace+".memberdelete",email);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	
}
