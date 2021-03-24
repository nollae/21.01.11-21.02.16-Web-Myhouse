package com.myhouse.vo;

public class photo_commentVO {
	String cno,email,pno,c_tag,c_content,c_like,cdate,c_group,nickname,member_simage;
	int c_depth, rcount, getwrite, cliked;
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMember_simage() {
		return member_simage;
	}
	public void setMember_simage(String member_simage) {
		this.member_simage = member_simage;
	}
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getC_tag() {
		return c_tag;
	}
	public void setC_tag(String c_tag) {
		this.c_tag = c_tag;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_like() {
		return c_like;
	}
	public void setC_like(String c_like) {
		this.c_like = c_like;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getC_group() {
		return c_group;
	}
	public void setC_group(String c_group) {
		this.c_group = c_group;
	}
	public int getC_depth() {
		return c_depth;
	}
	public void setC_depth(int c_depth) {
		this.c_depth = c_depth;
	}
	public int getGetwrite() {
		return getwrite;
	}
	public void setGetwrite(int getwrite) {
		this.getwrite = getwrite;
	}
	public int getCliked() {
		return cliked;
	}
	public void setCliked(int cliked) {
		this.cliked = cliked;
	}
	
}
