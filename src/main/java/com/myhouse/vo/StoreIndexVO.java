package com.myhouse.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class StoreIndexVO {
	String email, nickname, member_spimage, selleremail, addr, addr1, addr2, 
		   addr_num, memo, phone, hp1, hp2, hp3, name,
		   ino, company, ititle, interior_simage, category, tone, color, season, icontent, idate,
		   gno, goods_simage, goods_name, goods_price,
		   vno, vcontent, review_image, review_simage, vdate, savepath,
		   sno,
		   qno, qtype, qcontent, qreply, qdate,qdate_r,
		   ono, ostatus,
		   ocount;
	double star_avg, star_float, ravg;
	int rno, star_count, review_cnt, scrap_cnt, gno_cnt, star, qstatus, qno_count,seller,sstatus, star_cnt, istatus;
	CommonsMultipartFile file1;
	
	
	public int getIstatus() {
		return istatus;
	}
	public void setIstatus(int istatus) {
		this.istatus = istatus;
	}
	public String getIdate() {
		return idate;
	}
	public void setIdate(String idate) {
		this.idate = idate;
	}
	public double getRavg() {
		return ravg;
	}
	public void setRavg(double ravg) {
		this.ravg = ravg;
	}
	public int getStar_cnt() {
		return star_cnt;
	}
	public void setStar_cnt(int star_cnt) {
		this.star_cnt = star_cnt;
	}
	public String getOcount() {
		return ocount;
	}
	public void setOcount(String ocount) {
		this.ocount = ocount;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr_num() {
		return addr_num;
	}
	public void setAddr_num(String addr_num) {
		this.addr_num = addr_num;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSelleremail() {
		return selleremail;
	}
	public void setSelleremail(String selleremail) {
		this.selleremail = selleremail;
	}
	public int getSeller() {
		return seller;
	}
	public void setSeller(int seller) {
		this.seller = seller;
	}
	public int getSstatus() {
		return sstatus;
	}
	public void setSstatus(int sstatus) {
		this.sstatus = sstatus;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getReview_image() {
		return review_image;
	}
	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}
	public String getSavepath() {
		return savepath;
	}
	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	public CommonsMultipartFile getFile1() {
		return file1;
	}
	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}
	public String getQdate_r() {
		return qdate_r;
	}
	public void setQdate_r(String qdate_r) {
		this.qdate_r = qdate_r;
	}
	public String getQno() {
		return qno;
	}
	public void setQno(String qno) {
		this.qno = qno;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQreply() {
		return qreply;
	}
	public void setQreply(String qreply) {
		this.qreply = qreply;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public String getOno() {
		return ono;
	}
	public void setOno(String ono) {
		this.ono = ono;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public int getQstatus() {
		return qstatus;
	}
	public void setQstatus(int qstatus) {
		this.qstatus = qstatus;
	}
	public int getQno_count() {
		return qno_count;
	}
	public void setQno_count(int qno_count) {
		this.qno_count = qno_count;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMember_spimage() {
		return member_spimage;
	}
	public void setMember_spimage(String member_spimage) {
		this.member_spimage = member_spimage;
	}
	public String getVcontent() {
		return vcontent;
	}
	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}
	public String getReview_simage() {
		return review_simage;
	}
	public void setReview_simage(String review_simage) {
		this.review_simage = review_simage;
	}
	public String getVdate() {
		return vdate;
	}
	public void setVdate(String vdate) {
		this.vdate = vdate;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public double getStar_float() {
		return star_float;
	}
	public void setStar_float(double star_float) {
		this.star_float = star_float;
	}
	public String getInterior_simage() {
		return interior_simage;
	}
	public void setInterior_simage(String interior_simage) {
		this.interior_simage = interior_simage;
	}
	public int getGno_cnt() {
		return gno_cnt;
	}
	public void setGno_cnt(int gno_cnt) {
		this.gno_cnt = gno_cnt;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public int getScrap_cnt() {
		return scrap_cnt;
	}
	public void setScrap_cnt(int scrap_cnt) {
		this.scrap_cnt = scrap_cnt;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getVno() {
		return vno;
	}
	public void setVno(String vno) {
		this.vno = vno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getReview_cnt() {
		return review_cnt;
	}
	public void setReview_cnt(int review_cnt) {
		this.review_cnt = review_cnt;
	}
	public String getIno() {
		return ino;
	}
	public void setIno(String ino) {
		this.ino = ino;
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
	public String getGno() {
		return gno;
	}
	public void setGno(String gno) {
		this.gno = gno;
	}
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
	public double getStar_avg() {
		return star_avg;
	}
	public void setStar_avg(double star_avg) {
		this.star_avg = star_avg;
	}
	public int getStar_count() {
		return star_count;
	}
	public void setStar_count(int star_count) {
		this.star_count = star_count;
	}
	
	
}
