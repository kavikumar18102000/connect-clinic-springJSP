package com.arya.clinic.Services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arya.clinic.Entity.Bookings;
import com.arya.clinic.Entity.Clinic;
import com.arya.clinic.Repository.BookingRepository;
import com.arya.clinic.Repository.ClinicRepository;

@Service
public class ClinicService implements ClinicValidation {

	@Autowired
	private ClinicRepository clinicRepository;
	
	@Autowired
	private BookingRepository bookingRepository;
	
	
	
	public Clinic addClinic() {
		Clinic clinic = new Clinic();
		return clinicRepository.save(clinic);
	}



	@Override
	public List<Clinic> getClinics(String location) {

		List<Clinic> clinicList = new ArrayList<>();
		clinicList.addAll(clinicRepository.findAllByClinicLocation(location));
		return clinicList;
	}
	



	@Override
	public Clinic findClinic(String email) {		
		return clinicRepository.findByClinicEmail(email);
	}
	
	public List<Bookings> getAllBookings(String clinicName) {
		List<Bookings> list = bookingRepository.findByClinicName(clinicName);
		return list;
	}
	
	public void addBooking(Bookings book) {
		bookingRepository.save(book);
	}



	@Override
	public List<Bookings> getAllUserBookings(String email) {
		List<Bookings> list = bookingRepository.findByPatientEmail(email);
		return list;
	}



	@Override
	public boolean deleteBooking(Long id) {
		bookingRepository.deleteById(id);
		if(bookingRepository.findById(id).isEmpty()) {
			return true;
		}
		return false;
	}
}
