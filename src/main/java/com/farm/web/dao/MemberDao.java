package com.farm.web.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.farm.web.entity.AdminSellerView;
import com.farm.web.entity.Member;
import com.farm.web.entity.SellerApply;

@Mapper
public interface MemberDao {
	
	@Select("SELECT * FROM AdminSeller WHERE ${field} LIKE '%${query}%' ORDER BY id desc limit 10")
	List<AdminSellerView> getAdminSellerList(int page, String query, String field) throws ClassNotFoundException, SQLException;
	
	@Select("SELECT a.id, s.id, a.comName, s.comName FROM AdminSeller AS a RIGHT JOIN SellerApply AS s ON a.id = s.id")
	SellerApply getAdminAuthList(int id) throws ClassNotFoundException, SQLException;

	@Select("select * from Member where id=#{id}")
	Member get(int id);
	
	@Select("SELECT * FROM Member WHERE role = 'ROLE_MEMBER' AND ${field} LIKE '%${query}%' ORDER BY id desc limit 10")
	List<Member> getAdminBuyerList(int page, String query, String field) throws ClassNotFoundException, SQLException;
	
	@Select("SELECT COUNT(*) FROM Member WHERE role = 'ROLE_MEMBER'")
	int getCountBuyer() throws ClassNotFoundException, SQLException;

	@Select("SELECT COUNT(*) FROM Member WHERE role = 'ROLE_SELLER'")
	int getCountSeller() throws ClassNotFoundException, SQLException;
	
	@Select("SELECT COUNT(*) FROM Member")
	int getCountTotalMember() throws ClassNotFoundException, SQLException;
	
	/*******************************************지욱********************************************************/
	@Select("SELECT * FROM Member where uid=#{uid}")
	Member getByUid(@Param("uid") String uid);
	
	/******************************************************************************************************/
	
//	@Delete("DELETE FROM Member WHERE uid = ${uid}")
//	int delete(String uid);
	
}
