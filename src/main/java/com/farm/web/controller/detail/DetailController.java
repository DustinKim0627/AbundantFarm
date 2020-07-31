package com.farm.web.controller.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farm.web.dao.ItemQnADao;
import com.farm.web.dao.ReviewDao;
import com.farm.web.service.details.DetailService;
import com.farm.web.vo.DetailInitVo;
import com.farm.web.vo.ItemNoticeVo;
import com.farm.web.vo.ReviewNoticeVo;



@RequestMapping("/product")
@Controller
public class DetailController {

	@Autowired
	private DetailService detailService;
	
	@Autowired
	private ReviewDao reviewDao;
	
	@Autowired
	private ItemQnADao itemQnADao;
	
	@GetMapping("/details/{productId}")
	public String detail(@PathVariable("productId") int prId, Model model) {
			
		
		/*		
		 * 1. 디테일 초기상품 구성 화면 처리할 부분	
		 */
		model.addAttribute("itemId", prId);
		
		DetailInitVo detailInit = detailService.init(prId);
		model.addAttribute("detailInit", detailInit);
		
		/*
		 * 2. 리뷰 테이블 구현
		 */
		
		List<ReviewNoticeVo> reivewNotice = reviewDao.selectByItemId(prId);
		model.addAttribute("reivewNotice", reivewNotice);
		
		
		/* 
		 * 3. QnA 테이블 구현
		 */
		List<ItemNoticeVo> QnANotice = itemQnADao.selectByProductId(prId);
		model.addAttribute("QnANotice", QnANotice);
		
		return "product/details";
		
	}

}
