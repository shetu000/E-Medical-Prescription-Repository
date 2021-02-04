package com.adhaar.medical.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.adhaar.medical.model.PatientModel;
import com.adhaar.medical.service.PatientService;

@Controller
public class PatientController {
	@Autowired
	private PatientService patservice;
	
	
	@RequestMapping(method=RequestMethod.POST , value="/regpatient")
	public  ModelAndView addPatient(PatientModel patientobj)
	{
		System.out.println("inside controller");
		patientobj=patservice.addpatientrecord(patientobj);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST , value="/patlogin")
	public ModelAndView checkpatient(@RequestParam double adhaar, String password,HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		PatientModel pmobj=patservice.getPatientRecordFromDb(adhaar);
		
		if(Double.compare(pmobj.getAdhaar(), adhaar)==0)
		{
		
		if(pmobj.getPassword().equals(password))
		{
			session.setAttribute("check",0);
			session.setAttribute("adhaar",adhaar);
			mv.setViewName("patient_menu.jsp");
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("Patient_login.jsp");
		}
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("Patient_login.jsp");
		}
		return mv;
	}
	@RequestMapping( value="/patient_logout")
	public ModelAndView logoutpatient( HttpSession session)
	{
		ModelAndView mv=new ModelAndView();
		session.removeAttribute("adhaar");
		session.invalidate();
		mv.setViewName("home.jsp");
		return mv;
	}

}
