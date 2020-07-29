package com.farm.web.controller.admin;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.farm.web.dao.MemberDao;
import com.farm.web.entity.AdminSellerView;
import com.farm.web.entity.Member;
import com.farm.web.entity.SellerApply;

@Controller
@RequestMapping("/admin/member/")
public class MemberController {
	
	@Autowired
	private MemberDao memberDao;
	
	// 판매자 리스트 조회
	@GetMapping("seller")
	public String list(
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "query", defaultValue = "") String query,
			// 검색 기본 값을 유저 name로 셋팅
			@RequestParam(name = "field", defaultValue = "name") String field, Model model) 
			throws ClassNotFoundException, SQLException {
			
		List<AdminSellerView> list = memberDao.getAdminSellerList(page, query, field);

		model.addAttribute("list", list);
		
		return "admin.member.seller";
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	// 입점 신청 세부사항
	@GetMapping("sellerDetail")
	public String getAdminAuthList(int id, Model model) throws ClassNotFoundException, SQLException {
		
		SellerApply sellerApply = memberDao.getAdminAuthList(id);
		
		model.addAttribute("s", sellerApply);	// 판매자목록 → 입점신청정보
		
		System.out.println(id);	// id 확인용
		
		return "admin.member.sellerDetail";
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	// 구매자 리스트 조회
	@GetMapping("member")
	public String list2(
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "query", defaultValue = "") String query,
			@RequestParam(name = "field", defaultValue = "name") String field, Model model) 
			throws ClassNotFoundException, SQLException {
	
		List<Member> list2 = memberDao.getAdminBuyerList(page, query, field);
		
		model.addAttribute("list2", list2);
		
		return "admin.member.member";
	}
	
	///////////////////////////////////////////////////////////////////////////
	
//	@GetMapping("delete")
//	public int delete(String uid) {
//		
//		int delete = service.delete(uid);
//		
//		return delete;
//	}
	
}
