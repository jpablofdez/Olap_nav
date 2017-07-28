package com.cub_navigator.webclient.dao;

import java.util.List;

import com.cub_navigator.webclient.form.Category;

public interface CategoryDAO {
	
	public List<Category> listCategory();
	public Category getCategory(Long id);
}
