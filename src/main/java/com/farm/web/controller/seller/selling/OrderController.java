package com.farm.web.controller.seller.selling;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.OrderItem;
import com.farm.web.entity.OrderItemView;
import com.farm.web.service.OrderService;

@Controller("sellerOrderController")	
@RequestMapping("/seller/selling/")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@GetMapping("list")
	public String list(
			@RequestParam(name = "p", defaultValue = "1") Integer page, 
			@RequestParam(name = "st", defaultValue = "") String status,
			@RequestParam(name = "f", defaultValue = "iName") String field,
			@RequestParam(name = "q", defaultValue = "") String query,
			HttpServletRequest request,
			Model model) {
		
		
		List<OrderItemView> oiList = orderService.getOrderItemList(page, status, field, query);
		model.addAttribute("oiList", oiList);
		model.addAttribute("p", page);
		model.addAttribute("st", status);
		model.addAttribute("f", field);
		model.addAttribute("q", query);
		
		return "seller/selling/list";
	}
	
	@PostMapping("list")
	public String list2(
			HttpServletRequest request,
			Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		int page = Integer.parseInt(request.getParameter("p"));
		String status = request.getParameter("st");
		String field = request.getParameter("f");
		String query = request.getParameter("q");
		
		List<OrderItemView> oiList = orderService.getOrderItemList(page, status, field, query);
		model.addAttribute("oiList", oiList);
		model.addAttribute("p", page);
		model.addAttribute("st", status);
		model.addAttribute("f", field);
		model.addAttribute("q", query);
		
		return "seller/selling/list";
	}
	
	@GetMapping("{dtlNum}")
	public String detail(@PathVariable("dtlNum") int dtlNum, Model model) {
		
		OrderItemView orderItem = orderService.getOrderItemView(dtlNum);
		model.addAttribute("oi", orderItem);
		return "seller/selling/detail";
	}
	
	@PostMapping("{dtlNum}")
	public String detail2(@PathVariable("dtlNum") int dtlNum, 
			HttpServletRequest request, 
			Model model) {
		
		
		
		// 송장회사, 송장번호 첨부
//		orderService
		
		return "redirect:list";
	}
	
	@GetMapping("qty")
	public String quantity() {
		
		
		return "seller/selling/quantity";
	}
	
}
