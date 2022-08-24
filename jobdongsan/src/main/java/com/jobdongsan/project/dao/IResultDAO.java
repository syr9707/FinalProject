package com.jobdongsan.project.dao;

import com.jobdongsan.project.model.ResultVO;

public interface IResultDAO {
	public void insertPromise(ResultVO vo);	// 나의 다짐 넣기 
	public void insertScore(ResultVO vo); 	// 유형 스코어 넣기
}
