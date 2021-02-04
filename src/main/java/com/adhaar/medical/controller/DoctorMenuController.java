package com.adhaar.medical.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DoctorMenuController {
	
	
	
	@RequestMapping( value="/input_adhaar")
	public ModelAndView removepatient( HttpSession session)
	{
		ModelAndView mv= new ModelAndView();
		session.removeAttribute("adhaar");
		mv.setViewName("dr_afterlogin.jsp");
		return mv;
	}
	
	@RequestMapping(value="/prescriptionpage")
	public ModelAndView addprescriptionredirect()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("add_prescription.jsp");
		return mv;
	}
	
	@RequestMapping(value="/searchpage")
	public ModelAndView searchprescriptionredirect(HttpSession session)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Search_prescription.jsp");
		return mv;
	}
	
	@RequestMapping( value="/doctorlogout")
	public ModelAndView logoutdoctor( HttpSession session)
	{
		ModelAndView mv=new ModelAndView();
		session.removeAttribute("adhaar");
		session.removeAttribute("name");
		session.removeAttribute("regno");
		session.invalidate();
		mv.setViewName("home.jsp");
		return mv;
	}

}
