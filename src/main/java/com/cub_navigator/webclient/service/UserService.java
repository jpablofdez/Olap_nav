package com.cub_navigator.webclient.service;

import java.util.List;

import com.cub_navigator.webclient.form.Users;;

public interface UserService {
	
	public void addUser(Users users);
	public List<Users> listUser();
	public void removeUser(Long id);
	
	public boolean isValidUser(String user, String password);
	public Users getUser(String user, String password);
}
