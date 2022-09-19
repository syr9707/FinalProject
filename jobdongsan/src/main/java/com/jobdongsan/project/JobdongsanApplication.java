package com.jobdongsan.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

@SpringBootApplication
@PropertySources({
	@PropertySource(value="file:c/springWorkspace/configure.properites", ignoreResourceNotFound=true),
	@PropertySource(value="file:/usr/local/project/properties/configure.properites", ignoreResourceNotFound=true)
})
@ComponentScan(basePackages = {"com.jobdongsan.project"})
@MapperScan(basePackages = {"com.jobdongsan.project"})
public class JobdongsanApplication {

	public static void main(String[] args) {
		SpringApplication.run(JobdongsanApplication.class, args);
	}

}
