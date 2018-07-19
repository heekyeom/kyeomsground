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
		
	}

	@Override
	public void modify(Reservation t) throws Exception {
		
	}

	@Override
	public void remove(Integer v) throws Exception {
		
	}

	@Override
	public Reservation get(Integer v) throws Exception {
		return null;
	}

	@Override
	public ArrayList<Reservation> get() throws Exception {
		return null;
	}

}
