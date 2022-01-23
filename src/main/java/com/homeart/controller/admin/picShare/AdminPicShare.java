package com.homeart.controller.admin.picShare;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.homeart.domain.admin.AdminPageInfoVO;
import com.homeart.domain.admin.AdminPicShareVO;
import com.homeart.service.admin.picShare.AdminPicShareService;

import lombok.Setter;

@Controller
@RequestMapping("/adminPage/adminPicShare")
public class AdminPicShare {
	
	@Setter(onMethod_ = @Autowired)
	private AdminPicShareService service;
	
	@GetMapping("/AdminPicShare")
	public void list(@RequestParam(value="page", defaultValue="1") Integer page, 
			Model model, Integer id, @RequestParam(defaultValue="") String keyword) {
		
		// 한 페이지의 card 수
		Integer numberPerPage = 12;
		
		List<AdminPicShareVO> list = service.getListPage(page, numberPerPage, keyword);
		AdminPageInfoVO picPageInfo = service.getPageInfo(page, numberPerPage, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("picPageInfo", picPageInfo);
		model.addAttribute("read", service.get(id));
		
	}
	
	@GetMapping("/remove")
	public String remove(Integer id, String file) {
		
		service.remove(id, file);
		
		return "redirect:/adminPage/adminPicShare/AdminPicShare";
	}
	
}

