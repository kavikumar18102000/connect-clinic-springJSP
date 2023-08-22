package com.arya.clinic.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.arya.clinic.Entity.Bookings;

@Repository
public interface BookingRepository extends CrudRepository<Bookings, Long> {
	public List<Bookings> findByPatientEmail(String email);
	
	public List<Bookings> findByClinicName(String clinicName);
	
	
}
