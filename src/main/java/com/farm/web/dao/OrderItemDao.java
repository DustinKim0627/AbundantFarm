package com.farm.web.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.farm.web.entity.OrderItem;



@Mapper
public interface OrderItemDao {

	
	@Select("SELECT OI.* FROM OrderItem OI JOIN\r\n" + 
			"Item I on OI.itemId = I.id\r\n" + 
			"where I.id = ${prId}")
	OrderItem matchProductDeliveryFee(int prId);

	
	
}
