package com.arya.clinic.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	
	 	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	 	
	 	private String userName;
	 	
	 	@Column(nullable = false,unique = true)
	    private String email;

	 	
	 	@Column(nullable = false)
	    private String password;
	 	
	 	private String role;

	
}
	 	
