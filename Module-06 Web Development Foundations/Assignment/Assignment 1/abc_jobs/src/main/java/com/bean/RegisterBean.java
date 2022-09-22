package com.bean;

public class RegisterBean {

	
	private String first_name;
	private String last_name;
	private String city;
	private String country;
	private String email;
	private String password;
	
	public RegisterBean(String first_name, String last_name, String city, String country,  String email, String password ) {
		this.first_name = first_name;
		this.last_name = last_name;
		this.city = city;
		this.country = country;
		this.email = email;
		this.password = password;
	}

	public String getFirstName() {
		return first_name;
	}

	public void setFirstName(String first_name) {
		this.first_name = first_name;
	}

	public String getLastName() {
		return last_name;
	}

	public void setLastName(String last_name) {
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
}
