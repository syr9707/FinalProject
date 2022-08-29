package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	public HashMap<String, Object> getQuestionCon(int questionNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<QuestionVO> getQuestionChar() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
