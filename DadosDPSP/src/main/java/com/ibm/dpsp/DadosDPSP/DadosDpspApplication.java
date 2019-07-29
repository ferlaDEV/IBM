package com.ibm.dpsp.DadosDPSP;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DadosDpspApplication extends SpringBootServletInitializer{
	
	
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(DadosDpspApplication.class);
    }

	public static void main(String[] args) {
		SpringApplication.run(DadosDpspApplication.class, args);
		System.out.println("SocialReview Spring Boot Microservice is ready");
	}

}
