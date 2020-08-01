package com.farm.web.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.Order;

@Mapper
public interface OrderDao {
	
	
	
	@Select("select * from Order where id=${id}")
	Order get(int id);
	
	@Insert("")
	int insert();
	
	@Update("")
	int update();
	
	@Delete("")
	int delete();

}
