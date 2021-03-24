package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.myhouse.dao.CommunityDAO;
import com.myhouse.dao.H_UploadPhotoDAO;
import com.myhouse.dao.photo_commentDAO;
import com.myhouse.dao.yk_MemberDAO;
import com.myhouse.dao.yk_PhotoDAO;
import com.myhouse.dao.yk_goodsDAO;
import com.myhouse.dao.yk_likeDAO;
import com.myhouse.dao.yk_scrapDAO;
import com.myhouse.dao.yk_tagDAO;
import com.myhouse.vo.CommunityVO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.StoreIndexVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.photo_commentVO;
import com.myhouse.vo.tagVO;

@Service("communityService")
public class CommunityServcieImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	@Autowired
	private yk_PhotoDAO photoDAO;
	@Autowired
	private photo_commentDAO photo_commentDAO;
	@Autowired
	private yk_likeDAO likeDAO;
	@Autowired
	private yk_scrapDAO scrapDAO;
	@Autowired
	private yk_MemberDAO ykmemberDAO;
	@Autowired
	private yk_goodsDAO ykgoodsDAO;
	@Autowired
	private yk_tagDAO yktagDAO;
	@Autowired	
	private H_UploadPhotoDAO uploadDAO; 
	
	/** Ŀ�´�Ƽ ����Ʈ ī�װ� **/
	@Override
	public String getCommunityListAjax(String order, String type, String style, String rpage,String email) {
		int start = 0;
		int end = 0;
		int pageSize = 9; //�� �������� ��µǴ� row
		int pageCount = 1; //��ü ������ ��  : ��ü ����Ʈ row /�� �������� ��µǴ� row
		int dbCount = communityDAO.getListCount(order, type, style); //DB���� �� ��ü�ο�� ���
		int reqPage = 1; //��û������
		
		//2-2. ��ü������ �� ���ϱ� - ȭ�����
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end �� ���ϱ�
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
		
		
		ArrayList<CommunityVO> list = communityDAO.getSortList(order,type,style,start,end,email);
		
		//list��ü�� �����͸� JSON ��ü�� ��ȯ�۾� �ʿ� ---> JSON ���̺귯�� ��ġ(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
		for(CommunityVO vo:list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("pno", vo.getPno());  
			jobj.addProperty("w_email", vo.getW_email());  
			jobj.addProperty("w_nickname", vo.getW_nickname());  
			jobj.addProperty("intro", vo.getIntro());  
			jobj.addProperty("w_member_image", vo.getW_member_image());  
			jobj.addProperty("w_member_simage", vo.getW_member_simage());  
			jobj.addProperty("pcontent", vo.getPcontent());  
			jobj.addProperty("pstyle", vo.getPstyle());  
			jobj.addProperty("ptype", vo.getPtype());  
			jobj.addProperty("photo_image", vo.getPhoto_image());  
			jobj.addProperty("photo_simage", vo.getPhoto_simage());  
			jobj.addProperty("pdate", vo.getPdate());  
			jobj.addProperty("c_nickname", vo.getC_nickname());  
			jobj.addProperty("c_member_image", vo.getC_member_image());  
			jobj.addProperty("c_member_simage", vo.getC_member_simage());  
			jobj.addProperty("c_content", vo.getC_content());  
			jobj.addProperty("phits", vo.getPhits());  
			jobj.addProperty("plike", vo.getPlike());  
			jobj.addProperty("scrap", vo.getScrap());  
			jobj.addProperty("comments", vo.getComments());  
			jobj.addProperty("islike", vo.getIslike());  
			jobj.addProperty("isscrap", vo.getIsscrap());  
			jobj.addProperty("isfollow", vo.getIsfollow()); 
			jobj.addProperty("iswriter", vo.getIswriter());
			 
			jarry.add(jobj);		
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		return gson.toJson(jdata);
	}
	
	/** Ŀ�´�Ƽ ����Ʈ **/
	public ModelAndView getList(String rpage, String email) {
		ModelAndView mv = new ModelAndView();
		
		//1������(1~10), 2������(11~20) ...
		int start =0;
		int end = 0;
		int pageSize = 5; // ���������� ��µǴ� row
		int pageCount = 1; // ��ü ������ �� : ��ü ����Ʈ row / �� �������� ��µǴ� row
		int dbCount = communityDAO.getListCount(); //DB���� �� ��ü�ο�� ���
		int reqPage = 1; //��û������
		
		//2-2. ��ü������ �� ���ϱ� - ȭ�����
		if(dbCount % pageSize == 0) {
			pageCount = dbCount/pageSize;
		}else {
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end �� ���ϱ�
		if(rpage != null) {
			reqPage = Integer.parseInt(rpage);
			start = (reqPage -1) * pageSize +1;
			end = reqPage*pageSize;
		} else {
			start = reqPage;
			end = pageSize;
		}
		
		ArrayList<CommunityVO> list = communityDAO.getList(start, end, email);
		
		mv.addObject("list", list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("/community/community_index");
		
		return mv;
	}

	/**Ŀ�´�Ƽ ������ ���� **/
	@Override
	public ModelAndView getContent(String pno, String email) {
		ModelAndView mv = new ModelAndView();
		photoDAO.getUpdatehits(pno);
		PhotoVO pvo = photoDAO.content(pno);
		int tagcount =yktagDAO.tagCount(pno);
		ArrayList<tagVO> taglist = yktagDAO.tagList(pno);
		int c_like = likeDAO.getCount(pno);
		int scrap = scrapDAO.getCount(pno);
		int c_count =photo_commentDAO.getCount(pno);
		ArrayList<photo_commentVO> comment = photo_commentDAO.getList(pno,email);
		int re_count = photo_commentDAO.getRecount(pno);
		MemberVO member =photoDAO.getWriterInfo(pno);
		ArrayList<PhotoVO> photo = photoDAO.getPhoto(pno);
		int islike = likeDAO.getLike(pno, email);
		int isscrap = scrapDAO.getScrap(pno, email);
		String isfollow = ykmemberDAO.getFollow(pno, email);
		int getwriter = photoDAO.getWriter(pno, email);
		
		mv.addObject("pvo", pvo);
		mv.addObject("comment", comment);
		mv.addObject("re_count", re_count);
		mv.addObject("tagcount", tagcount);
		mv.addObject("taglist", taglist);
		mv.addObject("clike", c_like);
		mv.addObject("scrap", scrap);
		mv.addObject("c_count", c_count);
		mv.addObject("member", member);
		mv.addObject("photo", photo);
		mv.addObject("islike", islike);
		mv.addObject("isscrap", isscrap);
		mv.addObject("isfollow", isfollow);
		mv.addObject("getwriter", getwriter);
		mv.setViewName("/community/community_page");
		return mv;
	}
	
	/** ��ǰ �������� **/
	@Override
	public ModelAndView getGoodsList(String value) {
		ModelAndView mv = new ModelAndView();
		ArrayList<StoreIndexVO> interior_list = uploadDAO.getInteriorList(value); 
		ArrayList<String> img_list = new ArrayList<String>();
				
		mv.addObject("interior_list", interior_list);
		mv.addObject("img_list", img_list);
		mv.addObject("value", value);
	    mv.setViewName("/community/product_tag");
		
		return mv;
	}

	@Override
	public String getGoods(String gname) {
		ArrayList<goodsVO> list = ykgoodsDAO.getGoodsList(gname);
		
		//list��ü�� �����͸� JSON ��ü�� ��ȯ�۾� �ʿ� ---> JSON ���̺귯�� ��ġ(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
		for(goodsVO vo:list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("gno", vo.getGno());  
			jobj.addProperty("ino", vo.getIno());  
			jobj.addProperty("goods_simage", vo.getGoods_simage());  
			jobj.addProperty("goods_name", vo.getGoods_name());  
			jobj.addProperty("goods_price", vo.getGoods_price());  
			
			jarry.add(jobj);		
		}
		jdata.add("jlist", jarry);
		
		return gson.toJson(jdata);
	}
	/** ���� ���� **/
	@Override
	public ModelAndView getUpdate(String pno) {
		ModelAndView mv = new ModelAndView();
		
		PhotoVO vo = photoDAO.content(pno);
		ArrayList<tagVO> taglist = yktagDAO.tagList(pno);
		
		mv.addObject("pvo", vo);
		mv.addObject("taglist", taglist);
		mv.setViewName("/community/photo_update");
		
		return mv;
	}
	
	/** ���� ���� ó�� **/
	@Override
	public ModelAndView getResultUpdate(Object vo) {
		ModelAndView mv = new ModelAndView();
		PhotoVO pvo = (PhotoVO)vo;
		boolean result = false;
		
		 if(pvo.getFile1().getSize() != 0) {
	         // ���ο� ���� ����
	         UUID uuid = UUID.randomUUID();
	         pvo.setPhoto_image(pvo.getFile1().getOriginalFilename());
	         pvo.setPhoto_simage(uuid + "_" + pvo.getFile1().getOriginalFilename());
	      }
		 
		 result = photoDAO.getUpdate(pvo);
		 result = yktagDAO.getDeleteTag(pvo.getPno());
		 result = yktagDAO.getInsertTag(pvo.getPno(),pvo.getPtag());
		 
		 if(result) {
	            // upload ������ ������ ����
	            File file = new File(pvo.getSavepath()+ pvo.getPhoto_simage());
	            try {
	               pvo.getFile1().transferTo(file);
	            } catch (Exception e) {
	               e.printStackTrace();
	            }
	            mv.setViewName("redirect:/community_page.do?pno="+pvo.getPno());
	        
	         }else {
	 		    mv.setViewName("redirect:/community_page.do?pno="+pvo.getPno());
	            
	 		}
		 
	      return mv;
		
	}
	
	
	/** ���� ���� **/
	@Override
	public String getDelete(String pno) {
		return String.valueOf(photoDAO.getDelete(pno));
	}
	
	/** �ȷο� **/
	@Override
	public String getFollow(String w_email,String email) {
		String result = String.valueOf(ykmemberDAO.insertFollow(w_email,email));
		result = String.valueOf(ykmemberDAO.insertFollowing(w_email,email));
		return result;
	}
	
	/** �ȷο� ��� **/
	@Override
	public String deleteFollow(String w_email,String email) {
		String result = String.valueOf(ykmemberDAO.delFollow(w_email,email));
		result = String.valueOf(ykmemberDAO.delFollowing(w_email,email));
		return result;
	}
	
	/** ���ƿ� **/
	@Override
	public String getLike(String pno,String email) {
		return String.valueOf(likeDAO.getInsert(pno,email));
	}
	
	/** ���ƿ� ��� **/
	@Override
	public String deleteLike(String pno,String email) {
		return String.valueOf(likeDAO.getDelete(pno,email));
	}
	
	/** ��ũ�� **/
	@Override
	public String getScrap(String pno,String email) {
		return String.valueOf(scrapDAO.getInsert(pno,email));
	}
	
	/** ��ũ�� ��� **/
	@Override
	public String deleteScrap(String pno,String email) {
		return String.valueOf(scrapDAO.getDelete(pno,email));
	}
	
	/** ��۴ޱ� **/
	@Override
	public String getCommentWrite(String pno, String content, String email) {
		return String.valueOf(photo_commentDAO.getWrite(pno, content, email));
	}
	
	/** ��۴ޱ� **/
	@Override
	public String getReplyWrite(String pno, String tag, String content, String cgroup, String email) {
		return String.valueOf(photo_commentDAO.getReplyWrite(pno, tag, content, cgroup, email));
	}
	
	/** �ڽ� ����� �ִ� ��ۻ��� **/
	@Override
	public String getCommentUpdate(String cno) {
		return String.valueOf(photo_commentDAO.getUpdate(cno));
	}
	
	/** ��ۻ��� **/
	@Override
	public String getCommentDelete(String cno) {
		return String.valueOf(photo_commentDAO.getDelete(cno));
	}
	
	/** ��� ���ƿ� **/
	@Override
	public String getCommentLike(String cno,String email) {
		return String.valueOf(photo_commentDAO.getCommentLike(cno,email));
	}
	
	/** ��� ���ƿ���� **/
	@Override
	public String deleteCommentLike(String cno,String email) {
		return String.valueOf(photo_commentDAO.getDeleteCommentLike(cno,email));
	}
	
}
