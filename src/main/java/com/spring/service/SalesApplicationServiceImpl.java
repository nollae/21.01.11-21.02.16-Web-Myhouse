package com.spring.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhouse.dao.yk_MemberDAO;
import com.myhouse.dao.yk_goodsDAO;
import com.myhouse.dao.yk_interiorDAO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;

@Service("salesSerivce")
public class SalesApplicationServiceImpl {
	
	@Autowired
	private yk_interiorDAO ykinteriorDAO;
	@Autowired
	private yk_goodsDAO ykgoodsDAO;
	@Autowired
	private yk_MemberDAO ykmemberDAO;
	
	
	 public String getResultWrite(Object vo, Object vo2) {
	      interiorVO ivo = (interiorVO) vo;
	      goodsVO gvo = (goodsVO) vo2;
	      String email = ivo.getEmail();
	      boolean dao_result = false;
	      
	      ykmemberDAO.updateSeller(email);
	      if(ivo.getInterior_file().getSize() !=0) {
	    	  //파일존재
	    	  //1. bfile, bsfile 이름생성 
	    	  UUID uuid = UUID.randomUUID();
	    	  System.out.println((ivo.getInterior_file().getOriginalFilename()));
	    	  System.out.println((uuid +"_"+ivo.getInterior_file().getOriginalFilename()));
	    	  
	    	  ivo.setInterior_image(ivo.getInterior_file().getOriginalFilename());
	    	  ivo.setInterior_simage(uuid +"_"+ivo.getInterior_file().getOriginalFilename());
	    	  
	      }
	      dao_result = ykinteriorDAO.getInsert(ivo);
	      if(dao_result) {
			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
			  File file = new File(ivo.getSavepath() + ivo.getInterior_simage());
			  try {
				  ivo.getInterior_file().transferTo(file);
			  } catch (Exception e) {
				  e.printStackTrace();
			  }
		  }else {
			  return "errorPage";
		  }
	      
	      String[] goods_name = gvo.getGoods_name().split(",");
	      String[] goods_price = gvo.getGoods_price().split(",");
	      
	      for(int i=1; i<=goods_name.length; i++) {
	    	  goodsVO goodsvo = new goodsVO();
	    	  goodsvo.setIno(ivo.getIno());
	    	  if(i==1) {
	    		  if(gvo.getGfile1().getSize() !=0) {
	    	    	  UUID uuid = UUID.randomUUID();
	    	    	  System.out.println((gvo.getGfile1().getOriginalFilename()));
	    	    	  System.out.println((uuid +"_"+gvo.getGfile1().getOriginalFilename()));
	    	    	  
	    	    	  goodsvo.setGoods_image(gvo.getGfile1().getOriginalFilename());
	    	    	  goodsvo.setGoods_simage(uuid +"_"+gvo.getGfile1().getOriginalFilename());
	    	      }
	    		  goodsvo.setGoods_name(goods_name[0]);
	    		  goodsvo.setGoods_price(goods_price[0]);
	    		  dao_result = ykgoodsDAO.getInsert(goodsvo);
	    		  
	    		  if(dao_result) {
	    			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
	    			  File file = new File(gvo.getSavepath() + goodsvo.getGoods_simage());
	    			  try {
	    				  gvo.getGfile1().transferTo(file);
	    			  } catch (Exception e) {
	    				  e.printStackTrace();
	    			  }
	    		  }else {
	    			  return "errorPage";
	    		  }
	    	  }
	    	  if(i==2) {
	    		  if(gvo.getGfile2().getSize() !=0) {
	    			  UUID uuid = UUID.randomUUID();
	    			  System.out.println((gvo.getGfile2().getOriginalFilename()));
	    			  System.out.println((uuid +"_"+gvo.getGfile2().getOriginalFilename()));
	    			  
	    			  goodsvo.setGoods_image(gvo.getGfile2().getOriginalFilename());
	    			  goodsvo.setGoods_simage(uuid +"_"+gvo.getGfile2().getOriginalFilename());
	    		  }
	    		  goodsvo.setGoods_name(goods_name[1]);
	    		  goodsvo.setGoods_price(goods_price[1]);
	    		  dao_result = ykgoodsDAO.getInsert(goodsvo);
	    		  
	    		  if(dao_result) {
	    			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
	    			  File file = new File(gvo.getSavepath() + goodsvo.getGoods_simage());
	    			  try {
	    				  gvo.getGfile2().transferTo(file);
	    			  } catch (Exception e) {
	    				  e.printStackTrace();
	    			  }
	    		  }else {
	    			  return "errorPage";
	    		  }
	    	  }
	    	  if(i==3) {
	    		  if(gvo.getGfile3().getSize() !=0) {
	    			  UUID uuid = UUID.randomUUID();
	    			  System.out.println((gvo.getGfile3().getOriginalFilename()));
	    			  System.out.println((uuid +"_"+gvo.getGfile3().getOriginalFilename()));
	    			  
	    			  goodsvo.setGoods_image(gvo.getGfile3().getOriginalFilename());
	    			  goodsvo.setGoods_simage(uuid +"_"+gvo.getGfile3().getOriginalFilename());
	    		  }
	    		  goodsvo.setGoods_name(goods_name[2]);
	    		  goodsvo.setGoods_price(goods_price[2]);
	    		  dao_result = ykgoodsDAO.getInsert(goodsvo);
	    		  
	    		  if(dao_result) {
	    			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
	    			  File file = new File(gvo.getSavepath() + goodsvo.getGoods_simage());
	    			  try {
	    				  gvo.getGfile3().transferTo(file);
	    			  } catch (Exception e) {
	    				  e.printStackTrace();
	    			  }
	    		  }else {
	    			  return "errorPage";
	    		  }
	    	  }
	    	  if(i==4) {
	    		  if(gvo.getGfile4().getSize() !=0) {
	    			  UUID uuid = UUID.randomUUID();
	    			  System.out.println((gvo.getGfile4().getOriginalFilename()));
	    			  System.out.println((uuid +"_"+gvo.getGfile4().getOriginalFilename()));
	    			  
	    			  goodsvo.setGoods_image(gvo.getGfile4().getOriginalFilename());
	    			  goodsvo.setGoods_simage(uuid +"_"+gvo.getGfile4().getOriginalFilename());
	    		  }
	    		  goodsvo.setGoods_name(goods_name[3]);
	    		  goodsvo.setGoods_price(goods_price[3]);
	    		  dao_result = ykgoodsDAO.getInsert(goodsvo);
	    		  
	    		  if(dao_result) {
	    			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
	    			  File file = new File(gvo.getSavepath() + goodsvo.getGoods_simage());
	    			  try {
	    				  gvo.getGfile4().transferTo(file);
	    			  } catch (Exception e) {
	    				  e.printStackTrace();
	    			  }
	    		  }else {
	    			  return "errorPage";
	    		  }
	    	  }
	    	  if(i==5) {
	    		  if(gvo.getGfile5().getSize() !=0) {
	    			  UUID uuid = UUID.randomUUID();
	    			  System.out.println((gvo.getGfile5().getOriginalFilename()));
	    			  System.out.println((uuid +"_"+gvo.getGfile5().getOriginalFilename()));
	    			  
	    			  goodsvo.setGoods_image(gvo.getGfile5().getOriginalFilename());
	    			  goodsvo.setGoods_simage(uuid +"_"+gvo.getGfile5().getOriginalFilename());
	    		  }
	    		  goodsvo.setGoods_name(goods_name[4]);
	    		  goodsvo.setGoods_price(goods_price[4]);
	    		  dao_result = ykgoodsDAO.getInsert(goodsvo);
	    		  
	    		  if(dao_result) {
	    			  //3. 서버에 저장 --> upload 폴더에 저장(폴더위치)
	    			  File file = new File(gvo.getSavepath() + goodsvo.getGoods_simage());
	    			  try {
	    				  gvo.getGfile5().transferTo(file);
	    			  } catch (Exception e) {
	    				  e.printStackTrace();
	    			  }
	    		  }else {
	    			  return "errorPage";
	    		  }
	    	  }
	      }
	      
	      return  "redirect:/mypage_activity2.do";
	   }
	
}
