package com.farm.web.controller.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.CustQnA;
import com.farm.web.entity.CustQnAView;
import com.farm.web.entity.Notice;
import com.farm.web.entity.DTO.ItemQnAListView;
import com.farm.web.service.CustQnAService;
import com.farm.web.service.QnaService;

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

	@GetMapping("{id}")
	public String detail(@PathVariable("id") int id, Model model) {
		
		CustQnAView custQnaView = custQnaService.get(id);
		model.addAttribute("q", custQnaView);
		
		return "community/qna/detail";
	}
	
	@GetMapping("reg")
	public String reg() {
		
		return "community/qna/reg";
	}
	

	
}
