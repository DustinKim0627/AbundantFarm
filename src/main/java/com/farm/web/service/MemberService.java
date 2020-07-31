package com.farm.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.MemberDao;
import com.farm.web.entity.AdminSellerView;
import com.farm.web.entity.Member;
import com.farm.web.entity.SellerApply;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;

	public List<AdminSellerView> getAdminSellerList(Integer page, String field, String query) throws ClassNotFoundException, SQLException {
		int size = 10;
		int offset = (page - 1) * size;

		return memberDao.getAdminSellerList(page, query, field, offset, size);
	}

	public SellerApply getAdminAuthList(int id) throws ClassNotFoundException, SQLException {

		return memberDao.getAdminAuthList(id);
	}
	
	public List<Member> getAdminBuyerList(int page, String query, String field) throws ClassNotFoundException, SQLException {
		int size = 10;
		int offset = (page - 1) * size;
		
		return memberDao.getAdminBuyerList(page, query, field, offset, size);
	}

	public int getCountBuyer() throws ClassNotFoundException, SQLException {

		return memberDao.getCountBuyer();
	}

	public int getCountSeller() throws ClassNotFoundException, SQLException {

		return memberDao.getCountSeller();
	}

	public int getCountTotalMember() throws ClassNotFoundException, SQLException {

		return memberDao.getCountTotalMember();
	}

	public int unabledMember(String sellerId) throws ClassNotFoundException, SQLException {
		
		return memberDao.unabledMember(sellerId);
	}

	public int enabledMember(String sellerId) throws ClassNotFoundException, SQLException {
		
		return memberDao.enabledMember(sellerId);
	}
}
