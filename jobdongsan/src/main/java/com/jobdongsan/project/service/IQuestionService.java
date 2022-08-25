package com.jobdongsan.project.service;

import java.util.ArrayList;

import com.jobdongsan.project.model.QuestionVO;

public interface IQuestionService {
	
	public String getQuestionCon(int questionNo); 	// 질문 가져오기
	public ArrayList<QuestionVO> getQuestionChar();	// 질문 캐릭터 가져오기
}
