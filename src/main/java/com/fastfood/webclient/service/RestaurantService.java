package com.fastfood.webclient.service;

import java.util.List;

import com.fastfood.webclient.form.Restaurant;

public interface RestaurantService {
	
	public void addRestaurant(Restaurant restaurant);
	public List<Restaurant> listRestaurant();
	public void removeRestaurant(Long id);
	public Restaurant getRestaurant(Long id);
	
}
