package com.homtrip.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.homtrip.dao.ICityHotelRelDao;
import com.homtrip.model.CityHotelRelVO;
@Repository
public class CityHotelRelDaoImpl implements ICityHotelRelDao {

	private static final String FINDALL = "selectCityAll";
	
	private static final String FINDOBJECT = "selectCityBy"; 
	
	private static final String SELECTPAGE = "selectCityPage";

	private static final String SELECTCOUNT = "selectCityCount";
	
	private SqlSessionTemplate sqlSession;
	@Resource
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CityHotelRelVO> findall() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CityHotelRelVO> findByObject(CityHotelRelVO cityVO) {
		// TODO Auto-generated method stub
		return null;
	}

}
