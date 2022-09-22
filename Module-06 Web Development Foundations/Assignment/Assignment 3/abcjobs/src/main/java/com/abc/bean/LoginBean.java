package com.abc.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "users")
public class LoginBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;
	
	private String email;
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
	private ProfileBean profile;

	public LoginBean() {

	}

	public LoginBean(String email, String password, ProfileBean profile) {
		super();
		this.email = email;
		this.password = password;
		this.profile = profile;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ProfileBean getProfile() {
		return profile;
	}

	public void setProfile(ProfileBean profile) {
		this.profile = profile;
	}
}
