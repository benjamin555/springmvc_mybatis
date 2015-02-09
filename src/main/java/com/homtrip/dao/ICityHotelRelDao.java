package com.homtrip.dao;

import java.util.List;

import com.homtrip.model.CityHotelRelVO;

public interface ICityHotelRelDao {
	
    public List<CityHotelRelVO> findall();  
    
    public List<CityHotelRelVO> findByObject(CityHotelRelVO cityVO);
}

