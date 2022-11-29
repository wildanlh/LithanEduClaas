package com.lithan.assignmenttwo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbstore")
public class Store {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String phone_number;
	private String localities;
	
	public Store() {
		
	}

	public Store(String name, String phone_number, String localities) {
		this.name = name;
		this.phone_number = phone_number;
		this.localities = localities;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getLocalities() {
		return localities;
	}

	public void setLocalities(String localities) {
		this.localities = localities;
	}
}
