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

import com.fastfood.webclient.form.Restaurant;

@Repository
@Transactional
public class RestaurantDAOImpl implements RestaurantDAO {

	@Autowired
	private SessionFactory sessionFactory;

	private HibernateTemplate ht;
	

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	public void addRestaurant(Restaurant restaurants) {
		sessionFactory.getCurrentSession().save(restaurants);
	}

	@SuppressWarnings("unchecked")
	public List<Restaurant> listRestaurant() {

		return sessionFactory.getCurrentSession().createQuery("from Restaurant")
				.list();
	}

	public void removeRestaurant(Long id) {
		Restaurant restaurants = (Restaurant) sessionFactory.getCurrentSession().load(
				Restaurant.class, id);
		if (null != restaurants) {
			sessionFactory.getCurrentSession().delete(restaurants);
		}

	}
	
	@SuppressWarnings("unchecked")
	public Restaurant getRestaurant(Long id){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Restaurant.class);
		criteria.add(Restrictions.eq("id_restaurant", id));	
		List<Restaurant> restaurantList = criteria.list();
		if((restaurantList!=null) && (!restaurantList.isEmpty())){
			return restaurantList.get(0);
		} else {
			return new Restaurant();
		}
	}
	
	
}
