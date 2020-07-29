package com.farm.web.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("CommunityIndexController")
@RequestMapping("/community/")
public class IndexController {

	@GetMapping("index")
	public String index() {
		
		return "community/index";
	}
}
