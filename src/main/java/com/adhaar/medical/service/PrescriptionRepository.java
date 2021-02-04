package com.adhaar.medical.service;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import com.adhaar.medical.model.PrescriptionModel;

public interface PrescriptionRepository extends CrudRepository<PrescriptionModel, Integer> {

	ArrayList<PrescriptionModel> findBydiseases(int diseases);
	ArrayList<PrescriptionModel> findByadhaar(double adhaar);
}
