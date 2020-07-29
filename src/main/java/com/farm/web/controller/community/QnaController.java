package com.farm.web.controller.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.CustQnA;
import com.farm.web.entity.DTO.ItemQnAListView;
import com.farm.web.service.QnaService;

@Controller("CommunityQnaController")
@RequestMapping("/community/qna/")
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			Model model) {
		
		//List<CustQnA> list = qnaService.getList2(page, query, field);
		//model.addAttribute("list", list);
		
		return "community/qna/list";
	}

}
