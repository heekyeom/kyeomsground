package com.kg.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.kg.dao.FacilityDao;
import com.kg.frame.Service;
import com.kg.vo.Facility;

@org.springframework.stereotype.Service("fservice")
public class FacilityService implements Service<Facility, Integer> {

	@Resource(name = "fdao")
	FacilityDao dao;

	@Override
	public void register(Facility t) throws Exception {
		dao.insert(t);
	}

	@Override
	public void modify(Facility t) throws Exception {
		dao.update(t);
	}

	@Override
	public void remove(Integer v) throws Exception {
		dao.delete(v);
	}

	@Override
	public Facility get(Integer v) throws Exception {
		return dao.select(v);
	}

	@Override
	public ArrayList<Facility> get() throws Exception {
		return dao.select();
	}
	
	
	public ArrayList<Facility> get(String c_name) throws Exception {
		return dao.select(c_name);
	}

}
