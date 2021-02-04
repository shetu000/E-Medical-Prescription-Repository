package com.adhaar.medical.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adhaar.medical.model.DoctorModel;
import com.adhaar.medical.model.PatientModel;
import com.adhaar.medical.service.DoctorService;
import com.adhaar.medical.service.PatientService;



@Controller
public class DoctorController {
	
	@Autowired
	private DoctorService docservice;
	@Autowired
	private PatientService patservice;
	
	@RequestMapping(method=RequestMethod.POST , value="/regdoctor")
	public  ModelAndView adddoctor(DoctorModel doctorobj)
	{
		System.out.println("inside controller");
		doctorobj.setAcess(0);
		doctorobj=docservice.adddoctorrecord(doctorobj);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST , value="/doclogin")
	public ModelAndView checkdoctor(@RequestParam String regno, String password, HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		DoctorModel dmobj=docservice.getdoctorRecordFromDb(regno);
		
		if(dmobj.getAcess()==1)
		{
		if( dmobj.getRegno().equals(regno) &&  dmobj.getPassword().equals(password))
		{
			session.setAttribute("regno", dmobj.getRegno());
			session.setAttribute("check",0);
			session.setAttribute("docname", dmobj.getName());
			mv.addObject("name", dmobj.getName());
			mv.setViewName("dr_afterlogin.jsp");
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("Dr_login.jsp");
		}
		}else
		{
			mv.addObject("errmsg", "Document not verified yet");
			mv.setViewName("Dr_login.jsp");
		}
		return mv;
	}
	@RequestMapping(method=RequestMethod.POST , value="/docafter_inputadhaar")
	public ModelAndView checkpatientadhaar(@RequestParam Double padhaar ,HttpSession session , String name)
	{
	
		ModelAndView mv=new ModelAndView();
		PatientModel pmobj=patservice.getPatientRecordFromDb(padhaar);
		if(Double.compare(pmobj.getAdhaar(), padhaar)==0)
		{
			session.setAttribute("adhaar", pmobj.getAdhaar());
			mv.addObject("name",name);
			mv.setViewName("dr_menu.jsp");
		}
		else
		{
			mv.addObject("errmsg", "Patient adhaar number not registered");
			mv.setViewName("dr_afterlogin.jsp");
		}
		return mv;
	}
	
	
}
