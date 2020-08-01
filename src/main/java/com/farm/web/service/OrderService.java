package com.farm.web.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.ItemDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.dao.OrderDao;
import com.farm.web.dao.OrderItemDao;
import com.farm.web.entity.Item;
import com.farm.web.entity.OrderItem;
import com.farm.web.entity.OrderItemView;

@Service
public class OrderService {

	@Autowired
	private ItemDao itemDao;
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private OrderItemDao orderItemDao;
	
	public List<OrderItemView> getOrderItemList(Integer page, String status, String field, String query){

		int offset = (page-1)*10; // 1-> 0, 2-> 10, 3-> 20 이 되게 만들어야한다.
		int size = 10;
		int id = 1;
		
	  return orderItemDao.getList(offset, size, id, page, status, field, query);
	}
	

	public int insertAnswer(int id, String data) {
		int result = 0;
		Date cTime = new Date();
	        
	    
		result = orderItemDao.update();
		
		
		return result;
	}
	
	public OrderItemView getOrderItemView(int id) {
		OrderItemView orderItem = orderItemDao.getView(id);
		
		return orderItem;
	}

}
