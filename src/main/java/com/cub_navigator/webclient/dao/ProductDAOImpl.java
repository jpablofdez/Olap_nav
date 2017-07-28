package com.fastfood.webclient.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fastfood.webclient.form.Category;
import com.fastfood.webclient.form.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	private HibernateTemplate ht;
	

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {

		return sessionFactory.getCurrentSession().createQuery("from Product")
				.list();
	}

	
	@SuppressWarnings("unchecked")
	public Product getProduct(Long id){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("id_product", id));	
		List<Product> productList = criteria.list();
		if((productList!=null) && (!productList.isEmpty())){
			return productList.get(0);
		} else {
			return new Product();
		}
	}

	public List<Product> listProductbyCategory(Category category){
		Product product = new Product();
		product.setCategory(category);
		return (List<Product>) product.getCategory();
		
	}
	
	
}
