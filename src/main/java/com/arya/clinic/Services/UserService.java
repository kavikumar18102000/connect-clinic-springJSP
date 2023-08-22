package com.arya.clinic.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arya.clinic.Entity.User;
import com.arya.clinic.Repository.UserRepostiroy;

@Service
public class UserService implements UserServieInterface{

	@Autowired
	private UserRepostiroy userRepostiroy;

	@Override
	public boolean addUser(User user) {
		User user1 = userRepostiroy.findByEmail(user.getEmail());
		if(user1==null) {
			userRepostiroy.save(user);
			return true;
		}
		return false;
		
	}

	@Override
	public User findUser(String email) {
		User user = userRepostiroy.findByEmail(email);
		if(user==null) {
			return null;
		}
		return user;
	}
	
	


}
