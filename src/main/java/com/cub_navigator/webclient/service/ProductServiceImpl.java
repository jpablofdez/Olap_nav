package com.cub_navigator.webclient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cub_navigator.webclient.dao.ProductDAO;
import com.cub_navigator.webclient.form.Category;
import com.cub_navigator.webclient.form.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	public List<Product> listProduct() {

		return productDAO.listProduct();
	}

	public Product getProduct(Long id) {
		return productDAO.getProduct(id);
	}
	public List<Product> listProductbyCategory(Category category){
		return productDAO.listProductbyCategory(category);
	}
}
