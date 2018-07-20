package com.kg.mapper;

import java.util.ArrayList;

import com.kg.vo.Facility;

public interface FacilityMapper {
	public void insert(Facility obj);
	public void delete(int obj);
	public void update(Facility obj);
	public Facility select(int obj);
	public ArrayList<Facility> selectall();
	public ArrayList<Facility> selecttype(String type);
}
