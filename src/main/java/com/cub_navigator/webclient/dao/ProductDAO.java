package com.cub_navigator.webclient.dao;

import java.util.List;

import com.cub_navigator.webclient.form.Category;
import com.cub_navigator.webclient.form.Product;

public interface ProductDAO {
	
	public List<Product> listProduct();
	public Product getProduct(Long id);
	public List<Product> listProductbyCategory(Category category);
}
