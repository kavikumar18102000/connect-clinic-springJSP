package com.arya.clinic.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
public class User {
	
	 	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	 	
	 	private String userName;
	 	
	 	@Column(nullable = false,unique = true)
	    private String email;

	 	
	 	@Column(nullable = false)
	    private String password;


		public Long getId() {

			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		@Override
		public String toString() {
			return "User [id=" + id + ", userName=" + userName + ", email=" + email + ", password=" + password + "]";
		}

		public User() {
			super();
			// TODO Auto-generated constructor stub
		}
	 	
	 	
	 	

}
	 	
