package com.fastfood.webclient.dao;

import java.util.List;

import com.fastfood.webclient.form.Category;

public interface CategoryDAO {
	
	public List<Category> listCategory();
	public Category getCategory(Long id);
}
