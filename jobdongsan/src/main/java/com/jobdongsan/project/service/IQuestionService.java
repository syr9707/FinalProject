package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.QuestionVO;

public interface IQuestionService {
	
	
	public HashMap<String,Object> getQuestionCon(int questionNo); // 질문 가져오기
	public ArrayList<QuestionVO> getQuestionChar();	// 질문 캐릭터 가져오기
}
