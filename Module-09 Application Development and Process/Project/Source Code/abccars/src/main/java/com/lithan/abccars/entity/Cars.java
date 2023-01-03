package com.lithan.abccars.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Cars {
	
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "make_year")
    private String makeYear;
    
    @Column(name = "model")
    private String model;
    
    @Column(name = "make")
    private String make;
    
    @Column(name = "price")
    private BigDecimal price;
    
    @Column(name = "status")
    private String status;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private Users user;
    
    @OneToMany(mappedBy = "car", orphanRemoval = true)
    private Set<CarBidding> biddings = new HashSet<CarBidding>();

    public Cars() {}

	public Cars(String makeYear, String model, String make, BigDecimal price, Users user) {
		this.makeYear = makeYear;
		this.model = model;
		this.make = make;
		this.price = price;
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMakeYear() {
		return makeYear;
	}

	public void setMakeYear(String makeYear) {
		this.makeYear = makeYear;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Set<CarBidding> getBiddings() {
		return biddings;
	}

	public void setBiddings(Set<CarBidding> biddings) {
		this.biddings = biddings;
	}
    
    
    
}
