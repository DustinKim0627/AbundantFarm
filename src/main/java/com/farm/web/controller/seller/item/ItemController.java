package com.farm.web.controller.seller.item;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.farm.web.entity.Item;
import com.farm.web.entity.Member;
import com.farm.web.entity.Origin;
import com.farm.web.entity.SellerCategoryCountView;
import com.farm.web.entity.SellerItemView;
import com.farm.web.service.ItemService;


@Controller("sellerItemController")
@RequestMapping("/seller/item/")
public class ItemController {
	
	@Autowired
	private ItemService spservice;
		
	@GetMapping("list")
	public String list(
			@RequestParam(name = "q", defaultValue = "") String query,
			@RequestParam(name = "f", defaultValue = "name") String field,
			@RequestParam(name = "catg", defaultValue = "") String category,
			@RequestParam(name = "p", defaultValue = "1") Integer page,
			Model model//,Principal principal
			) {
		
//		String uId= principal.getName(); 누가 로그인햇는지 담는다. // 시큐리티의기능 로그인 이후에 해도된다.
		String uid = "seller";
		List<SellerItemView> list = null;
		List<SellerCategoryCountView> count = null;
		list = spservice.getList(query,field,category,page,uid);
		count = spservice.getCountList();

		model.addAttribute("list",list);
		model.addAttribute("cl",count);

		return "seller/item/list";
	}
	
	@GetMapping("del")
	public String delete(@RequestParam(name = "item-id", defaultValue = "") Integer id) {
		spservice.delete(id);
		return "redirect:list";
	}
	
	@GetMapping("pub")
	public String updatePub(@RequestParam(name = "item-id", defaultValue = "") Integer id) {
		System.out.println(id);
		spservice.updatePub(id);
		return "redirect:list";
	}
	
	@PostMapping("pub")
	public String updatepub(@RequestParam(name = "item-id", defaultValue = "") Integer[] ids) {
		
		for(Integer id : ids)
			spservice.updatePub(id);
		
		return "redirect:list";
	}
	
	@GetMapping("reg")
	public String reg(Model model) {
		
		String uid = "seller";
		Member member=null;

		member = spservice.getMember(uid);
		model.addAttribute("m",member);

		List<Origin> olist = spservice.getList();
		model.addAttribute("originlist",olist);
		
		return "seller/item/reg";
	}
	
	@PostMapping("reg")
	public String reg(MultipartFile file,HttpServletRequest request,
			@RequestParam(name = "store-qty", defaultValue = "") Integer qty,
			Item item) throws IOException{
		System.out.println(item);
		
//////////////////////////////////////////////이미지업로드를 안한다면 업로드 금지하는거 추가하기////
		String path = request.getServletContext().getRealPath("/upload/"); 
		File file1 = new File(path);
		if(!file1.exists()) 
          file1.mkdir();
		path += file.getOriginalFilename();
		item.setImage(file.getOriginalFilename());
		FileOutputStream os = new FileOutputStream(path);
       
      InputStream is = file.getInputStream();
      
      byte[] buf = new byte[1024];
      int len = 0;
       while((len = is.read(buf)) != -1) // buf사이즈 만큼 read함 // is.read(buf) -> 다 못채웠으면 LEN만큼 반환함    
          os.write(buf, 0, len);
///////////////////////////////////////////////////////
		int result = spservice.insertSellerProduct(item,qty);
	       
		return "redirect:/seller/index";
	}


}
