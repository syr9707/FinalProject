package com.jobdongsan.project.dao;

import java.util.ArrayList;

import com.jobdongsan.project.model.CategoryVO;

public interface ICategoryDAO {
	
	public ArrayList<CategoryVO> getCategoryInfo(); // 유형별로 데이터 가져오기
}
