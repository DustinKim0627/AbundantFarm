package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.farm.web.entity.Origin;

@Mapper
public interface OriginDao {
/////지욱
	@Select("SELECT * FROM Origin where sup is null")
	List<Origin> getList();
	
	@Select("SELECT * FROM Origin where sup=${pid}")
	List<Origin> getApiList(int pid);
///////////
	
	//
	@Select("SELECT id,name,sup from Origin WHERE id = ${}")
	Origin selectById();
	
	
	@Select("select distinct O.id, O.name, O.sup from Origin O \r\n" + 
			"join\r\n" + 
			"Item I on O.id = I.originId\r\n" + 
			"where I.id = ${prId}")
	Origin matchProductOrigin(int prId);
}
