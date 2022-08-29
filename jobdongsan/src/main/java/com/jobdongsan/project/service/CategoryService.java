package com.jobdongsan.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.ICategoryDAO;
import com.jobdongsan.project.model.CategoryVO;

@Service
public class CategoryService implements ICategoryService {
	
	@Autowired
	@Qualifier("ICategoryDAO")
	ICategoryDAO dao;

	@Override
	public ArrayList<CategoryVO> getCategoryInfo() {
		return dao.getCategoryInfo();
	}
	
}
