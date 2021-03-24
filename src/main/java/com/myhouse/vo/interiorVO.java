 package com.myhouse.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class interiorVO {

	String rno,ino,email,company,ititle,interior_image,interior_simage,
	idate,category,tone,color,price,season,detail_category,savepath,status,nickname,goods_price,goods_simage;
	
	CommonsMultipartFile interior_file;
	
	
	
	
	
	
	public String getGoods_simage() {
		return goods_simage;
	}

	public void setGoods_simage(String goods_simage) {
		this.goods_simage = goods_simage;
	}

	public String getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getIno() {
		return ino;
	}

	public void setIno(String ino) {
		this.ino = ino;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getItitle() {
		return ititle;
	}

	public void setItitle(String ititle) {
		this.ititle = ititle;
	}

	public String getInterior_image() {
		return interior_image;
	}

	public void setInterior_image(String interior_image) {
		this.interior_image = interior_image;
	}

	public String getInterior_simage() {
		return interior_simage;
	}

	public void setInterior_simage(String interior_simage) {
		this.interior_simage = interior_simage;
	}

	public String getIdate() {
		return idate;
	}

	public void setIdate(String idate) {
		this.idate = idate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTone() {
		return tone;
	}

	public void setTone(String tone) {
		this.tone = tone;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getDetail_category() {
		return detail_category;
	}

	public void setDetail_category(String detail_category) {
		this.detail_category = detail_category;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	

	public CommonsMultipartFile getInterior_file() {
		return interior_file;
	}

	public void setInterior_file(CommonsMultipartFile interior_file) {
		this.interior_file = interior_file;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
}
