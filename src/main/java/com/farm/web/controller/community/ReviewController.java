package com.farm.web.controller.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.Notice;
import com.farm.web.entity.Review;
import com.farm.web.entity.DTO.ReviewView;
import com.farm.web.service.NoticeService;
import com.farm.web.service.ReviewService;

@Controller("CommunityReviewController")
@RequestMapping("/community/review/")
public class ReviewController {
	
	@Autowired
	private ReviewService sellerReviewService;

	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			Model model) {
		
//		List<ReviewView> review = sellerReviewService.getList();
//		model.addAttribute("review", review);
		
		return "community/review/list";
	}
}
