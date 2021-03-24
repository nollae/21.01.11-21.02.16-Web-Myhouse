package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.StoreIndexVO;

public class yh_InteriorDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.interior";
	
	// 스토에서 바로구매 클릭시
		public boolean getPayFinish(String email, String[] onolist) {
			boolean result = false;
			
			Map<String, Object> order_param = new HashMap<String, Object>();
			int value = 0;
			
			
			order_param.put("email", email);           
			
			for(int i=0;i<onolist.length;i++) {
				
				String ono =onolist[i]; 
				
				order_param.put("ono", ono);
				
				int value2 = sqlSession.selectOne(namespace+".pay-ostatus-insert2", order_param);
				if(value2 == 0) {
					value = sqlSession.update(namespace+".pay-ostatus-insert", order_param);
				}
			}
			if(value != 0) result = true;
			
			return result;
		}
	
	// 주소 입력 ---- 결제 클릭시
	public boolean getPayAddrInsert(String email, String name, String phone, String memo) {
		boolean result = false;
		
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("email", email);
		param.put("name", name);
		param.put("phone", phone);
		param.put("memo", memo);
		
		int value = sqlSession.update(namespace+".pay-addr-insert", param);
		if(value !=0) result = true;
		
		return result;
	}
	// 주소 입력
	public boolean getAddrInsert(String email, String name, String addr, String addr_num, String phone) {
		boolean result = false;
		
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("email", email);
		param.put("name", name);
		param.put("addr", addr);
		param.put("addr_num", addr_num);
		param.put("phone", phone);
		
		int value = sqlSession.update(namespace+".addr-insert", param);
		if(value !=0) result = true;
		
		return result;
	}
	
	
	// 스토에서 바로구매 클릭시
	public boolean getPayment(String email, String[] gnolist, String[] ocountlist) {
		boolean result = false;
		
		Map<String, Object> order_param = new HashMap<String, Object>();
		int value = 0;
		
		
		order_param.put("email", email);           
		
		for(int i=0;i<gnolist.length;i++) {
			
			String gno = gnolist[i]; 
			String ocount =ocountlist[i]; 

			
			order_param.put("gno", gno);
			order_param.put("ocount", ocount);
			
			int value2 = sqlSession.selectOne(namespace+".order-select2", order_param);
			if(value2 == 0) {
				value = sqlSession.insert(namespace+".order-insert", order_param);
			}
		}
		
		if(value != 0) result = true;
		
		return result;
	}
	// 구매 페이지 - 주문자 리스트 
	public ArrayList<StoreIndexVO> getPaymentAddrList(String email) {
		List<StoreIndexVO> order_list = sqlSession.selectList(namespace+".order-select-addr", email);	
		
		return (ArrayList<StoreIndexVO>)order_list;
	}
	// 구매 페이지 - 리스트 
	public ArrayList<StoreIndexVO> getPaymentList(String email, String[] gnolist) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("email", email);           
		param.put("gnolist", gnolist);
		
		List<StoreIndexVO> order_list = sqlSession.selectList(namespace+".order-select", param);	
		
		return (ArrayList<StoreIndexVO>)order_list;
	}
	
	
	/** 전체 리스트 카운트 - 문의 */
	public int getListQuestionCount(String ino) {
		return sqlSession.selectOne(namespace+".question-count", ino); 
	}
	/** 전체 리스트 카운트 - 리뷰 */
	public int getListReviewCount(String ino, String status) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("ino", ino);
		param.put("status", status);
		return sqlSession.selectOne(namespace+".review-count", param); 
	}
	//  문의 답변하기 - 삭제
	public boolean getInteriorQuestionAnswerDelete(String qno) {
		
		boolean result = false;
		
		int value = sqlSession.update(namespace+".interior-question-answer-delete", qno);
		if(value != 0) result = true;
		
		return result;
	} 
	//  문의 답변하기
	public boolean getInteriorQuestionAnswer(String qno, String qreply) {
		Map<String, String> a_param = new HashMap<String, String>();
		a_param.put("qno", qno);
		a_param.put("qreply", qreply);
		
		boolean result = false;
		
		int value = sqlSession.update(namespace+".interior-question-answer", a_param);
		if(value != 0) result = true;
		
		return result;
	}
	// 문의 답변하기 :: 화면
		public ArrayList<StoreIndexVO> getInteriorQuestionAnswerProc(String qno, String ino) {
			Map<String, String> param = new HashMap<String, String>();
			
			param.put("qno",qno);
			param.put("ino",ino);
			List<StoreIndexVO> interior_answer = sqlSession.selectList(namespace+".interior-question-answer-proc", param);
			return (ArrayList<StoreIndexVO>)interior_answer;
		}
	
	
	// 문의 작성하기
	public boolean getInteriorQuestionInsert(StoreIndexVO vo) {
		boolean result = false;
		
		int value = sqlSession.insert(namespace+".interior-question-insert", vo);
		
		if(value != 0) result = true;
		return result;
	}
	
	// 문의 페이지
	public ArrayList<StoreIndexVO> getInteriorQeustion(String ino, int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("ino",ino);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end)); 
		
		List<StoreIndexVO> interior_question = sqlSession.selectList(namespace+".interior-question", param);
		return (ArrayList<StoreIndexVO>)interior_question;
	}
	
	// 리뷰 작성하기
	public boolean getInteriorReviewInsert(StoreIndexVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".interior-review-insert", vo);
		
		if(value != 0) result = true;
			System.out.print("insert");
		return result;	
	}
	
	// 리뷰 - 상품리스트 선택
	public ArrayList<StoreIndexVO> getInteriorReviewGoodsList(String gno) {
		List<StoreIndexVO> interior_review_goods_list = sqlSession.selectList(namespace+".interior-review-goods-list", gno);
		return (ArrayList<StoreIndexVO>)interior_review_goods_list;
	}

	// 리뷰 페이지 - 베스트순
	public ArrayList<StoreIndexVO> getInteriorReview(String ino, String status, int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("ino",ino);
		param.put("status",status);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		
		List<StoreIndexVO> interior_review = sqlSession.selectList(namespace+".interior-review", param);
		return (ArrayList<StoreIndexVO>)interior_review;
	}
	
	// 스크랩 등록여부
	public int getInteriorScrapExist(String email, String ino) {
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		return sqlSession.selectOne(namespace+".interior-scrap-exist", s_insert_param);
	}
	
	//  스크랩 처리
	public boolean getInteriorScrapDelProc(String email, String ino) {
		boolean result = false;

		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-delete", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	//  스크랩 처리
	public boolean getInteriorScrapProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-insert", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	//  스크랩 처리
	public boolean getStoreScrapDelProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-delete", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	//  스크랩 처리
	public boolean getStoreScrapProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-insert", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getStoreMainOrderProc(String gno) {
		List<StoreIndexVO> main_order = sqlSession.selectList(namespace+".main-order", gno);
		return (ArrayList<StoreIndexVO>) main_order;
	}
	
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getReviewStar5(String ino) {
		List<StoreIndexVO> review_star5 = sqlSession.selectList(namespace+".review-star5", ino);
		return (ArrayList<StoreIndexVO>) review_star5;
	}
	public ArrayList<StoreIndexVO> getReviewStar4(String ino) {
		List<StoreIndexVO> review_star4 = sqlSession.selectList(namespace+".review-star4", ino);
		return (ArrayList<StoreIndexVO>) review_star4;
	}
	public ArrayList<StoreIndexVO> getReviewStar3(String ino) {
		List<StoreIndexVO> review_star3 = sqlSession.selectList(namespace+".review-star3", ino);
		return (ArrayList<StoreIndexVO>) review_star3;
	}
	public ArrayList<StoreIndexVO> getReviewStar2(String ino) {
		List<StoreIndexVO> review_star2 = sqlSession.selectList(namespace+".review-star2", ino);
		return (ArrayList<StoreIndexVO>) review_star2;
	}
	public ArrayList<StoreIndexVO> getReviewStar1(String ino) {
		List<StoreIndexVO> review_star1 = sqlSession.selectList(namespace+".review-star1", ino);
		return (ArrayList<StoreIndexVO>) review_star1;
	}
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getInteriorTop(String ino) {
		//System.out.println("dao----------->"+ino);
		List<StoreIndexVO> interiror_top = sqlSession.selectList(namespace+".interior-top", ino);
		//System.out.println("dao----------->"+interiror_top);
		return (ArrayList<StoreIndexVO>) interiror_top;
	}
	
	// store_index - list count
	public int getIndexListCount(String category, String[] tonelist,  String[] colorlist,  String[] seasonlist) {
		Map<String, String[]> category_param = new HashMap<String, String[]>();
		String[] category_ = new String[1] ;
		category_[0] = category;
		System.out.println(category_.length);
		category_param.put("category", category_);                                     
		category_param.put("tonelist", tonelist);
		category_param.put("colorlist", colorlist);
		category_param.put("seasonlist", seasonlist);
		
		return sqlSession.selectOne(namespace+".category_list_count", category_param);
	}
	
	// store_index - list -category
	public ArrayList<StoreIndexVO> getListCategory(String category, String[] tonelist, String[] colorlist, String[] seasonlist,
													int start, int end, String status){
		Map<String, String[]> category_param = new HashMap<String, String[]>();
		String[] category_ = new String[1] ;
		String[] start_ = new String[1] ;
		String[] end_ = new String[1] ;
		String[] status_ = new String[1] ;
		
		category_[0] = category;
		start_[0] = String.valueOf(start);
		end_[0] = String.valueOf(end);
		status_[0] = status;

		category_param.put("category", category_);                                     
		category_param.put("status", status_);                                     
		category_param.put("tonelist", tonelist);
		category_param.put("colorlist", colorlist);
		category_param.put("seasonlist", seasonlist);
		
		category_param.put("start", start_);
		category_param.put("end", end_);
		
		
		List<StoreIndexVO> category_list = sqlSession.selectList(namespace+".category_list", category_param);
		return (ArrayList<StoreIndexVO>)category_list;
	} 
	// store_index - list
	public ArrayList<StoreIndexVO> getInteriorList(String category){
		List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".interior-list", category);
		return (ArrayList<StoreIndexVO>)interior_list;
	} 
	
	// 카테고리별 인테리어게시물 총 갯수
	public int getInteriorListCount(String category) {
		return sqlSession.selectOne(namespace + ".interior-list-count", category);
	}
	
}
