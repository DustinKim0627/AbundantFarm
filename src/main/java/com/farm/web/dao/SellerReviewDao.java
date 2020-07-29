package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.Review;
import com.farm.web.entity.ReviewView;

@Mapper
public interface SellerReviewDao {
	@Select("SELECT * FROM ReviewView limit 10")
	   List<ReviewView> getList();
	
	@Select("SELECT * FROM Review WHERE ID=#{id}")
	Review get(int id);
	
	@Insert("INSERT INTO Review (title,content) VALUES(#{title},#{content}")
	int insert(Review review);
	
	@Update("")	
	int update(Review review);
	
	@Delete("")
	int delet(Review review);
	
}
