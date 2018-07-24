package com.kg.vo;

import org.springframework.web.multipart.MultipartFile;

public class Facility {
	
	private int f_num;
	private String c_name;
	private String f_name;
	private String f_address;
	private String f_tel;
	private int f_price;
	private int f_max;
	private int f_opentime;
	private int f_closetime;
	private int f_maxtime;
	private String f_imgname;
	private MultipartFile img;
	

	public Facility() {
		super();
	}

	

	public Facility(String c_name, String f_name, String f_address, String f_tel, int f_price, int f_max,
			int f_opentime, int f_closetime, int f_maxtime, String f_imgname) {
		super();
		this.c_name = c_name;
		this.f_name = f_name;
		this.f_address = f_address;
		this.f_tel = f_tel;
		this.f_price = f_price;
		this.f_max = f_max;
		this.f_opentime = f_opentime;
		this.f_closetime = f_closetime;
		this.f_maxtime = f_maxtime;
		this.f_imgname = f_imgname;
	}



	public Facility(int f_num, String c_name, String f_name, String f_address, String f_tel, int f_price, int f_max,
			int f_opentime, int f_closetime, int f_maxtime, String f_imgname, MultipartFile img) {
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
		this.f_imgname = f_imgname;
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



	public int getF_opentime() {
		return f_opentime;
	}



	public void setF_opentime(int f_opentime) {
		this.f_opentime = f_opentime;
	}



	public int getF_closetime() {
		return f_closetime;
	}



	public void setF_closetime(int f_closetime) {
		this.f_closetime = f_closetime;
	}



	public int getF_maxtime() {
		return f_maxtime;
	}



	public void setF_maxtime(int f_maxtime) {
		this.f_maxtime = f_maxtime;
	}



	public String getF_imgname() {
		return f_imgname;
	}



	public void setF_imgname(String f_imgname) {
		this.f_imgname = f_imgname;
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
				+ ", f_closetime=" + f_closetime + ", f_maxtime=" + f_maxtime + ", f_imgname=" + f_imgname + ", img="
				+ img + "]";
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((c_name == null) ? 0 : c_name.hashCode());
		result = prime * result + ((f_address == null) ? 0 : f_address.hashCode());
		result = prime * result + f_closetime;
		result = prime * result + ((f_imgname == null) ? 0 : f_imgname.hashCode());
		result = prime * result + f_max;
		result = prime * result + f_maxtime;
		result = prime * result + ((f_name == null) ? 0 : f_name.hashCode());
		result = prime * result + f_num;
		result = prime * result + f_opentime;
		result = prime * result + f_price;
		result = prime * result + ((f_tel == null) ? 0 : f_tel.hashCode());
		result = prime * result + ((img == null) ? 0 : img.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Facility other = (Facility) obj;
		if (c_name == null) {
			if (other.c_name != null)
				return false;
		} else if (!c_name.equals(other.c_name))
			return false;
		if (f_address == null) {
			if (other.f_address != null)
				return false;
		} else if (!f_address.equals(other.f_address))
			return false;
		if (f_closetime != other.f_closetime)
			return false;
		if (f_imgname == null) {
			if (other.f_imgname != null)
				return false;
		} else if (!f_imgname.equals(other.f_imgname))
			return false;
		if (f_max != other.f_max)
			return false;
		if (f_maxtime != other.f_maxtime)
			return false;
		if (f_name == null) {
			if (other.f_name != null)
				return false;
		} else if (!f_name.equals(other.f_name))
			return false;
		if (f_num != other.f_num)
			return false;
		if (f_opentime != other.f_opentime)
			return false;
		if (f_price != other.f_price)
			return false;
		if (f_tel == null) {
			if (other.f_tel != null)
				return false;
		} else if (!f_tel.equals(other.f_tel))
			return false;
		if (img == null) {
			if (other.img != null)
				return false;
		} else if (!img.equals(other.img))
			return false;
		return true;
	}
	
	
}
