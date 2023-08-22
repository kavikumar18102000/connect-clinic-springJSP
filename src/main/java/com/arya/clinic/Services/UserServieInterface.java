package com.arya.clinic.Services;

import com.arya.clinic.Entity.User;

public interface UserServieInterface {
	
	public boolean addUser(User user);
	
	public User findUser(String email);

}
