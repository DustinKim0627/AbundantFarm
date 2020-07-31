package com.farm.web.controller.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.AdminSellerView;
import com.farm.web.entity.SellerApply;
import com.farm.web.service.ApplyService;

@Controller("CommunityApplyController")
@RequestMapping("/community/apply/")
public class ApplyController {

	@Autowired
	ApplyService applyService;
	
	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			Model model) {
		
		List<SellerApply> list = applyService.getApplyList(page, field, query);
		model.addAttribute("list", list);

		return "community/apply/list";
	}
	
	@GetMapping("detail")
	public String detail() {
		
		return "community/apply/detail";
	}
	
	@GetMapping("reg")
	public String regList(SellerApply sellerApply) {
	
		return "community/apply/reg";
	}
	
	@PostMapping("reg")
	public String reg(SellerApply sellerApply) {
		
		System.out.println(sellerApply);
		applyService.regSeller(sellerApply);
		
		return "redirect:community/apply/reg";
	}
	
	
}
