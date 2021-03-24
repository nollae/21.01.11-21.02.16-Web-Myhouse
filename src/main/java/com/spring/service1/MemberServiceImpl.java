package com.spring.service1;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.MemberDAO;
import com.myhouse.dao.yj_InteriorDAO;
import com.myhouse.dao.yj_communityDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.interiorVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private yj_communityDAO communityDAO2;
	@Autowired
	private yj_InteriorDAO interiorDAO2;
	
	/**
	 *  회원 상세 페이지(해당 email의 h_member , h_community ,h_interior 정보 갖어오기)
	 */
	@Override
	public ModelAndView getMemberInfo(String email) {
		ModelAndView mv=new ModelAndView();
		
		MemberVO membervo=memberDAO.getMemberInfo(email);
		ArrayList<PhotoVO> photolist=communityDAO2.getCoummunityInfo(email);
		ArrayList<interiorVO> interiorlist=interiorDAO2.getInteriorInfo(email);
		mv.addObject("membervo", membervo);
		System.out.println(membervo.getEmail());
		mv.addObject("photolist",photolist);
		System.out.println(photolist.size());
		mv.addObject("interiorlist", interiorlist);
		System.out.println(interiorlist.size());
		mv.setViewName("/admin/member_content");
		return mv;
	};
	
	/**
	 * 상태 1만들기(테이블구조변경으로 인테리어 테이블status상태를 1로바꿈)
	 */
	@Override
	public String sellerUpdate2(String[] emails) {
		return String.valueOf(memberDAO.sellerUpdate2(emails));
	};
	/**
	 * 상태 0만들기(테이블구조변경으로 인테리어 테이블status상태를 0으로바꿈)
	 */
	@Override
	public String sellerUpdate(String[] emails) {
		return String.valueOf(memberDAO.sellerUpdate(emails));
	};
	/**
	 *  admin페이지 - 회원 리스트 가져오기
	 */
	@Override
	public ModelAndView getMemberList2(String rpage) {
		ModelAndView mv=new ModelAndView();
		
		//2-1. 페이지값에 따라서 star, end count 구하기
		//1페이지(1~10), 2페이지(11~20) ...
		int start = 0;
		int end = 0;
		int pageSize = 6; // 한 페이지당 출력되는 row
		int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
		int dbCount = memberDAO.getListCount(); // DB연동 후 전체 row 수 출력
		int reqPage = 1; // 요청 페이지
		
		//2-2. 전체페이지 수 구하기
		if(dbCount % pageSize == 0){
			pageCount = dbCount / pageSize;
		} else {
			pageCount = dbCount / pageSize + 1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			//start = (요청페이지 - 1) * 한페이지 출력행 + 1;
			start = (reqPage-1) * pageSize + 1;
			end = reqPage * pageSize;
		} else {
			start = reqPage;
			end = pageSize;
		}

		ArrayList<MemberVO> list = memberDAO.getMemberList(start,end);
		System.out.println("맴버 리스트 사이즈"+list.size());
		mv.addObject("list", list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("/admin/member_list");
		
		return mv;
	};
	/**
	 * 상태 1만들기(테이블구조변경으로 인테리어 테이블status상태를 1로바꿈)
	 */
	@Override
	public String stateUpdate2(String[] inos) {
		return String.valueOf(memberDAO.stateUpdate2(inos));
	};
	/**
	 * 상태 0만들기(테이블구조변경으로 인테리어 테이블status상태를 0으로바꿈)
	 */
	@Override
	public String stateUpdate(String[] inos) {
		return String.valueOf(memberDAO.stateUpdate(inos));
	};
	/**
	 * 프로필 갖어오기
	 */
	
	public ModelAndView getProfile(HttpSession session) {
		ModelAndView mv=new ModelAndView();
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		
		if(svo!=null) {
			String profile=memberDAO.getProfile(svo.getEmail());
			mv.addObject("profile",profile);
			mv.setViewName("index");
		}else {
			mv.setViewName("index");
		}
		return mv;
	}
	/**
	 * 패스워드 찾기 이메일 발송
	 */
	public String mailSendWithPassword(String email) {
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			// 메일 제목설정
			message.setSubject("[myhouse] 비밀번호 찾기 요청에 대한 이메일 발송입니다.", "UTF-8");
			// html 메일 내용
			String htmlStr ="<div style='padding:35px 18px 70px;background-color:#fafafa;text-align:center;font-size:15px;line-height:28px;letter-spacing:-0.3px;color:#424242'><div class='adM'>"
					   +"</div><img src='https://ci5.googleusercontent.com/proxy/NrNl-SB1khdndQ9Dl1KaLjNrwZVAxNdYokpIopghCCgCHZlvQDZMgHSyByoWAZtcvrJUAxVprIhqGCRstB2XgR5ich3zb09inJceh9o8TBKvtYKpg7lq7Pn7_k52wQ=s0-d-e1-ft#https://s3-ap-northeast-1.amazonaws.com/mailer-images/logo/email_logo_2.png' alt='오늘의집' height='60' width='60' class='CToWUd'>"
					    +"<div style='margin:53px auto 20px;width:335px'>"
					     +" 안녕하세요.<br>비밀번호 찾기 안내 메일입니다"
					    +"</div>"
					    +"<div style='margin:20px auto 30px;width:335px'>"
					    +" *만약 본인이 비밀번호 찾기를 한 것이 아니라면,"
					    +"  본 메일을 무시해 주세요. "
					  +"  </div>"
					   +" <a style='display:block;width:290px;height:40px;margin:0 auto;background:#35c5f0;border-radius:4px;text-decoration:none' href='http://localhost:9000/myhouse/login.do'>"
					   +"   <div style='line-height:40px;font-weight:700;color:white'> 비밀번호 : "+memberDAO.getPass(email)
					   +"   </div>"
					+"</a>"
					  +"  <div style='margin:30px auto 0;width:335px;font-size:13px;color:#757575;text-decoration:underline'>"
					  +"    * 비밀번호가 쓰여진 버튼을 클릭 시 로그인 화면으로 이동"
					  +"  </div>"
					 +" </div>";
					
			// 내용 설정
			message.setText(htmlStr, "UTF-8", "html");
			// To 설정
			message.addRecipient(RecipientType.TO, new InternetAddress(email, "myhouse회원", "UTF-8"));
			
			javaMailSender.send(message);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/login/login";
	}
	/**
	 * 아이디 중복체크
	 */
	public String getResultIdCheck(String email) {
		int result= memberDAO.getIdCheck(email);
		return String.valueOf(result);
	}
	@Override
	public ModelAndView getMemberContent(String id) {
		ModelAndView mv=new ModelAndView();
		
		return mv;
	};
	@Override
	public ModelAndView getMemberList(String rpage) {
		ModelAndView mv=new ModelAndView();
		
		return mv;
	};
	@Override
	public String getResultJoin(MemberVO vo) {
		String result="";
		if(memberDAO.getInsert(vo)) {
			result="/login/login";
		}else{
			result="/errorPage";
		};
		return result;
	};
	/*
	 * @Override public String getResultLogin(MemberVO vo,HttpSession session) {
	 * 
	 * SessionVO svo= memberDAO.getLogin(vo); String result="/errorPage";
	 * if(svo!=null) { if(svo.getResult()!=0) { session.setAttribute("svo", svo);
	 * result="/index"; } } return result; };
	 */
	@Override
	public String getResultLoginCheck(MemberVO vo,HttpSession session) {
		String result="";
		SessionVO svo= memberDAO.getLogin(vo); 
		 if(svo==null) {result="0";
		 }else { 
			 session.setAttribute("svo", svo); 
			 result=Integer.toString(svo.getResult());
		 }
		return result;
	};
}
