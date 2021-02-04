package com.adhaar.medical.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adhaar.medical.model.DoctorModel;

@Service
public class DoctorService {
	@Autowired
	private DoctorRepository drobj;
	
	public DoctorModel adddoctorrecord(DoctorModel dobj)
	{
		System.out.println("INSIDE adddoctorRecord METHOD in SERVICE CLASS");
		
		dobj=drobj.save(dobj);
		
		return dobj;
	}
	
	public DoctorModel getdoctorRecordFromDb(String regno)
	{
		System.out.println("INSIDE getdoctorRecordFromDB METHOD in SERVICE CLASS");
		DoctorModel founddoctor=drobj.findById(regno).orElse(new DoctorModel());
		
		
		return founddoctor;
	}
	public ArrayList<DoctorModel> getnewdoctor()
	{
		int a=0;
		ArrayList<DoctorModel> doclist=drobj.findByacess(0);
		return doclist;
	}
	public void deleteDoctortRecord(String regno) 
	{
		System.out.println("INSIDE deleteDoctorRecord METHOD in SERVICE CLASS");
		
		drobj.deleteById(regno);
	}
	public DoctorModel acessDoctortRecord(String regno) 
	{
		
		System.out.println("INSIDE acessDoctorRecord METHOD in SERVICE CLASS");
		
		DoctorModel dobj=drobj.findById(regno).orElse(new DoctorModel());
		return dobj;
	}

}
