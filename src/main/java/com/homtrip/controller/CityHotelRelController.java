package com.homtrip.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.homtrip.common.JsonUtils;
import com.homtrip.model.CityHotelRelVO;
import com.homtrip.service.ICityHotelRelService;
/**
 * 
 * @author hh
 * 2015.2.6
 * 城市地标
 */
@Controller
@RequestMapping("/cityhotel")
public class CityHotelRelController {
	/**
	 * 城市地标接口端service
	 */
	@Resource
	private ICityHotelRelService cityHotelRelService;
	
	/**
	 * 获取城市地标view接口
	 */
	
	@RequestMapping(value = "/cityHotelRelInfo")
	public String getHotelCusInfo(HttpServletRequest request, ModelMap modelMap)
			throws Exception {
		return "/";
	}
	
	/**
	 *  获取城市地标数据
	 */
	@RequestMapping(value = "/getcityHotelRelInfo",method = RequestMethod.POST)
	@ResponseBody
	public String getcityHotelRelInfo(HttpServletRequest request,
			ModelMap modelMap,
			CityHotelRelVO cityVO
			)
			throws Exception {
		Map<String,Object> map = new HashMap<String,Object>();
		/**
		 * 带条件查询
		 */
		if (StringUtils.isNotBlank(cityVO.getCity())) {
			List<CityHotelRelVO> ctyHotelVO = cityHotelRelService.findByObject(cityVO);
			map.put("list", ctyHotelVO);
		}
		/**
		 * 没条件查询
		 */
		else
		{
			List<CityHotelRelVO> ctyHotelVO = cityHotelRelService.findall();
			map.put("list", ctyHotelVO);
			
		}
		if(map.size()>0)
		{
			return JsonUtils.toJson(map);
		}
		else
		{
			map.put("list", "null");
			return JsonUtils.toJson(map);
		}
		
}
}