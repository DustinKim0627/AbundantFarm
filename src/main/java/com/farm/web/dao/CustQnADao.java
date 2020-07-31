package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.CustQnA;
import com.farm.web.entity.CustQnAView;

@Mapper
public interface CustQnADao {

	@Select("select * from CustQnAView where ${field} like '%${query}%' order by id desc limit #{offset}, #{size}")
	List<CustQnAView> getList(int offset, int size, String field, String query);

	@Delete("delete from CustQnA where id in (${id})")
	int delete(String ids);

	@Select("select * from CustQnAView where id=${id}")
	CustQnAView get(int id);

	@Update("update CustQnA set contentA=#{content}, regDateA=CURRENT_TIMESTAMP where id=${id}")
	Integer update(CustQnA custQna);

}
