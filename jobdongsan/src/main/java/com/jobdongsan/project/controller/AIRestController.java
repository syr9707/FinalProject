package com.jobdongsan.project.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.jobdongsan.project.service.DoctorChatbotService;
import com.jobdongsan.project.service.JobChatbotService;
import com.jobdongsan.project.service.MainChatbotService;

@RestController
public class AIRestController {
	@Autowired
	JobChatbotService jService;
	
	@Autowired
	DoctorChatbotService docService;
	
	@RequestMapping("/jobChatbot")
	public String jobChatbot(@RequestParam String message) throws IOException {
		return JobChatbotService.main(message);
	}
	
	@RequestMapping("/doctorChatbot")
	public String doctorChatbot(@RequestParam String message) throws IOException {
		
		System.out.println(DoctorChatbotService.main(message));
		return DoctorChatbotService.main(message);
	}
	
	@RequestMapping("/mainChatbot")
	public String mainChatbot(@RequestParam String message) throws IOException {
		return MainChatbotService.main(message);
	}
	
	@RequestMapping("/stt")
	public String stt(@RequestParam("uploadFile") MultipartFile file) throws IOException {
		String uploadPath = "/usr/local/project/upload/";
		String originalFileName = file.getOriginalFilename();
		String filePathName = uploadPath + originalFileName;
		
		File newFile = new File(filePathName);
		
		file.transferTo(newFile);
		
		String result = jService.stt(filePathName);
		
		return result;
	}
	
	@RequestMapping("/tts")
	public String tts(@RequestParam String message) {
		return jService.tts(message);
	}
	
	@RequestMapping("/tts2")
	public String tts2(@RequestParam String message) {
		return docService.tts(message);
	}
}
