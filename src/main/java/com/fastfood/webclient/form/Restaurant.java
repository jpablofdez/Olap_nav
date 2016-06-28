package com.fastfood.webclient.form;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RESTAURANT")
public class Restaurant {
	


	@Id
	@Column(name="id_restaurant")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id_restaurant;
	
	@Column(name="name")
	private String name;
	
	@Column(name="description")
	private String description;
	
	
	@Column(name="address")
	private String address;

	@Column(name="location")
	private String location;

	@Column(name="telephone")
	private String telephone;
	
	
	public Long getId_restaurant() {
		return id_restaurant;
	}

	public void setId_restaurant(Long id_restaurant) {
		this.id_restaurant = id_restaurant;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
}
