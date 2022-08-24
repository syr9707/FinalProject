package com.jobdongsan.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IQuestionDAO;

@Service
public class QuestionService implements IQuestionService {
	
	@Autowired
	@Qualifier("IQuestionDAO")
	IQuestionDAO dao;

	@Override
	public String getQuestionCon(int questionNo) {	
		return dao.getQuestionCon(questionNo);
	}

	@Override
	public String getQuestionChar(int questionNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
