package com.cub_navigator.webclient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cub_navigator.webclient.dao.CategoryDAO;
import com.cub_navigator.webclient.form.Category;

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
