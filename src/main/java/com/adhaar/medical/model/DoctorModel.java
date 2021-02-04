package com.adhaar.medical.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DoctorModel implements Serializable {
	
	@Id
	private String regno;
	private String name;
	private String email;
	private double mobno;
	private String password;
	private String qualification;
	private String gender;
	private String catagory;
	private int acess;
	
	public DoctorModel() {}

	public String getRegno() {
		return regno;
	}

	public void setRegno(String regno) {
		this.regno = regno;
	}

	
	

	public String getCatagory() {
		return catagory;
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public double getMobno() {
		return mobno;
	}

	public void setMobno(double mobno) {
		this.mobno = mobno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAcess() {
		return acess;
	}

	public void setAcess(int acess) {
		this.acess = acess;
	}

	
	

}
