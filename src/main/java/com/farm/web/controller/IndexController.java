package com.farm.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farm.web.dao.ReviewDao;
import com.farm.web.entity.DTO.ReviewViewofIndex;

@Controller
@RequestMapping("/")
public class IndexController {

	@Autowired
	ReviewDao reviewDao;

	@GetMapping("index")
	public String index(Model model) {

		// 현재 비지니스로직이없이 바로 데이터를 바인딩해주기때문에 Application Layer를 만들지않음
		List<ReviewViewofIndex> reviews = reviewDao.indexOfReviews();
		model.addAttribute("reviews", reviews);
		return "root.index";
	}

}
