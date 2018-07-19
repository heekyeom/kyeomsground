package com.kg.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kg.frame.Dao;
import com.kg.mapper.UserMapper;
import com.kg.vo.User;

@Repository("udao")
public class UserDao implements Dao<User, String> {

	@Autowired
	UserMapper mapper;

	@Override
	public void insert(User t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void update(User t) throws Exception {
		mapper.update(t);
	}

	@Override
	public void delete(String v) throws Exception {
		mapper.delete(v);
	}

	@Override
	public User select(String v) throws Exception {
		return mapper.select(v);
	}

	@Override
	public ArrayList<User> select() throws Exception {
		return mapper.selectall();
	}
}
