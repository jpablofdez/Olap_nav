package com.cub_navigator.webclient.service;

import java.util.List;

import com.cub_navigator.webclient.form.Category;
import com.cub_navigator.webclient.form.Product;

public interface ProductService {
	
	public List<Product> listProduct();
	public Product getProduct(Long id);
	public List<Product> listProductbyCategory(Category category);
}
