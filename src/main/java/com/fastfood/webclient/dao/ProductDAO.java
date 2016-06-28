package com.fastfood.webclient.dao;

import java.util.List;

import com.fastfood.webclient.form.Category;
import com.fastfood.webclient.form.Product;

public interface ProductDAO {
	
	public List<Product> listProduct();
	public Product getProduct(Long id);
	public List<Product> listProductbyCategory(Category category);
}
