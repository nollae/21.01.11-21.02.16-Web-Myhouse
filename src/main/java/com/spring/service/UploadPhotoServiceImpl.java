package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.H_UploadPhotoDAO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.StoreIndexVO;


@Service("uploadService")
public class UploadPhotoServiceImpl implements UploadPhotoService{
	@Autowired	
	private H_UploadPhotoDAO uploadDAO; 
	
	/**글쓰기 처리**/
	@Override
	public String getResultWrite(Object vo){
		String result ="";
		
		//bfile,bsfile 이름을 가져와서 --> vo저장 request객체
		PhotoVO pvo = (PhotoVO)vo;
		if(pvo.getFile1().getSize() != 0) {
			UUID uuid = UUID.randomUUID();	//중복방지를 위해 사용 -->bsfile
			pvo.setPhoto_image(pvo.getFile1().getOriginalFilename());
			pvo.setPhoto_simage(uuid +"_"+pvo.getFile1().getOriginalFilename());
		}
		//DB저장
		boolean dao_result = uploadDAO.getInsert(pvo);//object타입이니까 캐스팅해서 보내야함
		System.out.println(pvo.getPtag());
		System.out.println("1=>"+pvo.getPno());
		if(dao_result){
			//서버 저장-->upload폴더 저장(폴더위치)

			if(uploadDAO.getInsertTag(uploadDAO.getPnoCheck(pvo), pvo.getPtag())){
				System.out.println("db 구분");
				System.out.println("2=>"+pvo.getPno());
			}else {
				System.out.println("실패");
			}
			// String root_path = request.getSession().getServletContext().getRealPath("/");
			 //String attach_path = "\\resources\\upload\\";
			System.out.println("통과");
			File file = new File(pvo.getSavepath()+pvo.getPhoto_simage());
			
			try {
				pvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			result = "redirect://index.do";	//바꿔야함!!!!!
		}else{
			result = "errorPage";
		}
		
		return result;
	}
	
	// store_index - list
		public ModelAndView getList(String value) {
			ModelAndView mv = new ModelAndView();
			ArrayList<StoreIndexVO> interior_list = uploadDAO.getInteriorList(value); 
			//ArrayList<CommunityVO> community_list = communityDAO2.getList(value);
			ArrayList<String> img_list = new ArrayList<String>();
			/*
			 * for(CommunityVO vo:community_list) { String[]
			 * photos=vo.getPhoto_simage().split(","); img_list.add(photos[0]); }
			 */
					
			mv.addObject("interior_list", interior_list);
			//mv.addObject("community_list", community_list);
			mv.addObject("img_list", img_list);
			mv.addObject("value", value);
		    mv.setViewName("/myhouseWrite/product_review");
			
			return mv;
		}
	
}
