package com.kg.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.kg.frame.Dao;
import com.kg.frame.Service;
import com.kg.vo.Reservation;

@org.springframework.stereotype.Service("rservice")
public class ReservationService implements Service<Reservation, Integer> {

	@Resource(name="rdao")
	Dao<Reservation, Integer> dao;
	
	@Override
	public void register(Reservation t) throws Exception {
		dao.insert(t);
	}

	@Override
	public void modify(Reservation t) throws Exception {
		dao.update(t);
	}

	@Override
	public void remove(Integer v) throws Exception {
		dao.delete(v);
	}

	@Override
	public Reservation get(Integer v) throws Exception {
		return dao.select(v);
	}

	@Override
	public ArrayList<Reservation> get() throws Exception {
		return dao.select();
	}

}
