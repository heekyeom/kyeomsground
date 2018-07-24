package com.kg.mapper;

import java.util.ArrayList;

import com.kg.vo.Category;

public interface CategoryMapper {
	public Category select(String obj);
	public ArrayList<Category> selectall();
	public void insert(Category category);
	public void delete(String obj);
	public void update(Category category);
	
}
