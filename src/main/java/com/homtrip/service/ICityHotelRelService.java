package com.homtrip.service;

import java.util.List;

import com.homtrip.model.CityHotelRelVO;

public interface ICityHotelRelService {

	public List<CityHotelRelVO> findall();
	
	public List<CityHotelRelVO> findByObject(CityHotelRelVO cityVO);
}
