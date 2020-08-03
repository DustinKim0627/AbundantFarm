package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.ReviewDao;
import com.farm.web.entity.ReviewNoticeVo;
import com.farm.web.entity.ReviewView;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;

	public List<ReviewNoticeVo> plusReview(int offset, int prId) {

		List<ReviewNoticeVo> list = reviewDao.plusTenReviewRow(offset, prId);

		return list;
	}

	public List<ReviewView> getList(Integer page, String field, String query) {
		int size = 10;
		int offset = (page - 1) * size;

		return reviewDao.getList(offset, size, field, query);
	}

	public int delete(int[] id) {
		String ids = "";
		for (int i : id)
			ids += i + ",";
		ids = ids.substring(0, ids.length() - 1);

		return reviewDao.delete(ids);
	}

	public ReviewView get(int id) {

		return reviewDao.get(id);
	}

}
