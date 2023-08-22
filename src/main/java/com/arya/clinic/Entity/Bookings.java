package com.arya.clinic.Entity;

import java.security.KeyStore.PrivateKeyEntry;
import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Bookings {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long bookingId;
	private String clinicName;
	private String clinicEmail;
	private  String clinicAddress;
	private String doctorName;
	private String patientEmail;
	private String patientName;
	private String patientGender;
	private String slot;
	private String startTime;
	private String endTimeString;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date date;
	private Long patientPhone;
	
	public Bookings() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getBookingId() {
		return bookingId;
	}

	public void setBookingId(Long bookingId) {
		this.bookingId = bookingId;
	}

	public String getClinicName() {
		return clinicName;
	}

	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}

	public String getClinicEmail() {
		return clinicEmail;
	}

	public void setClinicEmail(String clinicEmail) {
		this.clinicEmail = clinicEmail;
	}

	public String getClinicAddress() {
		return clinicAddress;
	}

	public void setClinicAddress(String clinicAddress) {
		this.clinicAddress = clinicAddress;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getPatientEmail() {
		return patientEmail;
	}

	public void setPatientEmail(String patientEmail) {
		this.patientEmail = patientEmail;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientGender() {
		return patientGender;
	}

	public void setPatientGender(String patientGender) {
		this.patientGender = patientGender;
	}

	public String getSlot() {
		return slot;
	}

	public void setSlot(String slot) {
		this.slot = slot;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTimeString() {
		return endTimeString;
	}

	public void setEndTimeString(String endTimeString) {
		this.endTimeString = endTimeString;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getPatientPhone() {
		return patientPhone;
	}

	public void setPatientPhone(Long patientPhone) {
		this.patientPhone = patientPhone;
	}

	public Bookings(Long bookingId, String clinicName, String clinicEmail, String clinicAddress, String doctorName,
			String patientEmail, String patientName, String patientGender, String slot, String startTime,
			String endTimeString, Date date, Long patientPhone) {
		super();
		this.bookingId = bookingId;
		this.clinicName = clinicName;
		this.clinicEmail = clinicEmail;
		this.clinicAddress = clinicAddress;
		this.doctorName = doctorName;
		this.patientEmail = patientEmail;
		this.patientName = patientName;
		this.patientGender = patientGender;
		this.slot = slot;
		this.startTime = startTime;
		this.endTimeString = endTimeString;
		this.date = date;
		this.patientPhone = patientPhone;
	}

	@Override
	public String toString() {
		return "Bookings [bookingId=" + bookingId + ", clinicName=" + clinicName + ", clinicEmail=" + clinicEmail
				+ ", clinicAddress=" + clinicAddress + ", doctorName=" + doctorName + ", patientEmail=" + patientEmail
				+ ", patientName=" + patientName + ", patientGender=" + patientGender + ", slot=" + slot
				+ ", startTime=" + startTime + ", endTimeString=" + endTimeString + ", date=" + date + ", patientPhone="
				+ patientPhone + "]";
	}
	
	
	
	
	
	
	
	
		
	
	
	
	

}
