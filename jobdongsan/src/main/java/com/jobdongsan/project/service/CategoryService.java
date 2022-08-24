package com.jobdongsan.project.service;

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
	public CategoryVO getCategoryInfo(int categoryNo) {
		return dao.getCategoryInfo(categoryNo);
	}
	
}
