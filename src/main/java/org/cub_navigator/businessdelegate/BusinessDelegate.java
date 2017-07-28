package org.cub_navigator.businessdelegate;

import com.cub_navigator.webclient.service.UserService;

public class BusinessDelegate {
	
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
public boolean isValidUser (String user, String  password){
	return userService.isValidUser(user, password);
}
	
}
