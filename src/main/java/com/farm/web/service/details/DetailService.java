package com.farm.web.service.details;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.farm.web.dao.ItemDao;
import com.farm.web.vo.ItemOfDetail;

@Service
public class DetailService {

	
	@Autowired
	private  ItemDao itemDao;
	

	
	@Transactional(readOnly = false)
	public ItemOfDetail init(int prId) {
			
		
		ItemOfDetail itemOfDetail = itemDao.itemOfDetail(prId);
		
		return itemOfDetail;
		
	}

}
