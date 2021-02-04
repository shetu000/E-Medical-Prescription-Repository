package com.adhaar.medical.service;

import org.springframework.data.repository.CrudRepository;

import com.adhaar.medical.model.PatientModel;

public interface PatientRepository extends CrudRepository<PatientModel, Double> {

}
