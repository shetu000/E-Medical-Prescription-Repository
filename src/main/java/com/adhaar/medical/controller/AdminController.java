package com.adhaar.medical.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adhaar.medical.model.DoctorModel;
import com.adhaar.medical.service.DoctorService;

@Controller
public class AdminController {
	@Autowired
	private DoctorService docservice;

	@RequestMapping(method=RequestMethod.GET,value="/adminpage")
	public ModelAndView adminpage()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AdminPage.jsp");
		return mv;
	}
	@RequestMapping(method=RequestMethod.POST , value="/adminlogin")
	public ModelAndView adminlogin(@RequestParam String adminid,String password,HttpSession session)
	{
		System.out.println("Admin login controller");
		ModelAndView mv = new ModelAndView();
		if(adminid.equals("admin") && password.equals("admin"))
		{
			
			ArrayList<DoctorModel> doclist=docservice.getnewdoctor();
			session.setAttribute("doclist",doclist);
			mv.setViewName("admin_afterlogin.jsp");
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("AdminPage.jsp");
		}
		return mv;
	}
	
	@RequestMapping("/deletedoc")
	public ModelAndView deleteDoctor(@RequestParam String regno,HttpSession session)
	{
		System.out.println("INSIDE deletedoc Method IN CONTROLLER CLASS");
		docservice.deleteDoctortRecord(regno);
		
		
		ModelAndView mv = new ModelAndView();
		ArrayList<DoctorModel> doclist=docservice.getnewdoctor();
		session.setAttribute("doclist",doclist);
		mv.setViewName("admin_afterlogin.jsp");
		return mv;
	}
	
	@RequestMapping("/acessdoc")
	public ModelAndView acessDoctor(@RequestParam String regno,HttpSession session)
	{
		System.out.println("INSIDE acessdoc Method IN CONTROLLER CLASS");
		DoctorModel dobj=docservice.acessDoctortRecord(regno);
		System.out.println(regno);
		dobj.setAcess(1);
		dobj.setRegno(regno);
		docservice.adddoctorrecord(dobj);
		ModelAndView mv = new ModelAndView();
		ArrayList<DoctorModel> doclist=docservice.getnewdoctor();
		session.setAttribute("doclist",doclist);
		mv.setViewName("admin_afterlogin.jsp");
		return mv;
	}
}