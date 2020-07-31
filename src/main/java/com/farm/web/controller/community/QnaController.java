package com.farm.web.controller.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.CustQnAView;
import com.farm.web.service.CustQnAService;

@Controller("CommunityQnaController")
@RequestMapping("/community/qna/")
public class QnaController {
	
	@Autowired
	private CustQnAService custQnaService;
	
	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			Model model) {
		
		List<CustQnAView> list = custQnaService.getList(page, field, query);
		model.addAttribute("list", list);
		
		return "community/qna/list";
	}

	@GetMapping("reg")
	public String reg() {
		
		return "community/qna/reg";
	}
	
//	@PostMapping("reg")
//	public String reg(@RequestBody Notice notice) {
//
//		noticeService.insert(notice);
//		
//		return "redirect:list";
//	}
//	
	
}
