package com.myhouse.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class PhotoVO {
	String pno,email,pcontent,pstyle,ptype,photo_image,
	photo_simage,pdate,savepath,ptag;
	

	int phits,plike,islike,pscrap,iscrap;


	CommonsMultipartFile file1, file2, file3, file4;

	
	public String getPtag() {
		return ptag;
	}
	
	public void setPtag(String ptag) {
		this.ptag = ptag;
	}
	
	
	
	public int getPscrap() {
		return pscrap;
	}

	public void setPscrap(int pscrap) {
		this.pscrap = pscrap;
	}

	public int getIscrap() {
		return iscrap;
	}

	public void setIscrap(int iscrap) {
		this.iscrap = iscrap;
	}

	public int getPlike() {
		return plike;
	}

	public void setPlike(int plike) {
		this.plike = plike;
	}

	public int getIslike() {
		return islike;
	}

	public void setIslike(int islike) {
		this.islike = islike;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getEmail() {
		return email;
	} 

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getPstyle() {
		return pstyle;
	}

	public void setPstyle(String pstyle) {
		this.pstyle = pstyle;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getPhoto_image() {
		return photo_image;
	}

	public void setPhoto_image(String photo_image) {
		this.photo_image = photo_image;
	}

	public String getPhoto_simage() {
		return photo_simage;
	}

	public void setPhoto_simage(String photo_simage) {
		this.photo_simage = photo_simage;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	public int getPhits() {
		return phits;
	}

	public void setPhits(int phits) {
		this.phits = phits;
	}

	public CommonsMultipartFile getFile1() {
		return file1;
	}

	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}

	public CommonsMultipartFile getFile2() {
		return file2;
	}

	public void setFile2(CommonsMultipartFile file2) {
		this.file2 = file2;
	}

	public CommonsMultipartFile getFile3() {
		return file3;
	}

	public void setFile3(CommonsMultipartFile file3) {
		this.file3 = file3;
	}

	public CommonsMultipartFile getFile4() {
		return file4;
	}

	public void setFile4(CommonsMultipartFile file4) {
		this.file4 = file4;
	}
	
	
}
