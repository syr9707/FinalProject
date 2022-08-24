package com.jobdongsan.project.service;

import com.jobdongsan.project.model.CategoryVO;

public interface ICategoryService {
	
	public CategoryVO getCategoryInfo(int categoryNo); // 유형별로 데이터 가져오기
}
