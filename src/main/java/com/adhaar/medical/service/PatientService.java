package com.adhaar.medical.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adhaar.medical.model.PatientModel;

@Service
public class PatientService {
	
	@Autowired
	private PatientRepository probj;
	
	public PatientModel addpatientrecord(PatientModel pobj)
	{
		System.out.println("INSIDE addPatientRecord METHOD in SERVICE CLASS");
		
		pobj=probj.save(pobj);
		
		return pobj;
	}
	
	public PatientModel getPatientRecordFromDb(double adhaar)
	{
		System.out.println("INSIDE getpatientRecordFromDB METHOD in SERVICE CLASS");
		PatientModel foundpatient=probj.findById(adhaar).orElse(new PatientModel());
		
		return foundpatient;
	}

}
