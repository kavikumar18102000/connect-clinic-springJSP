package com.arya.clinic.Entity;

import java.time.LocalTime;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
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
    
    
    
    
}
