package com.farm.web.service;

import com.farm.web.dao.CustQnADao;
import com.farm.web.entity.CustQnA;
import com.farm.web.entity.CustQnAView;
import com.farm.web.entity.Notice;
import com.farm.web.entity.Review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustQnAService {

	@Autowired
	private CustQnADao custQnaDao;

	public List<CustQnAView> getList(Integer page, String field, String query) {
		int size = 10;
		int offset = (page-1)*size;
		
		return custQnaDao.getList(offset, size, field, query);
	}	

	public int delete(int[] id) {
		String ids = "";
		for(int i : id)
			ids += i+","; 
		ids = ids.substring(0,ids.length()-1);
		
		return custQnaDao.delete(ids);
	}

	public CustQnAView get(int id) {
		
		return custQnaDao.get(id);
	}

	public int update(CustQnA custQna) {

		return custQnaDao.update(custQna);
	}
	

}
