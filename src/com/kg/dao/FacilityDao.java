package com.kg.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kg.frame.Dao;
import com.kg.mapper.FacilityMapper;
import com.kg.vo.Facility;

@Repository("fdao")
public class FacilityDao implements Dao<Facility, Integer> {

	@Autowired
	FacilityMapper mapper;

	@Override
	public void insert(Facility t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void update(Facility t) throws Exception {
		mapper.update(t);
	}

	@Override
	public void delete(Integer v) throws Exception {
	mapper.delete(v);	
	}

	@Override
	public Facility select(Integer v) throws Exception {
		return mapper.select(v);
	}

	@Override
	public ArrayList<Facility> select() throws Exception {
		return mapper.selectall();
	}

	public ArrayList<Facility> select(String c_name) throws Exception {
		return mapper.selecttype(c_name);
	}
	

}
