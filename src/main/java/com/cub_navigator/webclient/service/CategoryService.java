package com.cub_navigator.webclient.service;

import java.util.List;

import com.cub_navigator.webclient.form.Category;

public interface CategoryService {
	
	public List<Category> listCategory();
	public Category getCategory(Long id);
}
