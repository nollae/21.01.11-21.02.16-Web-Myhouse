package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.SessionVO;
import com.spring.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	/** Ŀ�´�Ƽ ����Ʈ **/
	@RequestMapping(value="/community_index.do", method=RequestMethod.GET)
	public ModelAndView community_index(String rpage, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo != null) {
			return communityService.getList(rpage, svo.getEmail());
		}else {
			return communityService.getList(rpage, "");
		}
	}
	
	/** Ŀ�´�Ƽ ����Ʈ ī�װ�**/
	@ResponseBody
	@RequestMapping(value="community_index_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String community_index_proc(String order, String type, String style, String rpage, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo != null) {
			return communityService.getCommunityListAjax(order, type, style, rpage, svo.getEmail());
		}else {
			return communityService.getCommunityListAjax(order, type, style, rpage,"");
		}
	}
	
	/** Ŀ�´�Ƽ ������**/
	@RequestMapping(value="/community_page.do", method=RequestMethod.GET)
	public ModelAndView community_page(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		String email ="";
		if(svo != null) {
			email=svo.getEmail();
		}
		return communityService.getContent(pno,email);
	}
	
	@RequestMapping(value="/product_tag.do", method=RequestMethod.GET)
	public ModelAndView product_tag(String value) {
		return communityService.getGoodsList(value);
	}
	@RequestMapping(value="/tag.do", method=RequestMethod.GET)
	public String product_tag() {
		return "/community/tag";
	}
	
	/** ��ǰ �������� **/
	@ResponseBody
	@RequestMapping(value="/find_goods.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String find_goods(String gname) {
		return communityService.getGoods(gname);
	}
	
	/** �������� **/
	@RequestMapping(value="/photo_update.do", method=RequestMethod.GET)
	public ModelAndView photo_update(String pno) {
		return communityService.getUpdate(pno);
	}
	
	/** �������� ó�� **/
	@RequestMapping(value="/update_photo_proc.do", method=RequestMethod.POST)
	public ModelAndView photo_update(PhotoVO vo, HttpServletRequest request) {
		String path1 = request.getSession().getServletContext().getRealPath("/");
		String path2 = "\\resources\\upload\\";
		vo.setSavepath(path1+path2);
		
		return communityService.getResultUpdate(vo);
	}
	
	/** �������� **/
	@ResponseBody
	@RequestMapping(value="/photo_delete_proc.do", method=RequestMethod.GET)
	public String photo_delete_proc(String pno) {
		return communityService.getDelete(pno);
	}
	
	/** �ȷο� **/
	@ResponseBody
	@RequestMapping(value="/follow_proc.do", method=RequestMethod.GET)
	public String follow_proc(String w_email, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo == null) return null;
		else return communityService.getFollow(w_email, svo.getEmail());
		
	}
	
	/** �ȷο� ��� **/
	@ResponseBody
	@RequestMapping(value="/follow_cancel_proc.do", method=RequestMethod.GET)
	public String follow_cancel_proc(String w_email, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteFollow(w_email, svo.getEmail());
	}
	
	/** ���ƿ� **/
	@ResponseBody
	@RequestMapping(value="/like_proc.do", method=RequestMethod.GET)
	public String like_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if (svo == null) {
			return null;
		}else {
			return communityService.getLike(pno, svo.getEmail());
		}
		
	}
	
	/** ���ƿ� ��� **/
	@ResponseBody
	@RequestMapping(value="/like_cancel_proc.do", method=RequestMethod.GET)
	public String like_cancel_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteLike(pno, svo.getEmail());
	}
	
	/** ��ũ�� **/
	@ResponseBody
	@RequestMapping(value="/scrap_proc.do", method=RequestMethod.GET)
	public String scrap_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if (svo == null)  return null;
		else return communityService.getScrap(pno, svo.getEmail());
	}
	
	/** ��ũ�� ��� **/
	@ResponseBody
	@RequestMapping(value="/scrap_cancel_proc.do", method=RequestMethod.GET)
	public String scrap_cancel_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteScrap(pno, svo.getEmail());
	}
	
	/**��� �ޱ�**/
	@ResponseBody
	@RequestMapping(value="/comment_write_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String comment_write_proc(String pno, String content, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo == null) return null;
		else return communityService.getCommentWrite(pno, content, svo.getEmail());
	}
	
	/**��� �ޱ�**/
	@ResponseBody
	@RequestMapping(value="/comment_reply_write_proc.do", method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8")
	public String comment_reply_write_proc(String pno, String tag, String content, String cgroup,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if (svo == null) return null;
		else return communityService.getReplyWrite(pno, tag, content, cgroup, svo.getEmail());
	}
	
	/** �ڽ� ����� �ִ� ��� ����**/
	@ResponseBody
	@RequestMapping(value="/comment_update_proc.do", method=RequestMethod.GET)
	public String comment_update_proc(String cno) {
		return communityService.getCommentUpdate(cno);
	}
	
	/**��� ����**/
	@ResponseBody
	@RequestMapping(value="/comment_delete_proc.do", method=RequestMethod.GET)
	public String comment_delete_proc(String cno) {
		return communityService.getCommentDelete(cno);
	}
	
	/** ��� ���ƿ� **/
	@ResponseBody
	@RequestMapping(value="/comment_like_proc.do", method=RequestMethod.GET)
	public String commnet_like_proc(String cno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo == null) return null;
		else return communityService.getCommentLike(cno, svo.getEmail());
		
	}
	
	/** ��� ���ƿ� ��� **/
	@ResponseBody
	@RequestMapping(value="/comment_like_cancel_proc.do", method=RequestMethod.GET)
	public String commnet_like_cancel_proc(String cno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteCommentLike(cno, svo.getEmail());
	}
	
}
