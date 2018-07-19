package com.kg.vo;

import java.util.Date;

public class Reservation {

	private int r_num;
	private String r_title;
	private String u_id;
	private int f_num;
	private Date r_date;
	private Date r_starttime;
	private Date r_endtime;
	private String r_type;
	
	public Reservation() {
	}
	public Reservation(String r_title, String u_id, int f_num, Date r_date, Date r_starttime, Date r_endtime, String r_type) {
		this.r_title = r_title;
		this.u_id = u_id;
		this.f_num = f_num;
		this.r_date = r_date;
		this.r_starttime = r_starttime;
		this.r_endtime = r_endtime;
		this.r_type = r_type;
	}
	public Reservation(int r_num, String r_title, String u_id, int f_num, Date r_date, Date r_starttime, Date r_endtime, String r_type) {
		this.r_num = r_num;
		this.r_title = r_title;
		this.u_id = u_id;
		this.f_num = f_num;
		this.r_date = r_date;
		this.r_starttime = r_starttime;
		this.r_endtime = r_endtime;
		this.r_type = r_type;
	}
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public Date getR_starttime() {
		return r_starttime;
	}
	public void setR_starttime(Date r_starttime) {
		this.r_starttime = r_starttime;
	}
	public Date getR_endtime() {
		return r_endtime;
	}
	public void setR_endtime(Date r_endtime) {
		this.r_endtime = r_endtime;
	}
	public String getR_type() {
		return r_type;
	}
	public void setR_type(String r_type) {
		this.r_type = r_type;
	}
	
	@Override
	public String toString() {
		return "Reservation [r_num=" + r_num + ", r_title=" + r_title + ", u_id=" + u_id + ", f_num=" + f_num
				+ ", r_date=" + r_date + ", r_starttime=" + r_starttime + ", r_endtime=" + r_endtime + ", r_type="
				+ r_type + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + f_num;
		result = prime * result + ((r_date == null) ? 0 : r_date.hashCode());
		result = prime * result + ((r_endtime == null) ? 0 : r_endtime.hashCode());
		result = prime * result + r_num;
		result = prime * result + ((r_starttime == null) ? 0 : r_starttime.hashCode());
		result = prime * result + ((r_title == null) ? 0 : r_title.hashCode());
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
		if (f_num != other.f_num)
			return false;
		if (r_date == null) {
			if (other.r_date != null)
				return false;
		} else if (!r_date.equals(other.r_date))
			return false;
		if (r_endtime == null) {
			if (other.r_endtime != null)
				return false;
		} else if (!r_endtime.equals(other.r_endtime))
			return false;
		if (r_num != other.r_num)
			return false;
		if (r_starttime == null) {
			if (other.r_starttime != null)
				return false;
		} else if (!r_starttime.equals(other.r_starttime))
			return false;
		if (r_title == null) {
			if (other.r_title != null)
				return false;
		} else if (!r_title.equals(other.r_title))
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
