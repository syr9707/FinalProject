package com.jobdongsan.project.dao;

import com.jobdongsan.project.model.CategoryVO;

public interface ICategoryDAO {
	
	public CategoryVO getCategoryInfo(int categoryNo); // 유형별로 데이터 가져오기
}
