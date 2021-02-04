package com.adhaar.medical.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
	
	@RequestMapping("/")
	public String openhomePage()
	{
		return "home.jsp";
	}
	
	@RequestMapping("/docreg")
	public String doctorregistration()
	{
		return "Dr_reg.jsp";
	}
	
	@RequestMapping("/patreg")
	public String patientreg()
	{
		return "Patient_reg.jsp";
	}
	@RequestMapping("/doclog")
	public String doclogin()
	{
		return "Dr_login.jsp";
	}
	
	@RequestMapping("/plog")
	public String patlogin()
	{
		return "Patient_login.jsp";
	}
	@RequestMapping("/contact")
	public String contact()
	{
		return "contact.jsp";
	}

}
