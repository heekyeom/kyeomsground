package com.kg.mapper;

import java.util.ArrayList;

import com.kg.vo.Reservation;

public interface ReservationMapper {
	public void insert(Reservation obj);
	public void delete(int obj);
	public void update(Reservation obj);
	public Reservation select(int obj);
	public ArrayList<Reservation> selectall();
}
