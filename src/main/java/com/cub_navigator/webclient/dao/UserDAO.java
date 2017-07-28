package com.cub_navigator.webclient.dao;

import java.util.List;

import com.cub_navigator.webclient.form.Users;

public interface UserDAO {
	
	public void addUser(Users user);
	public List<Users> listUsers();
	public void removeUser(Long id);
	
	public boolean isValidUser(String user, String password);
	public Users getUser(String user, String password);
}
