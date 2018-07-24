package com.kg.vo;

import org.springframework.web.multipart.MultipartFile;

public class Category {

	private String c_name;
	private String c_color;
	private String c_imgname;
	private MultipartFile img;

	public Category() {
		super();
	}

	public Category(String c_name, String c_color, String c_imgname) {
		super();
		this.c_name = c_name;
		this.c_color = c_color;
		this.c_imgname = c_imgname;
	}

	public Category(String c_name, String c_color, String c_imgname, MultipartFile img) {
		super();
		this.c_name = c_name;
		this.c_color = c_color;
		this.c_imgname = c_imgname;
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

	public String getC_imgname() {
		return c_imgname;
	}

	public void setC_imgname(String c_imgname) {
		this.c_imgname = c_imgname;
	}

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Category [c_name=" + c_name + ", c_color=" + c_color + ", c_imgname=" + c_imgname + ", img=" + img
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((c_color == null) ? 0 : c_color.hashCode());
		result = prime * result + ((c_imgname == null) ? 0 : c_imgname.hashCode());
		result = prime * result + ((c_name == null) ? 0 : c_name.hashCode());
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
		Category other = (Category) obj;
		if (c_color == null) {
			if (other.c_color != null)
				return false;
		} else if (!c_color.equals(other.c_color))
			return false;
		if (c_imgname == null) {
			if (other.c_imgname != null)
				return false;
		} else if (!c_imgname.equals(other.c_imgname))
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
		return true;
	}

}
