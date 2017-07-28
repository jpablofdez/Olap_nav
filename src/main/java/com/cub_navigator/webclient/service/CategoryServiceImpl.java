package com.fastfood.webclient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fastfood.webclient.dao.CategoryDAO;
import com.fastfood.webclient.form.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Transactional
	public List<Category> listCategory() {

		return categoryDAO.listCategory();
	}

	public Category getCategory(Long id) {
		return categoryDAO.getCategory(id);
	}
	
}
