package com.farm.web.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.AdminSellerView;
import com.farm.web.entity.SellerApply;

@Mapper
public interface ApplyDao {
	
	@Select("select * from SellerApply where ${field} like '%${query}%' order by regDate desc limit #{offset}, #{size}")
	List<SellerApply> getList(int offset, int size, String field, String query);
	
	@Select("select * from SellerApply where id=${id}")
	SellerApply get(int id);
	
	@Delete("delete from SellerApply where id=${id}")
	int delete(String ids);
	
	@Update("update SellerApply set appDate=CURRENT_TIMESTAMP where id=${id}")
	int update(int id);

	@Update("update SellerApply set appDate=null where id=${id}")
	int updateReject(int id);
	
	@Select("select * from SellerApply where id=${id}")
	List<AdminSellerView> getApplyList(int id);

	@Insert("insert into SellerApply values(#{sellerApply.id},#{sellerApply.title},#{sellerApply.content},#{sellerApply.comName},#{sellerApply.brn},#{sellerApply.repName},"
			+ "#{sellerApply.staffName},#{sellerApply.phone},#{sellerApply.telephone},#{sellerApply.email},#{sellerApply.files},#{sellerApply.sellingUrl},#{sellerApply.item},#{sellerApply.regDate},#{sellerApply.appDate},#{sellerApply.titleImage})")
	int insertRegSeller(SellerApply sellerApply);
}
