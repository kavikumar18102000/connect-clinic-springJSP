package com.arya.clinic.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.arya.clinic.Entity.User;
import java.util.List;


@Repository
public interface UserRepostiroy extends CrudRepository<User, Long> {
	
	public User findByEmail(String email);

}
