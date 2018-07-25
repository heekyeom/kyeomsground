package com.kg.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kg.frame.Dao;
import com.kg.mapper.CategoryMapper;
import com.kg.vo.Category;

@Repository("cdao")
public class CategoryDao implements Dao<Category, String>{
	
	@Autowired
	CategoryMapper mapper;

	@Override
	public void insert(Category t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void update(Category t) throws Exception {
		mapper.update(t);
	}

	@Override
	public void delete(String v) throws Exception {
	mapper.delete(v);	
	}

	@Override
	public Category select(String v) throws Exception {
		return mapper.select(v);
	}

	@Override
	public ArrayList<Category> select() throws Exception {
		return mapper.selectall();
	}

}
