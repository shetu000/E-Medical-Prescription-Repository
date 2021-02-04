package com.adhaar.medical.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adhaar.medical.model.PrescriptionModel;

@Service
public class PrescriptionService {
	@Autowired
	private PrescriptionRepository probj;
	
	public PrescriptionModel addprescription(PrescriptionModel pobj)
	{
		System.out.println("INSIDE uploadprescription METHOD in SERVICE CLASS");
		pobj=probj.save(pobj);
		return pobj;
	}

	public ArrayList<PrescriptionModel> getprescription(int diseases)
	{
		ArrayList<PrescriptionModel> predetail=probj.findBydiseases(diseases);
		
		return predetail;
	}
	public ArrayList<PrescriptionModel> getallprescription(double adhaar)
	{
		ArrayList<PrescriptionModel> predetail=probj.findByadhaar(adhaar);
		
		return predetail;
	}
}
