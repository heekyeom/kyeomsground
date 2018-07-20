package com.kg.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Category {
	
	private String c_name;
	private String c_color;
	private String imgname;
	private MultipartFile img;
	
	public Category() {
		super();
	}
	public Category(String c_name, String c_color, String imgname, MultipartFile img) {
		super();
		this.c_name = c_name;
		this.c_color = c_color;
		this.imgname = imgname;
		this.img = img;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_color() {
		return c_color;
	}
	public void setC_color(String c_color) {
		this.c_color = c_color;
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
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((c_color == null) ? 0 : c_color.hashCode());
		result = prime * result + ((c_name == null) ? 0 : c_name.hashCode());
		result = prime * result + ((img == null) ? 0 : img.hashCode());
		result = prime * result + ((imgname == null) ? 0 : imgname.hashCode());
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
		Category other = (Category) obj;
		if (c_color == null) {
			if (other.c_color != null)
				return false;
		} else if (!c_color.equals(other.c_color))
			return false;
		if (c_name == null) {
			if (other.c_name != null)
				return false;
		} else if (!c_name.equals(other.c_name))
			return false;
		if (img == null) {
			if (other.img != null)
				return false;
		} else if (!img.equals(other.img))
			return false;
		if (imgname == null) {
			if (other.imgname != null)
				return false;
		} else if (!imgname.equals(other.imgname))
			return false;
		return true;
	}
	
}
