package com.spring.service1;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.myhouse.dao.MypagePhotoDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.likeVO;
import com.myhouse.vo.noticeVO;
import com.myhouse.vo.questionVO;
import com.myhouse.vo.reviewVO;
import com.myhouse.vo.scrapVO;

@Service ("mypageService")
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypagePhotoDAO mypagephotoDAO;
	
	
	
	@Override
	public ModelAndView getscrap_photo(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<scrapVO> list = mypagephotoDAO.getscrap_photo(email);
		int count = mypagephotoDAO.getproduct_count(email);
		int hcount = mypagephotoDAO.getscrap_house_count(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int acount = mypagephotoDAO.getscrap_allcount(email);
		
		mv.addObject("acount", acount);
		mv.addObject("prof", prof);
		mv.addObject("hcount", hcount);
		mv.addObject("count", count);
		mv.addObject("list", list);
		mv.setViewName("scrap/scrap_houses");
		return mv;
	}
	
	
	
	@Override
	public String getpscrapdelete(String pno,String email) {
		return String.valueOf(mypagephotoDAO.getpscrapdelete(pno,email));
	}
	
	
	
	@Override
	public String getpicturescrap(String pno, String email) {
		System.out.println("serviceimple"+pno);
		return String.valueOf(mypagephotoDAO.getpicturescrap(pno,email));
	}
	
	
	
	@Override
	public ModelAndView getscrap_pro(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<scrapVO> list = mypagephotoDAO.getscrap_pro(email);
		int count = mypagephotoDAO.getproduct_count(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int hcount = mypagephotoDAO.getscrap_house_count(email);
		int acount = mypagephotoDAO.getscrap_allcount(email);
		
		mv.addObject("acount", acount);
		mv.addObject("hcount", hcount);
		mv.addObject("prof", prof);
		mv.addObject("count", count);
		mv.addObject("list", list);
		mv.setViewName("scrap/scrap_product");
		
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getscrap_all(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<scrapVO> list = mypagephotoDAO.getscrap_all(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int count = mypagephotoDAO.getproduct_count(email);
		int hcount = mypagephotoDAO.getscrap_house_count(email);
		int acount = mypagephotoDAO.getscrap_allcount(email);
		
		
		mv.addObject("acount", acount);
		mv.addObject("list", list);
		mv.addObject("hcount", hcount);
		mv.addObject("count", count);
		mv.addObject("prof", prof);
		mv.setViewName("scrap/scrap_all");
		
		return mv;
	}
	
	
	
	
	
	@Override
	public ModelAndView getnoticecontent(String nno) {
		ModelAndView mv = new ModelAndView();
		noticeVO vo = mypagephotoDAO.getnoticecontent(nno);
		
		mv.addObject("vo", vo);
		mv.setViewName("mypage/noticecontent");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getnotice() {
		ModelAndView mv = new ModelAndView();
		ArrayList<noticeVO> list = mypagephotoDAO.getnotice();
		
		mv.addObject("list", list);
		mv.setViewName("mypage/notice");
		return mv;
	}
	
	
	
	
	@Override
	public ModelAndView getlactivity(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<likeVO> list = mypagephotoDAO.getlactivity(email);
		int lcount = mypagephotoDAO.getlikecount(email);
		
		mv.addObject("lcount", lcount);
		mv.addObject("list", list);
		mv.setViewName("mypage/activity");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getpanme(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<interiorVO> list = mypagephotoDAO.getpanme(email);
		int pcount = mypagephotoDAO.getpanmecount(email);
		
		mv.addObject("pcount", pcount);
		mv.addObject("list", list);
		mv.setViewName("mypage/activity2");
		
		return mv;
	}
	
	
	@Override
	public String getpicturedelete(String pno,String email) {
		return String.valueOf(mypagephotoDAO.getlikedelete(pno,email));
	}
	
	
	@Override
	public String getpictureproc(String pno,String nickname) {
		String email = mypagephotoDAO.getnickname(nickname);
		int count = mypagephotoDAO.getplikecount(pno);
		return String.valueOf(mypagephotoDAO.getlikeinsert(pno,email));
	}
	
	
	@Override
	public ModelAndView getreviewpage(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<goodsVO> list = mypagephotoDAO.getreviewpage(email);
		int rcount = mypagephotoDAO.getreviewcount(email);
		
		mv.addObject("rcount", rcount);
		mv.addObject("list", list);
		mv.setViewName("mypage/review");
		
		return mv;
	}
	
	@Override
	public ModelAndView getreviewinsert(Object vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("서비스임플!");
		//파일체크 유: 새로운 파일수정/무:기존파일 유지
		reviewVO rvo = (reviewVO)vo;
		boolean result =false;
		
		if(rvo.getFile1().getSize() != 0) {
			//새로운 파일 선택
			//bfile, bsfile --> bvo추가
			UUID uuid = UUID.randomUUID();
			rvo.setReview_image(rvo.getFile1().getOriginalFilename());
			rvo.setReview_simage(uuid+"_"+rvo.getFile1().getOriginalFilename());
			System.out.println("파일있음");
		}
		//DB연동
		result = mypagephotoDAO.getreviewinsert(rvo);
		
		
		if(result) {
			File file = new File(rvo.getSavepath()+rvo.getReview_simage());
			System.out.println("파일 = "+file);
			try {
				rvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			mv.setViewName("redirect:/mypage_review.do");
			System.out.println("수정 성공~!!");
		}else {
			mv.setViewName("redirect:/mypage_review.do");
			System.out.println("선택파일이 없습니다.");
		}
		
		return mv;
	}
	
	
	
	
	@Override
	public ModelAndView getreviewupdate(Object vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("서비스임플!");
		//파일체크 유: 새로운 파일수정/무:기존파일 유지
		reviewVO rvo = (reviewVO)vo;
		boolean result =false;
		
		if(rvo.getFile1().getSize() != 0) {
			//새로운 파일 선택
			//bfile, bsfile --> bvo추가
			UUID uuid = UUID.randomUUID();
			rvo.setReview_image(rvo.getFile1().getOriginalFilename());
			rvo.setReview_simage(uuid+"_"+rvo.getFile1().getOriginalFilename());
			System.out.println("파일있음");
		}
		//DB연동
		result = mypagephotoDAO.getreviewupdate(rvo);
		
		
		if(result) {
			File file = new File(rvo.getSavepath()+rvo.getReview_simage());
			System.out.println("파일 = "+file);
			try {
				rvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			mv.setViewName("redirect:/mypage_review2.do");
			System.out.println("수정 성공~!!");
		}else {
			mv.setViewName("redirect:/mypage_review2.do");
			System.out.println("선택파일이 없습니다.");
		}
		
		return mv;
	}
	
	
	
	
	@Override
	public String getreviewproc(String gno) {
		System.out.println("ino= "+gno);
		goodsVO gvo = mypagephotoDAO.getreviewproc(gno);
		
		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
			JsonObject jobj = new JsonObject();
			jobj.addProperty("ino", gvo.getIno());
			jobj.addProperty("company", gvo.getCompany());
			jobj.addProperty("goods_name", gvo.getGoods_name());
			jobj.addProperty("goods_simage", gvo.getGoods_simage());
			jobj.addProperty("gno", gvo.getGno());
			jobj.addProperty("star", gvo.getStar());
			jobj.addProperty("vcontent", gvo.getVcontent());
			
			
			
			
			jarry.add(jobj);
			
		
			jdata.add("jlist", jobj);
		
		
		return gson.toJson(jdata);
	}
	
	
	@Override
	public String getreviewproc1(String ino) {
		System.out.println("ino= "+ino);
		goodsVO gvo = mypagephotoDAO.getreviewproc1(ino);
		
		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
			JsonObject jobj = new JsonObject();
			jobj.addProperty("ino", gvo.getIno());
			jobj.addProperty("company", gvo.getCompany());
			jobj.addProperty("goods_name", gvo.getGoods_name());
			jobj.addProperty("goods_simage", gvo.getGoods_simage());
			jobj.addProperty("gno", gvo.getGno());
			jobj.addProperty("star", gvo.getStar());
			jobj.addProperty("vcontent", gvo.getVcontent());
			
			
			
			
			jarry.add(jobj);
			
		
			jdata.add("jlist", jobj);
		
		
		return gson.toJson(jdata);
	}
	
	
	
	
	@Override
	public ModelAndView getqna(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<questionVO> list = mypagephotoDAO.getqna(email);
		int qcount = mypagephotoDAO.getqnacount(email);
		
		mv.addObject("qcount", qcount);
		mv.addObject("list", list);
		mv.setViewName("mypage/activity3");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getquestlist(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<questionVO> list = mypagephotoDAO.getquestlist(email);
		int lcount = mypagephotoDAO.getquestlcount(email);
		
		mv.addObject("lcount", lcount);
		mv.addObject("list", list);
		mv.setViewName("mypage/question");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getpasschange(String pass,String email) {
		ModelAndView mv = new ModelAndView();
		boolean result =false;
		System.out.println(pass);
		result = mypagephotoDAO.getpasschange(pass,email);
		
		if(result) {
			mv.setViewName("redirect:/mypage_profile1.do");
		}else {
			mv.setViewName("redirect:/mypage_profile1.do");
			System.out.println("비밀번호변경실패");
		}
	
		return mv;
	}
	
	
	
	
	
	
	@Override
	public ModelAndView getreview1(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<reviewVO> list = mypagephotoDAO.getreview1(email);
		
		mv.addObject("list", list);
		mv.setViewName("/mypage/review1");
		
		return mv;
	}
	
	
	
	
	@Override
	public ModelAndView getreview(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<reviewVO> list = mypagephotoDAO.getreview(email);
		int rcount = mypagephotoDAO.getreviewcount1(email);
		
		
		mv.addObject("rcount", rcount);
		mv.addObject("list", list);
		mv.setViewName("/mypage/review2");
	
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getResultUpdate(Object vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("서비스임플!");
		//파일체크 유: 새로운 파일수정/무:기존파일 유지
		MemberVO uvo = (MemberVO)vo;
		boolean result =false;
		
		if(uvo.getFile1().getSize() != 0) {
			//새로운 파일 선택
			//bfile, bsfile --> bvo추가
			UUID uuid = UUID.randomUUID();
			uvo.setMember_image(uvo.getFile1().getOriginalFilename());
			uvo.setMember_spimage(uuid+"_"+uvo.getFile1().getOriginalFilename());
			System.out.println("파일있음");
		}
		//DB연동
		result = mypagephotoDAO.getOptionUpdate(uvo);
		
		
		if(result) {
			File file = new File(uvo.getSavepath()+uvo.getMember_spimage());
			System.out.println("파일 = "+file);
			try {
				uvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			mv.setViewName("redirect:/mypage_profile1.do");
			System.out.println("수정 성공~!!");
		}else {
			mv.setViewName("redirect:/mypage_profile1.do");
			System.out.println("선택파일이 없습니다.");
		}
		
		return mv;
	}
	
	
	@Override
	public ModelAndView getoption(String email) {
		ModelAndView mv = new ModelAndView();
		MemberVO ovo = mypagephotoDAO.getoption(email);
		String str = ovo.getEmail();
		String[] str2 = str.split("@");
		
		mv.addObject("str2", str2);
		mv.addObject("ovo", ovo);
		mv.setViewName("/mypage/option");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getorder(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<interiorVO> list = mypagephotoDAO.getorder(email);
		int ocount = mypagephotoDAO.getordercount(email);
		mv.addObject("ocount", ocount);
		
		mv.addObject("list", list);
		mv.setViewName("/mypage/orderlist");
		return mv;
		
	}
	
	
	@Override
	public ModelAndView getphotolist(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getphotolist(email);
		int count = mypagephotoDAO.getphotocount(email);
		int lcount = mypagephotoDAO.getlikecount(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int scount = mypagephotoDAO.getscrapcount(email);
		int fcount = mypagephotoDAO.getfcount(email);
		int fcount1 = mypagephotoDAO.getfcount1(email);
		
		System.out.println("팔로워"+fcount);
		System.out.println("팔로잉"+fcount1);
		
		mv.addObject("fcount1", fcount1);
		mv.addObject("fcount", fcount);
		mv.addObject("scount", scount);
		mv.addObject("lcount", lcount);
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.setViewName("/mypage/profile1");
		
	return mv;
	}
	
	
	@Override
	public ModelAndView getpicture(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getpicture(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int lcount = mypagephotoDAO.getlikecount(email);
		int scount = mypagephotoDAO.getscrapcount(email);
		int pcount = mypagephotoDAO.getphotocount(email);
		int fcount = mypagephotoDAO.getfcount(email);
		int fcount1 = mypagephotoDAO.getfcount1(email);
		
		mv.addObject("fcount1", fcount1);
		mv.addObject("fcount", fcount);
		mv.addObject("pcount", pcount);
		mv.addObject("scount", scount);
		mv.addObject("lcount", lcount);
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.setViewName("/mypage/picture");
		return mv;
	}
	
	
	@Override
	public ModelAndView getlike(String email) {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getlike(email);
		MemberVO prof = mypagephotoDAO.getprofile(email);
		int lcount = mypagephotoDAO.getlikecount(email);
		int scount = mypagephotoDAO.getscrapcount(email);
		int fcount = mypagephotoDAO.getfcount(email);
		int fcount1 = mypagephotoDAO.getfcount1(email);
		
		mv.addObject("fcount1", fcount1);
		mv.addObject("fcount", fcount);
		mv.addObject("scount", scount);
		mv.addObject("lcount", lcount);
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.setViewName("/mypage/like");
		return mv;
	}
	
	
	  @Override
	  public String getmember_delete(String email){ 
		  ModelAndView mv = new ModelAndView(); 
		  String delete = "";
		  boolean result = mypagephotoDAO.getmemberdelete(email);
		  
		  
		  if(result) {
		    delete = "redirect:/logout";
		  }
	  
	  
	  return delete;
	  
	  }
	 
	
	
	
}
