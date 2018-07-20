package com.kg.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Facility {
	
	private int f_num;
	private String c_name;
	private String f_name;
	private String f_address;
	private String f_tel;
	private int f_price;
	private int f_max;
	private Date f_opentime;
	private Date f_closetime;
	private Date f_maxtime;
	private String imgname;
	private MultipartFile img;
	
	public Facility() {
	}

	public Facility(int f_num, String c_name, String f_name, String f_address, String f_tel, int f_price, int f_max,
			Date f_opentime, Date f_closetime, Date f_maxtime, String imgname, MultipartFile img) {
		super();
		this.f_num = f_num;
		this.c_name = c_name;
		this.f_name = f_name;
		this.f_address = f_address;
		this.f_tel = f_tel;
		this.f_price = f_price;
		this.f_max = f_max;
		this.f_opentime = f_opentime;
		this.f_closetime = f_closetime;
		this.f_maxtime = f_maxtime;
		this.imgname = imgname;
		this.img = img;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_address() {
		return f_address;
	}

	public void setF_address(String f_address) {
		this.f_address = f_address;
	}

	public String getF_tel() {
		return f_tel;
	}

	public void setF_tel(String f_tel) {
		this.f_tel = f_tel;
	}

	public int getF_price() {
		return f_price;
	}

	public void setF_price(int f_price) {
		this.f_price = f_price;
	}

	public int getF_max() {
		return f_max;
	}

	public void setF_max(int f_max) {
		this.f_max = f_max;
	}

	public Date getF_opentime() {
		return f_opentime;
	}

	public void setF_opentime(Date f_opentime) {
		this.f_opentime = f_opentime;
	}

	public Date getF_closetime() {
		return f_closetime;
	}

	public void setF_closetime(Date f_closetime) {
		this.f_closetime = f_closetime;
	}

	public Date getF_maxtime() {
		return f_maxtime;
	}

	public void setF_maxtime(Date f_maxtime) {
		this.f_maxtime = f_maxtime;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Facility [f_num=" + f_num + ", c_name=" + c_name + ", f_name=" + f_name + ", f_address=" + f_address
				+ ", f_tel=" + f_tel + ", f_price=" + f_price + ", f_max=" + f_max + ", f_opentime=" + f_opentime
				+ ", f_closetime=" + f_closetime + ", f_maxtime=" + f_maxtime + ", imgname=" + imgname + ", img=" + img
				+ "]";
	}
	
	

	
	
	
}
