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
import com.farm.web.service.seller.SellerItemService;

@Controller("RegController")
@RequestMapping("/seller/item/reg/")
public class RegController {
	
	@Autowired
	private SellerItemService spservice;
	
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



