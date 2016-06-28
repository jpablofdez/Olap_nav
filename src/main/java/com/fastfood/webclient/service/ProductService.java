package com.fastfood.webclient.service;

import java.util.List;
import com.fastfood.webclient.form.Category;
import com.fastfood.webclient.form.Product;

public interface ProductService {
	
	public List<Product> listProduct();
	public Product getProduct(Long id);
	public List<Product> listProductbyCategory(Category category);
}
