package com.kg.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.kg.dao.CategoryDao;
import com.kg.frame.Service;
import com.kg.vo.Category;

@org.springframework.stereotype.Service("cservice")
public class CategoryService implements Service<Category, String>{

	@Resource(name="cdao")
	CategoryDao dao;
	
	@Override
	public void register(Category t) throws Exception {
		dao.insert(t);
	}

	@Override
	public void modify(Category t) throws Exception {
		dao.update(t);
	}

	@Override
	public void remove(String v) throws Exception {
		dao.delete(v);
	}

	@Override
	public Category get(String v) throws Exception {
		return dao.select(v);
	}

	@Override
	public ArrayList<Category> get() throws Exception {
		return dao.select();
	}
	

}
