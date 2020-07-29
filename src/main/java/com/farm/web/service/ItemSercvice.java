package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.ItemDao;
import com.farm.web.entity.ItemView;

@Service
public class ItemSercvice {
	
	@Autowired
	ItemDao itemDao;
	
	public List<ItemView> getList(int page, String query, String field,String catag) {
		int size = 8;
		int offset = (page-1) * size;
		List<ItemView> list = itemDao.getList(size,offset,field,query,catag);
		
		return list;
	}

	public int getCount(String query, String field, String catg) {
			
		return itemDao.getCount(query,field,catg);
	}

	public int delList(int[] srs) {
		
		String selectRows = "";
		for(int i : srs)
			selectRows += i+",";
		
		selectRows = selectRows.substring(0, selectRows.length()-1);
		
		return itemDao.deleteSelectRows(selectRows);
	}
	
}
