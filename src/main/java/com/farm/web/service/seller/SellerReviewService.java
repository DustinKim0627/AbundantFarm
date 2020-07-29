package com.farm.web.service.seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.farm.web.dao.SellerReviewDao;
import com.farm.web.entity.Review;
import com.farm.web.entity.ReviewView;

@Service
public class SellerReviewService {
	
	@Autowired
	private SellerReviewDao sellerReviewDao;
	
	public List<ReviewView> getList() {
		
		return sellerReviewDao.getList();
	}
	
}
