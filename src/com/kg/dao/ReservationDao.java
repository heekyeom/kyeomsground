package com.kg.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kg.frame.Dao;
import com.kg.mapper.ReservationMapper;
import com.kg.vo.Reservation;

@Repository("rdao")
public class ReservationDao implements Dao<Reservation, Integer> {

	@Autowired
	ReservationMapper mapper;
	
	@Override
	public void insert(Reservation t) throws Exception {
		
	}

	@Override
	public void update(Reservation t) throws Exception {
		
	}

	@Override
	public void delete(Integer v) throws Exception {
		
	}

	@Override
	public Reservation select(Integer v) throws Exception {
		return null;
	}

	@Override
	public ArrayList<Reservation> select() throws Exception {
		return null;
	}

}
