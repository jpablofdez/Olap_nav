package com.cub_navigator.webclient.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cub_navigator.webclient.form.Users;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	private HibernateTemplate ht;
	

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	public void addUser(Users users) {
		sessionFactory.getCurrentSession().save(users);
	}

	public List<Users> listUsers() {

		return sessionFactory.getCurrentSession().createQuery("from Users")
				.list();
	}

	public void removeUser(Long id) {
		Users users = (Users) sessionFactory.getCurrentSession().load(
				Users.class, id);
		if (null != users) {
			sessionFactory.getCurrentSession().delete(users);
		}

	}
	
	@SuppressWarnings("unchecked")
	public Users getUser(String user, String password){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Users.class);
		criteria.add(Restrictions.eq("user", user));
		criteria.add(Restrictions.eq("password", password));		
		List<Users> userList = criteria.list();
		if((userList!=null) && (!userList.isEmpty())){
			return userList.get(0);
		} else {
			return new Users();
		}
	}
	
	@SuppressWarnings("unchecked")
	public boolean isValidUser(String user, String password){
		boolean flag = false;
		try{
		
		    Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Users.class);
				criteria.add(Restrictions.eq("user", user));
				criteria.add(Restrictions.eq("password", password));
			List<Users> userList = criteria.list();
		//List<Users> userList = sessionFactory.getCurrentSession().createCriteria(Users.class)
		//.add(Restrictions.eq("user_name", user))
		//.add(Restrictions.eq("password", password))
		//.list();
			
			
		if((userList==null) || (userList.size()==0)){
			System.out.println("credencial incorrecta");
			flag = false;
		}else{
			System.out.println("credencial correcta");
			flag = true;
		}
		}catch(Exception e){
			System.out.println("Error!!");
			return false;
		}
		return flag;
	}
}
