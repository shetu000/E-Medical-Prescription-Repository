package com.adhaar.medical.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PatientModel implements Serializable {
	
	@Id
	private double adhaar;
	private String name;
	private String email;
	private double mobno;
	private double gmobno;
	private String password;
	private String gender;
	public PatientModel() {}
	public double getAdhaar() {
		return adhaar;
	}
	public void setAdhaar(double adhaar) {
		this.adhaar = adhaar;
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
	public double getGmobno() {
		return gmobno;
	}
	public void setGmobno(double gmobno) {
		this.gmobno = gmobno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

}
