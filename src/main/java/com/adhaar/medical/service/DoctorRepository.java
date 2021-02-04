package com.adhaar.medical.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.adhaar.medical.model.DoctorModel;

public interface DoctorRepository extends CrudRepository<DoctorModel, String> {
	ArrayList<DoctorModel> findByacess(int acess);
}
