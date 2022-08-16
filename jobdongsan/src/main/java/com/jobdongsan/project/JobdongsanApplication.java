package com.jobdongsan.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.jobdongsan.project"})
@MapperScan(basePackages = {"com.jobdongsan.project"})
public class JobdongsanApplication {

	public static void main(String[] args) {
		SpringApplication.run(JobdongsanApplication.class, args);
	}

}
