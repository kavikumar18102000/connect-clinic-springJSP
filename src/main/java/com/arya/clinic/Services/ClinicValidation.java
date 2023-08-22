package com.arya.clinic.Services;

import java.util.List;

import com.arya.clinic.Entity.Bookings;
import com.arya.clinic.Entity.Clinic;

public interface ClinicValidation {
	
	public List<Clinic> getClinics(String location);
	
	public Clinic findClinic(String email);
	
	public List<Bookings> getAllUserBookings(String email);
	
	public boolean deleteBooking(Long id);
}
