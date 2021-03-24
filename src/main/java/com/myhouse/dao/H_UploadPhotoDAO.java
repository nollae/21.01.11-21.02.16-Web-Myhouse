package com.myhouse.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.StoreIndexVO;

public class H_UploadPhotoDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.uploadphoto";	
	
	/**
	 * Insert : 글쓰기 
	 */
	public boolean getInsert(PhotoVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insert",vo);
		if(value != 0) result = true;
		return result;
	}
	/**
	 * 태그 넣기
	 */
	public boolean getInsertTag(String pno,String ptags) {
		Map<String,String> param = new HashMap<String,String>();
			boolean result =true;			
	
		List<String> ptag = Arrays.asList(ptags.split(","));
			
			for(String gno:ptag) {
				param.put("pno", String.valueOf(pno));
				param.put("gno", String.valueOf(gno));
		
				System.out.println(param.get("pno")); 
				System.out.println(param.get("gno"));
		
				int i = sqlSession.insert(namespace+".InsertTag",param);
				if(i == 0) {
					result = false;
				}
				System.out.println(i);
			}
		return result;
	}
	/**
	 * pno 가져오기
	 * @return
	 */
		public String getPnoCheck(PhotoVO pvo) {
			Map<String,String> param = new HashMap<String,String>();
			System.out.println("이메일값->"+pvo.getEmail());
			param.put("email", String.valueOf(pvo.getEmail()));
			param.put("pcontent", String.valueOf(pvo.getPcontent()));
			param.put("pstyle", String.valueOf(pvo.getPstyle()));
			param.put("ptype", String.valueOf(pvo.getPtype()));
			param.put("ptag", String.valueOf(pvo.getPtag()));
			param.put("photo_image", String.valueOf(pvo.getPhoto_image()));
			param.put("photo_simage", String.valueOf(pvo.getPhoto_simage()));
		
			return sqlSession.selectOne(namespace+".pnoCheck",param);
		}
	
	// store_index - list
		public ArrayList<StoreIndexVO> getInteriorList(String value){
			List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".list1", value);
			return (ArrayList<StoreIndexVO>)interior_list;
		} 
	
	
}








