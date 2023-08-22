package com.arya.clinic.Entity;

import java.time.LocalTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Entity

public class Clinic {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long cId;

	
    private String clinicName;
    
    private String doctorName;
    
    private String clinicLocation;
    
    @Column(unique = true)
    private String clinicEmail;
    
    @Column(unique = true)
    private Long clinicPhone;
    
    private LocalTime openTime;
    
    private LocalTime closeTime;
    
    
	public Clinic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Clinic(Long cId, String clinicName, String doctorName, String clinicLocation, String clinicEmail,
			Long clinicPhone, LocalTime openTime, LocalTime closeTime) {
		super();
		this.cId = cId;
		this.clinicName = clinicName;
		this.doctorName = doctorName;
		this.clinicLocation = clinicLocation;
		this.clinicEmail = clinicEmail;
		this.clinicPhone = clinicPhone;
		this.openTime = openTime;
		this.closeTime = closeTime;
	}
	@Override
	public String toString() {
		return "Clinic [cId=" + cId + ", clinicName=" + clinicName + ", doctorName=" + doctorName + ", clinicLocation="
				+ clinicLocation + ", clinicEmail=" + clinicEmail + ", clinicPhone=" + clinicPhone + ", openTime="
				+ openTime + ", closeTime=" + closeTime + "]";
	}
	public Long getcId() {
		return cId;
	}
	public void setcId(Long cId) {
		this.cId = cId;
	}
	public String getClinicName() {
		return clinicName;
	}
	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getClinicLocation() {
		return clinicLocation;
	}
	public void setClinicLocation(String clinicLocation) {
		this.clinicLocation = clinicLocation;
	}
	public String getClinicEmail() {
		return clinicEmail;
	}
	public void setClinicEmail(String clinicEmail) {
		this.clinicEmail = clinicEmail;
	}
	public Long getClinicPhone() {
		return clinicPhone;
	}
	public void setClinicPhone(Long clinicPhone) {
		this.clinicPhone = clinicPhone;
	}
	public LocalTime getOpenTime() {
		return openTime;
	}
	public void setOpenTime(LocalTime openTime) {
		this.openTime = openTime;
	}
	public LocalTime getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(LocalTime closeTime) {
		this.closeTime = closeTime;
	}
    
    
}
