package com.carshop.users;

public class User {
	
	private int uno, enabled;

	private String username, password, authority, uname, uemail;

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public User() {

	}

	public User(int uno, int enabled, String username, String password, String authority, String uname, String uemail) {

		this.uno = uno;
		this.enabled = enabled;
		this.username = username;
		this.password = password;
		this.authority = authority;
		this.uname = uname;
		this.uemail = uemail;
	}

	
	
	
}
