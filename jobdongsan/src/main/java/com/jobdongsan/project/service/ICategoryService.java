package com.jobdongsan.project.service;

import java.util.ArrayList;

import com.jobdongsan.project.model.CategoryVO;

public interface ICategoryService {
	
	public ArrayList<CategoryVO> getCategoryInfo(); // 유형별로 데이터 가져오기
}
