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
	 * ���� ������Ʈ
	 */
	public boolean getreviewupdate(reviewVO vo) {
		boolean result = false;
		
		int value = sqlSession.update(namespace+".reviewupdate",vo);
		if(value != 0)  result = true;
		return result;
	}
	
	
	
	
	/**
	 * ���� �μ�Ʈ
	 */
	public boolean getreviewinsert(reviewVO vo) {
		boolean result = false;
		
		int value = sqlSession.insert(namespace+".reviewinsert",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	/**
	 * ������� ino�� �����ҵ����Ͱ� �޾ƿ���
	 */
	public goodsVO getreviewproc1(String gno){
		goodsVO vo = sqlSession.selectOne(namespace+".reviewproc1",gno);
		System.out.println("����� �ٿ�");
		return vo;
	}
	
	/**
	 * �����ۼ� ino�� �����Ͱ� �޾ƿ���
	 */
	public goodsVO getreviewproc(String gno){
		goodsVO vo = sqlSession.selectOne(namespace+".reviewproc",gno);
		System.out.println("����� �ٿ�");
		return vo;
	}
	
		
	/**
	 * ��ũ�� �Ǵ����� ����
	 */
	public int getpscrapdelete(String pno,String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		
		return sqlSession.delete(namespace+".scrapdelete",param);
	}
	
	
	
	
	/**
	 * ��ũ�� ������ �μ�Ʈ
	 */
	public int getpicturescrap(String pno,String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		System.out.println("DAO"+pno);
		return sqlSession.insert(namespace+".picturescrap",param);
	}
	
	
	/**
	 * ��ũ�� ��������Ʈ�� ���
	 */
	public ArrayList<scrapVO> getscrap_photo(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scrapphoto",email);
		return (ArrayList<scrapVO>)list;
	}
	
	/**
	 * ��ũ�� ���� ����Ʈ �Ѱ���
	 */
	public int getscrap_house_count(String email) {
		return sqlSession.selectOne(namespace+".hcount",email);
	}
	
	/**
	 * ��ũ�� ��ǰ����Ʈ�� ���
	 */
	public ArrayList<scrapVO> getscrap_pro(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scrappro",email);
		return (ArrayList<scrapVO>)list;
	}
	
	/**
	 * ��ũ�� ��ǰ����Ʈ �Ѱ���
	 */
	public int getproduct_count(String email) {
		return sqlSession.selectOne(namespace+".productcount",email);
	}
	
	/**
	 * ��ũ�� ��� ����Ʈ �� ����
	 */
	public int getscrap_allcount(String email) {
		return sqlSession.selectOne(namespace+".scrapallcount",email);
	}
	
	
	/**
	 * ��ũ�� ��� ����Ʈ ���
	 */
	public ArrayList<scrapVO> getscrap_all(String email){
		List<scrapVO> list = sqlSession.selectList(namespace+".scraplist",email);
		return (ArrayList<scrapVO>)list;
	}
	
	
	
	/**
	 * �������� ����
	 */
	public noticeVO getnoticecontent(String nno) {
		noticeVO vo = sqlSession.selectOne(namespace+".noticecontent",nno);
		return vo;
	}
	
	
	/**
	 * ��������
	 */
	public ArrayList<noticeVO> getnotice(){
		List<noticeVO> list = sqlSession.selectList(namespace+".notice");
		return (ArrayList<noticeVO>)list;
	}
	
	
	/**
	 * ����Ȱ�� ����Ʈ
	 */
	public ArrayList<likeVO> getlactivity(String email){
		List<likeVO> list = sqlSession.selectList(namespace+".lactivity",email);
		return (ArrayList<likeVO>)list;
	}
	
	/**
	 * �Ǹ��� ��ǰ ����
	 */
	public int getpanmecount(String email) {
		return sqlSession.selectOne(namespace+".panmecount",email);
	}
	
	
	
	/**
	 * �Ǹ�Ȱ������ ����Ʈ
	 */
	public ArrayList<interiorVO> getpanme(String email){
		List<interiorVO> list = sqlSession.selectList(namespace+".panme",email);
		return (ArrayList<interiorVO>)list;
	}
	
	
	/**
	 * LIKE ���ƿ� ����
	 */
	public int getlikedelete(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("email", email);
		return sqlSession.delete(namespace+".plikedelete",param);
	}
	
	
	/**
	 * LIKE ���ƿ� ����
	 */
	public int getlikeinsert(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("email", email);
		param.put("pno", pno);
		return  sqlSession.insert(namespace+".plike",param);
	}
	
	
	/**
	 * �г��� �ٲٱ�
	 */
	public String getnickname(String nickname) {
		return sqlSession.selectOne(namespace+".nickname",nickname);
	}
	
	
	/**
	 * �����ۼ� ������(���� ������ ��ǰ �� ī��Ʈ)
	 */
	public int getreviewcount(String email) {
		return sqlSession.selectOne(namespace+".reviewcount",email);
	}
	
	
	/**
	 * �����ۼ� ������(���� ������ ��ǰ ����Ʈ)
	 */
	public ArrayList<goodsVO> getreviewpage(String email){
		List<goodsVO> list = sqlSession.selectList(namespace+".reviewpage",email);
		
		return (ArrayList<goodsVO>)list;
	}
	
	
	
	
	/**
	 * ���Ǵ亯(����ǰ�� ������ �亯�� �Ѱ���)
	 */
	public int getqnacount(String email) {
		return sqlSession.selectOne(namespace+".qnacount",email);
	}
	
	
	/**
	 * ���Ǵ亯(����Ȱ�� ����ǰ�� �����Ѱ� �亯����Ʈ)
	 */
	public ArrayList<questionVO> getqna(String email){
		List<questionVO> list = sqlSession.selectList(namespace+".qna",email);
		
		return (ArrayList<questionVO>)list;
		
	}
	
	/**
	 * ���ǹ��� ����Ʈ �Ѱ���
	 */
	public int getquestlcount(String email) {
		return sqlSession.selectOne(namespace+".questlcount",email);
	}
	
	/**
	 * ���ǹ��� ����Ʈ(�ƹ� ��ǰ�̳� ���� ������ ����Ʈ)
	 */
	public ArrayList<questionVO> getquestlist(String email){
		List<questionVO> list = sqlSession.selectList(namespace+".questlist",email);
		
		return (ArrayList<questionVO>)list;
	}
	
	
	/**
	 * ��й�ȣ �����ϱ�
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
	 * ���� ����Ʈ �������� (�ֽż�)
	 */
	public ArrayList<reviewVO> getreview1(String email){
		List<reviewVO> list = sqlSession.selectList(namespace+".review1",email);
		return (ArrayList<reviewVO>)list;
	}
	
	/**
	 * ���� �� ���� �� ī��Ʈ
	 */
	public int getreviewcount1(String email) {
		return sqlSession.selectOne(namespace+".reviewcount1",email);
	}
	
	
	
	/**
	 * ���� ����Ʈ ��������(����Ʈ��)
	 */
	public ArrayList<reviewVO> getreview(String email){
		List<reviewVO> list = sqlSession.selectList(namespace+".review",email);
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * ȸ������ ����ó���ϱ�
	 */
	public boolean getOptionUpdate(MemberVO vo) { //������ MemberVo vo
		boolean result = false;
		System.out.println("�ٿ�����");
		
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
	 * ȸ���������� ��������
	 */
	public MemberVO getoption(String email) {
		MemberVO ovo = sqlSession.selectOne(namespace+".option",email);
		return ovo;
	}
	
	
	/**
	 * ���ƿ��� ���� ��������
	 */
	public ArrayList<PhotoVO> getlike(String email){
		List<PhotoVO> list = sqlSession.selectList(namespace+".likelist",email);
		return (ArrayList<PhotoVO>)list;
	}
	
	
	/**
	 *  �ֹ����� ����Ʈ ��������
	 */
	public ArrayList<interiorVO> getorder(String email){
		List<interiorVO> list = sqlSession.selectList(namespace+".orderlist",email);
		return (ArrayList<interiorVO>)list;
	}
	
	/**
	 *  �ֹ����� �� ����
	 */
	public int getordercount(String email) {
		return sqlSession.selectOne(namespace+".ordercount",email);
	}
	
	
	/**
	 * ������ �г���,�ȷο�,�ȷ��� ��������
	 */
	public MemberVO getprofile(String email) {
		MemberVO prof = sqlSession.selectOne(namespace+".profile",email);
		System.out.println(prof.getNickname());
		System.out.println(prof.getMember_spimage());
		return prof;
	}
	
	/**
	 * �ȷο� �ȷο� ī��Ʈ
	 */
	public int getfcount(String email) {
		int fcount = sqlSession.selectOne(namespace+".fcount",email);
		System.out.println("�ȷο�"+fcount);
		return fcount;
		
	}
	
	/**
	 * �ȷο� �ȷ��� ī��Ʈ
	 */
	public int getfcount1(String email) {
		int fcount1 = sqlSession.selectOne(namespace+".fcount1",email);
		System.out.println("�ȷο�"+fcount1);
		return fcount1;
		
	}
	
	
	
	
	/**
	 * ���� �ҷ�����(����)
	 */
	public ArrayList<PhotoVO> getpicture(String email) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".picture",email);
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * ���� �Ѱ��� ��������(��κ���)
	 */
	public int getphotocount(String email) {
		return sqlSession.selectOne(namespace+".photocount",email);
	}
	
	/**
	 * ��ũ�� �Ѱ��� �������� (��κ���)
	 */
	public int getscrapcount(String email) {
		return sqlSession.selectOne(namespace+".scrapcount",email);
	}
	
	
	
	/**
	 * ���ƿ� �Ѱ��� ������� (��κ���)
	 */
	public int getlikecount(String email) {
		return sqlSession.selectOne(namespace+".likecount",email);
	}
	
	
	/**
	 * ���ƿ� ���� �������� (���� �������� pno )
	 */
	public int getplikecount(String pno) {
		return sqlSession.selectOne(namespace+".plikecount",pno);
	}
	
	/**
	 * ��ũ�� ���� �������� (���� �������� pno )
	 */
	/*
	 * public int getpscrapcount(String pno) { return
	 * sqlSession.selectOne(namespace+".pscrapcount",pno); }
	 */
	
	
	/**
	 * ���� ����Ʈ �ҷ�����(��κ���)
	 */
	public ArrayList<PhotoVO> getphotolist(String email){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist",email);
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
	/**
	 * ȸ��Ż�� 
	 */
	public boolean getmemberdelete(String email) {
		boolean result= false;
		int value = sqlSession.delete(namespace+".memberdelete",email);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	
}
