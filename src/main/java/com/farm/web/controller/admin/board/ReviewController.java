package com.farm.web.controller.admin.board;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.farm.web.entity.Notice;
import com.farm.web.service.admin.NoticeService;

@Controller("adminReviewController")
@RequestMapping("/admin/board/review/")
public class ReviewController {
	
	@Autowired
	private NoticeService noticeService;

	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			Model model) {
		List<Notice> list = noticeService.getList(page, field, query);
		model.addAttribute("list", list);
		
		return "admin.board.review.list";
	}
	
	@GetMapping("del")
	@ResponseBody
	public List<Notice> del(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			int[] id) {
		
		int res = noticeService.delete(id);
		List<Notice> list = noticeService.getList(page, field, query);
		
//		return null;
		return list;
	}
}