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
	
	/**�۾��� ó��**/
	@Override
	public String getResultWrite(Object vo){
		String result ="";
		
		//bfile,bsfile �̸��� �����ͼ� --> vo���� request��ü
		PhotoVO pvo = (PhotoVO)vo;
		if(pvo.getFile1().getSize() != 0) {
			UUID uuid = UUID.randomUUID();	//�ߺ������� ���� ��� -->bsfile
			pvo.setPhoto_image(pvo.getFile1().getOriginalFilename());
			pvo.setPhoto_simage(uuid +"_"+pvo.getFile1().getOriginalFilename());
		}
		//DB����
		boolean dao_result = uploadDAO.getInsert(pvo);//objectŸ���̴ϱ� ĳ�����ؼ� ��������
		System.out.println(pvo.getPtag());
		System.out.println("1=>"+pvo.getPno());
		if(dao_result){
			//���� ����-->upload���� ����(������ġ)

			if(uploadDAO.getInsertTag(uploadDAO.getPnoCheck(pvo), pvo.getPtag())){
				System.out.println("db ����");
				System.out.println("2=>"+pvo.getPno());
			}else {
				System.out.println("����");
			}
			// String root_path = request.getSession().getServletContext().getRealPath("/");
			 //String attach_path = "\\resources\\upload\\";
			System.out.println("���");
			File file = new File(pvo.getSavepath()+pvo.getPhoto_simage());
			
			try {
				pvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			result = "redirect://index.do";	//�ٲ����!!!!!
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
