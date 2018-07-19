package com.kg.vo;

import java.util.Date;

public class Reservation {

	private int r_num;
	private String u_id;
	private int f_id;
	private Date r_date;
	private Date r_start;
	private Date r_end;
	private String r_type;
	
	public Reservation() {
	}
	public Reservation(int r_num, String u_id, int f_id, Date r_date, Date r_start, Date r_end, String r_type) {
		super();
		this.r_num = r_num;
		this.u_id = u_id;
		this.f_id = f_id;
		this.r_date = r_date;
		this.r_start = r_start;
		this.r_end = r_end;
		this.r_type = r_type;
	}
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public Date getR_start() {
		return r_start;
	}
	public void setR_start(Date r_start) {
		this.r_start = r_start;
	}
	public Date getR_end() {
		return r_end;
	}
	public void setR_end(Date r_end) {
		this.r_end = r_end;
	}
	public String getR_type() {
		return r_type;
	}
	public void setR_type(String r_type) {
		this.r_type = r_type;
	}
	
	@Override
	public String toString() {
		return "Reservation [r_num=" + r_num + ", u_id=" + u_id + ", f_id=" + f_id + ", r_date=" + r_date + ", r_start="
				+ r_start + ", r_end=" + r_end + ", r_type=" + r_type + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + f_id;
		result = prime * result + ((r_date == null) ? 0 : r_date.hashCode());
		result = prime * result + ((r_end == null) ? 0 : r_end.hashCode());
		result = prime * result + r_num;
		result = prime * result + ((r_start == null) ? 0 : r_start.hashCode());
		result = prime * result + ((r_type == null) ? 0 : r_type.hashCode());
		result = prime * result + ((u_id == null) ? 0 : u_id.hashCode());
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
		Reservation other = (Reservation) obj;
		if (f_id != other.f_id)
			return false;
		if (r_date == null) {
			if (other.r_date != null)
				return false;
		} else if (!r_date.equals(other.r_date))
			return false;
		if (r_end == null) {
			if (other.r_end != null)
				return false;
		} else if (!r_end.equals(other.r_end))
			return false;
		if (r_num != other.r_num)
			return false;
		if (r_start == null) {
			if (other.r_start != null)
				return false;
		} else if (!r_start.equals(other.r_start))
			return false;
		if (r_type == null) {
			if (other.r_type != null)
				return false;
		} else if (!r_type.equals(other.r_type))
			return false;
		if (u_id == null) {
			if (other.u_id != null)
				return false;
		} else if (!u_id.equals(other.u_id))
			return false;
		return true;
	}
	
}
