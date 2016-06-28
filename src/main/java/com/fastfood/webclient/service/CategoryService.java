package com.fastfood.webclient.service;

import java.util.List;
import com.fastfood.webclient.form.Category;

public interface CategoryService {
	
	public List<Category> listCategory();
	public Category getCategory(Long id);
}
