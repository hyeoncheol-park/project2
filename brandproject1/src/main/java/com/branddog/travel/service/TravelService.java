package com.branddog.travel.service;

import java.util.List;
import java.util.Map;

import com.branddog.travel.dto.TravelReWordDTO;
import com.branddog.travel.dto.TravelSearchDTO;

public interface TravelService {
	
	public TravelSearchDTO searchTrend(int no);
	
	public TravelReWordDTO reWordCheck(String title);
	
	public List<String> setWordData(TravelReWordDTO dto);

	public Map<String, List<String>> getBlogData(String searchKey) throws Exception;
	
}
