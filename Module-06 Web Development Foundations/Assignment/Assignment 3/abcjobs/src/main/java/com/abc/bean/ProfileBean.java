package com.abc.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_profile")
public class ProfileBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int profile_id;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private LoginBean user;
	
	private String first_name;
	private String last_name;
	private String city;
	private String country;
	
	
	public ProfileBean() {

	}

	public ProfileBean(LoginBean user, String first_name, String last_name, String city, String country) {
		super();
		this.user = user;
		this.first_name = first_name;
		this.last_name = last_name;
		this.city = city;
		this.country = country;
		
	}

	public int getProfile_id() {
		return profile_id;
	}

	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}

	public LoginBean getUser() {
		return user;
	}

	public void setUser(LoginBean user) {
		this.user = user;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	

	
}
