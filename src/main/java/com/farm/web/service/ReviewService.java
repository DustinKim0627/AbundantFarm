package com.farm.web.service;

import com.farm.web.dao.ReviewDao;
import com.farm.web.entity.Review;
import com.farm.web.entity.ReviewView;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;
	
	public List<ReviewView> getList(Integer page, String field, String query) {
		int size = 10;
		int offset = (page-1)*size;
		
		return reviewDao.getList(offset, size, field, query);
	}

	public int delete(int[] id) {
		String ids = "";
		for(int i : id)
			ids += i+","; 
		ids = ids.substring(0,ids.length()-1);
		
		return reviewDao.delete(ids);
	}

	public Review get(int id) {
	      
	      return reviewDao.get(id);
	   }

}
