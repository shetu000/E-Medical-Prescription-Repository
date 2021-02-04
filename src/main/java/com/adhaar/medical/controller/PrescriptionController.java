package com.adhaar.medical.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adhaar.medical.model.PrescriptionModel;
import com.adhaar.medical.service.PrescriptionService;

@Controller
public class PrescriptionController {

	@Autowired
	private PrescriptionService preservice;
	
	@RequestMapping(method=RequestMethod.POST,value="/uploadprescription")
	public ModelAndView uploadprescription(PrescriptionModel preobj , HttpSession session)
	{
		System.out.println("inside uploadprescription controller");
		preobj.setDocname((String)session.getAttribute("docname"));
		preobj.setMci((String)session.getAttribute("regno"));
		preobj.setAdhaar((double)session.getAttribute("adhaar"));
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		preobj.setDatetime(dtf.format(now));
		preobj=preservice.addprescription(preobj);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dr_menu.jsp");
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/searchprescription")
	public ModelAndView searchprescriptionfromdb(@RequestParam String catagory,String searchvalue, HttpSession session)
	{
		ArrayList<PrescriptionModel> userlist1=preservice.getallprescription((double)session.getAttribute("adhaar"));
		ModelAndView mv = new ModelAndView();
		ArrayList<PrescriptionModel> userlist =new ArrayList<PrescriptionModel>();
		for(int i=0; i<userlist1.size();i++)
		{
			if(catagory.equals("age"))
			{
				int temp=Integer.parseInt(searchvalue);
				if(userlist1.get(i).getAge()== temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("bloodpressure"))
			{
				float temp=Float.parseFloat(searchvalue);
				if(userlist1.get(i).getBloodpressure() == temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("diseases"))
			{
				String temp=searchvalue;
				if(userlist1.get(i).getDiseases().equals(temp))
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("sugerlevel"))
			{
				float temp=Float.parseFloat(searchvalue);
				if(userlist1.get(i).getSugerlevel() == temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
		}
		session.setAttribute("alluserlist", userlist);
		session.setAttribute("check",1);
		System.out.println(userlist.size());
		mv.setViewName("Search_prescription.jsp");
		return mv;
	}
	@RequestMapping(method=RequestMethod.GET, value="/searchallprescription")
	public ModelAndView searchallprescriptionfromdb(HttpSession session)
	{
		
		ArrayList<PrescriptionModel> userlist=preservice.getallprescription((double)session.getAttribute("adhaar"));
		ModelAndView mv = new ModelAndView();
		
		session.setAttribute("alluserlist", userlist);
		System.out.println(userlist.size());
		mv.setViewName("viewallprescription.jsp");
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/p_searchprescription")
	public ModelAndView p_searchprescriptionfromdb(@RequestParam String catagory,String searchvalue, HttpSession session)
	{
		
		ArrayList<PrescriptionModel> userlist1=preservice.getallprescription((double)session.getAttribute("adhaar"));
		ModelAndView mv = new ModelAndView();
		ArrayList<PrescriptionModel> userlist =new ArrayList<PrescriptionModel>();
		for(int i=0; i<userlist1.size();i++)
		{
			if(catagory.equals("age"))
			{
				int temp=Integer.parseInt(searchvalue);
				if(userlist1.get(i).getAge()== temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("bloodpressure"))
			{
				float temp=Float.parseFloat(searchvalue);
				if(userlist1.get(i).getBloodpressure() == temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("diseases"))
			{
				String temp=searchvalue;
				if(userlist1.get(i).getDiseases().equals(temp))
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
			else if(catagory.equals("sugerlevel"))
			{
				float temp=Float.parseFloat(searchvalue);
				if(userlist1.get(i).getSugerlevel() == temp)
				{
					PrescriptionModel p=userlist1.get(i);
					userlist.add(p);
				}
			}
		}
		
		session.setAttribute("alluserlist", userlist);
		session.setAttribute("check",1);
		System.out.println(userlist.size());
		mv.setViewName("p_Search_prescription.jsp");
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/p_searchallprescription")
	public ModelAndView p_searchallprescriptionfromdb(HttpSession session)
	{
		
		ArrayList<PrescriptionModel> userlist=preservice.getallprescription((double)session.getAttribute("adhaar"));
		ModelAndView mv = new ModelAndView();
		session.setAttribute("alluserlist", userlist);
		System.out.println(userlist.size());
		mv.setViewName("p_viewallprescription.jsp");
		return mv;
	}
}
