package com.farm.web.controller.community;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.CustQnAView;
import com.farm.web.service.CustQnAService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller("CommunityQnaController")
@RequestMapping("/community/qna/")
public class QnaController {

	@Autowired
	private CustQnAService custQnaService;

	@GetMapping("list")
	public String list(@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query, Model model) {

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

	@PostMapping("reg")
	public String reg(HttpServletRequest request) throws IOException {

		// custQnaService.insert(custQnAview);

		InputStream is = request.getInputStream(); //보내는 내용을 is에 담음
		System.out.println(is);
		System.out.println("-1--------");
		
		Scanner scan = new Scanner(is, "UTF-8"); //scanner로 읽고
		System.out.println(scan);
		System.out.println("-2--------");
		
		String json = scan.nextLine(); //읽은 부분 json에 담고
		System.out.println(json);
		System.out.println("-3--------");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd-HH:mm:ss").create(); //gson의 추가설정(날짜포멧) .객체화시킴 
		System.out.println(gson);
		System.out.println("--4-------");
		
		Gson datas = new Gson();
		String data = gson.fromJson(json, String.class); //json을 String으로 변환.
		

		return "redirect:list";
	}

}
