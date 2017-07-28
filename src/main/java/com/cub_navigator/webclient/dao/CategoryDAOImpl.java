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

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

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
	public List<Category> listCategory() {

		return sessionFactory.getCurrentSession().createQuery("from Category")
				.list();
	}

	
	@SuppressWarnings("unchecked")
	public Category getCategory(Long id){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Category.class);
		criteria.add(Restrictions.eq("id_category", id));	
		List<Category> categoryList = criteria.list();
		if((categoryList!=null) && (!categoryList.isEmpty())){
			return categoryList.get(0);
		} else {
			return new Category();
		}
	}
	
	
}
