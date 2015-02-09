package com.homtrip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homtrip.dao.ICityHotelRelDao;
import com.homtrip.model.CityHotelRelVO;
import com.homtrip.service.ICityHotelRelService;

@Service
@Transactional(readOnly=true)
public class CityHotelRelServiceImpl implements ICityHotelRelService {
		/**
		 * DB鎺ュ彛绔?
		 */
	    @Resource
	   private ICityHotelRelDao cityHotelRelDao;
	 
	 
	@Override
	@Transactional
	public List<CityHotelRelVO> findall() {
		// TODO Auto-generated method stub
		return cityHotelRelDao.findall();
	}

	@Override
	@Transactional
	public List<CityHotelRelVO> findByObject(CityHotelRelVO cityVO) {
		// TODO Auto-generated method stub
		return cityHotelRelDao.findByObject(cityVO);
	}

}
