package com.jobdongsan.project.service;

import com.jobdongsan.project.model.ResultVO;

public interface IResultService {
	
	public void insertPromise(ResultVO vo);	// 나의 다짐 넣기 
	public void insertScore(ResultVO vo); 	// 유형 스코어 넣기
}
