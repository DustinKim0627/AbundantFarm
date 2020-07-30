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
public interface ReviewDao {
	@Select("SELECT * FROM ReviewView order by regDate desc limit 10")
	   List<ReviewView> getList2();
	
	@Select("select r.*, m.name from Review r join Member m on r.writerId = m.id where ${field} like '%${query}%' order by regDate desc limit #{offset}, #{size}")
	List<ReviewView> getList(int offset, int size, String field, String query);
	
	@Delete("delete from Review where id in (${id})")
	int delete(String id);
	
	@Select("SELECT * FROM ReviewView WHERE ID=#{id}")
	ReviewView get(int id);
	
	@Insert("INSERT INTO Review (title,content) VALUES(#{title},#{content}")
	int insert(Review review);
	
	@Update("")	
	int update(Review review);
	
	@Delete("")
	int delet(Review review);

}
