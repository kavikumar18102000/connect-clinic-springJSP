package com.arya.clinic.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arya.clinic.Entity.Bookings;
import com.arya.clinic.Entity.Clinic;

@Repository
public interface ClinicRepository extends JpaRepository<Clinic,Long> {
	public List<Clinic> findAllByClinicLocation(String location);
	
	public Clinic findByClinicEmail(String email);
	
}