package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.Notice;
import com.farm.web.entity.SellerApply;

@Mapper
public interface SellerApplyDao {
	
	@Select("select * from SellerApply where ${field} like '%${query}%' order by id desc limit #{offset}, #{size}")
	List<SellerApply> getList(int offset, int size, String field, String query);
	
	@Delete("delete from SellerApply where id in (${id})")
	int delete(String id);

}
