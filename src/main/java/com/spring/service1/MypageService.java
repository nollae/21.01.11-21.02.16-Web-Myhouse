package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	
	ModelAndView getphotolist(String email); //사진리스트(모두보기)
	ModelAndView getpicture(String email); //내가올린 사진 (사진)
	ModelAndView getlike(String email); //좋아요한사진 (좋아요)
	ModelAndView getorder(String email); // 주문내역
	ModelAndView getoption(String email); // 회원정보수정
	ModelAndView getResultUpdate(Object vo); //회원정보수정처리
	ModelAndView getreview(String email); // 리뷰 리스트 불러오기(베스트순)
	ModelAndView getreview1(String email); // 리뷰 리스트 불러오기 (최신순)
	ModelAndView getpasschange(String pass,String email); // 페스워드변경
	ModelAndView getquestlist(String email);//나의문의
	ModelAndView getpanme(String email); //판매활동여부
	ModelAndView getqna(String email);//문의답변
	ModelAndView getreviewpage(String email);//리뷰작성
	String getpictureproc(String pno, String nickname);// 사진좋아요 누르면 증가
	String getpicturedelete(String pno,String email); // 사진 다시누르면 좋아요 삭제
	ModelAndView getlactivity(String email);//내가 좋아요 누른 리스트
	ModelAndView getnotice(); //공지사항 리스트
	ModelAndView getnoticecontent(String nno);//공지사항 컨텐츠
	ModelAndView getscrap_all(String email); // 스크랩 전체 리스트
	ModelAndView getscrap_pro(String email); // 스크랩 상품 리스트
	ModelAndView getscrap_photo(String email); //스크랩 사진 리스트
	String getpicturescrap(String pno,String email);//스크랩누를시 인서트
	String getpscrapdelete(String pno,String email);//스크랩 다시한번 누를시 삭제
	String getmember_delete(String email); //회원탈퇴
	String getreviewproc(String gno); // 리뷰작성 (ajax)
	String getreviewproc1(String gno); //리뷰수정 (ajax)
	ModelAndView getreviewinsert(Object vo); //리뷰 insert
	ModelAndView getreviewupdate(Object vo); //리뷰 update
	
}
