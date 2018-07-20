package com.kg.vo;

public class User {
	private String u_id;
	private String u_pwd;
	private String u_name;
	private String u_tel;
	private String u_email;
	private String u_ismanager;

	public User() {
	}
	
	public User(String u_id, String u_pwd, String u_name, String u_tel, String u_email, String u_ismanager) {
		super();
		this.u_id = u_id;
		this.u_pwd = u_pwd;
		this.u_name = u_name;
		this.u_tel = u_tel;
		this.u_email = u_email;
		this.u_ismanager = u_ismanager;
	}



	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}


	public String getU_tel() {
		return u_tel;
	}

	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_ismanager() {
		return u_ismanager;
	}

	public void setU_ismanager(String u_ismanager) {
		this.u_ismanager = u_ismanager;
	}


	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_pwd=" + u_pwd + ", u_name=" + u_name + ", u_tel="
				+ u_tel + ", u_email=" + u_email + ", u_ismanager=" + u_ismanager + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((u_email == null) ? 0 : u_email.hashCode());
		result = prime * result + ((u_id == null) ? 0 : u_id.hashCode());
		result = prime * result + ((u_ismanager == null) ? 0 : u_ismanager.hashCode());
		result = prime * result + ((u_name == null) ? 0 : u_name.hashCode());
		result = prime * result + ((u_pwd == null) ? 0 : u_pwd.hashCode());
		result = prime * result + ((u_tel == null) ? 0 : u_tel.hashCode());
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
		User other = (User) obj;
		if (u_email == null) {
			if (other.u_email != null)
				return false;
		} else if (!u_email.equals(other.u_email))
			return false;
		if (u_id == null) {
			if (other.u_id != null)
				return false;
		} else if (!u_id.equals(other.u_id))
			return false;
		if (u_ismanager == null) {
			if (other.u_ismanager != null)
				return false;
		} else if (!u_ismanager.equals(other.u_ismanager))
			return false;
		if (u_name == null) {
			if (other.u_name != null)
				return false;
		} else if (!u_name.equals(other.u_name))
			return false;
		if (u_pwd == null) {
			if (other.u_pwd != null)
				return false;
		} else if (!u_pwd.equals(other.u_pwd))
			return false;
		if (u_tel == null) {
			if (other.u_tel != null)
				return false;
		} else if (!u_tel.equals(other.u_tel))
			return false;
		return true;
	}
	
}
