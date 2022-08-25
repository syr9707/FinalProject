package com.jobdongsan.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IQuestionDAO;
import com.jobdongsan.project.model.QuestionVO;

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
	public ArrayList<QuestionVO> getQuestionChar() {
		return dao.getQuestionChar();
	}

}
