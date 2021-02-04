package com.adhaar.medical.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class PrescriptionModel implements Serializable {
	
	@Id
	@GeneratedValue
	private int No;
	private String mci;
	private String docname;
	private String datetime;
	private double adhaar;
	private String diseases;
	private String prescription;
	private int age;
	private float weight;
	private float bloodpressure;
	private float sugerlevel;
	private String diseasesymptom;
	private String relatedhistory;
	private String pathreport;
	private String advice;
	
	public PrescriptionModel() {}

	
	public String getMci() {
		return mci;
	}


	public void setMci(String mci) {
		this.mci = mci;
	}


	public float getSugerlevel() {
		return sugerlevel;
	}


	public void setSugerlevel(float sugerlevel) {
		this.sugerlevel = sugerlevel;
	}


	public String getDiseasesymptom() {
		return diseasesymptom;
	}


	public void setDiseasesymptom(String diseasesymptom) {
		this.diseasesymptom = diseasesymptom;
	}


	public String getRelatedhistory() {
		return relatedhistory;
	}


	public void setRelatedhistory(String relatedhistory) {
		this.relatedhistory = relatedhistory;
	}


	public String getPathreport() {
		return pathreport;
	}


	public void setPathreport(String pathreport) {
		this.pathreport = pathreport;
	}


	public String getAdvice() {
		return advice;
	}


	public void setAdvice(String advice) {
		this.advice = advice;
	}


	public float getBloodpressure() {
		return bloodpressure;
	}


	public void setBloodpressure(float bloodpressure) {
		this.bloodpressure = bloodpressure;
	}


	public float getWeight() {
		return weight;
	}


	public void setWeight(float weight) {
		this.weight = weight;
	}


	public int getNo() {
		return No;
	}

	public void setNo(int no) {
		No = no;
	}

	public String getDocname() {
		return docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public double getAdhaar() {
		return adhaar;
	}

	public void setAdhaar(double adhaar) {
		this.adhaar = adhaar;
	}

	public String getDiseases() {
		return diseases;
	}

	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	

}
