package com.fastfood.webclient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fastfood.webclient.dao.RestaurantDAO;
import com.fastfood.webclient.dao.UserDAO;
import com.fastfood.webclient.form.Restaurant;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private RestaurantDAO restaurantDAO;
	
	public RestaurantDAO getRestaurantDAO() {
		return restaurantDAO;
	}

	public void setRestaurantDAO(RestaurantDAO restaurantDAO) {
		this.restaurantDAO = restaurantDAO;
	}

	@Transactional
	public void addRestaurant(Restaurant restaurants) {
		restaurantDAO.addRestaurant(restaurants);
	}

	@Transactional
	public List<Restaurant> listRestaurant() {

		return restaurantDAO.listRestaurant();
	}

	@Transactional
	public void removeRestaurant(Long id) {
		restaurantDAO.removeRestaurant(id);
	}
	
	public Restaurant getRestaurant(Long id) {
		return restaurantDAO.getRestaurant(id);
	}
	
}
