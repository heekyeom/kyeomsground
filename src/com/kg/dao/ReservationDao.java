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
		mapper.insert(t);
	}

	@Override
	public void update(Reservation t) throws Exception {
		mapper.update(t);
	}

	@Override
	public void delete(Integer v) throws Exception {
		mapper.delete(v);
	}

	@Override
	public Reservation select(Integer v) throws Exception {
		return mapper.select(v);
	}

	@Override
	public ArrayList<Reservation> select() throws Exception {
		return mapper.selectall();
	}
	
	public ArrayList<Reservation> selectMySchedule(String u_id) throws Exception {
		return mapper.selectMySchedule(u_id);
	}
	
	public int getRnum(String u_id) {
		return mapper.getRnum(u_id);
	}
	
	public void insertSchedule(Reservation reservation) throws Exception {
		mapper.insertSchedule(reservation);
	}
	
	public ArrayList<Reservation> getFacilityReservation(int f_num) throws Exception {
		return mapper.getFacilityReservation(f_num);
	}

}
