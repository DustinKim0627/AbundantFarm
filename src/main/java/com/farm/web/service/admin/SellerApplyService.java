package com.farm.web.service.admin;

import com.farm.web.dao.SellerApplyDao;
import com.farm.web.dao.NoticeDao;
import com.farm.web.entity.Notice;
import com.farm.web.entity.SellerApply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellerApplyService {

	@Autowired
	private SellerApplyDao applyDao;
	
	public List<SellerApply> getList(Integer page, String field, String query) {
		int size = 10;
		int offset = (page-1)*size;
		
		return applyDao.getList(offset, size, field, query);
	}

	public int delete(int[] id) {
		String ids = "";
		for(int i : id)
			ids += i+","; 
		ids = ids.substring(0,ids.length()-1);
		
		return applyDao.delete(ids);
	}
}
