package com.farm.web.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("CommunityApplyController")
@RequestMapping("/community/apply/")
public class ApplyController {

	@GetMapping("list")
	public String list() {
		
		return "commnunity/apply/list";
	}
	
}
