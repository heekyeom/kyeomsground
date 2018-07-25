package com.kg.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.kg.dao.ReservationDao;
import com.kg.frame.Service;
import com.kg.vo.Reservation;

@org.springframework.stereotype.Service("rservice")
public class ReservationService implements Service<Reservation, Integer> {

	@Resource(name="rdao")
	ReservationDao dao;
	
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
	
	public ArrayList<Reservation> getMySchedule(String u_id) throws Exception {
		return dao.selectMySchedule(u_id);
	}
	
	public int getRnum(String u_id) {
		return dao.getRnum(u_id);
	}
	
	public void insertSchedule(Reservation reservation) throws Exception {
		dao.insertSchedule(reservation);
	}
	
	public ArrayList<Reservation> getFacilityReservation(int f_num) throws Exception {
		return dao.getFacilityReservation(f_num);
	}
	
	public void removeMe(Reservation reservation) throws Exception {
		dao.removeMe(reservation);
	}
	
}
