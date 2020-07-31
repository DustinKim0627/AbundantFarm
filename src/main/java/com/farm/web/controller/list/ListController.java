package com.farm.web.controller.list;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.dao.ItemDao;
import com.farm.web.entity.Item;
import com.farm.web.entity.ItemView;
import com.farm.web.service.ItemService;

@RequestMapping("/product")
@Controller
public class ListController {

	@Autowired
	ItemDao itemDao;
	@Autowired
	ItemService itemService;
	
	@GetMapping("/list")
	public String list(
			@RequestParam(name = "p", defaultValue = "1") Integer page,
			@RequestParam(name = "q", defaultValue = "") String query,
			// 검색 기본 값을 유저 name로 셋팅
			@RequestParam(name = "f", defaultValue = "name") String field, Model model) 
			throws ClassNotFoundException, SQLException {
		
		List<Item> publicLists = itemDao.publicNewItemAll();
		model.addAttribute("list", publicLists);
		
		List<ItemView> list = itemService.getItmeList(page, query, field);
		model.addAttribute("si", list);
		
		int getTotalCount = itemService.getTotalCount();
		model.addAttribute("count", getTotalCount);
		
		return "product/list";
	}
	
	@GetMapping("/hitlist")
	public String hitLists(Model model) {
		 
		List<Item> publicLists= itemDao.publicNewItemAll();
		int count = publicLists.size();
		
		model.addAttribute("list", publicLists);
		model.addAttribute("count", count);
		
		return "product/list";
	}
	
	// 상품 카테고리
	@GetMapping("link")
	public String getList4(String catgPName, Model model) throws ClassNotFoundException, SQLException {
		
		List<ItemView> list = itemService.getList4(catgPName);
		model.addAttribute("link", list);
		
		return "product/list";
	}
	
	
}
