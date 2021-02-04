package com.adhaar.medical;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class OnlineMedicalApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineMedicalApplication.class, args);
		System.out.println("Spring started");
	}

}
