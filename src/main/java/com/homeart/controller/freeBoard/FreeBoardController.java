package com.homeart.controller.freeBoard;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.homeart.domain.freeBoard.PageInfoVO;
import com.homeart.domain.freeBoard.freeBoardVO;
import com.homeart.service.freeBoard.freeBoardService;

import lombok.Setter;

@Controller
@RequestMapping("/freeBoard")
public class FreeBoardController {
	
	@Setter(onMethod_ = @Autowired)
	private freeBoardService service;
	
	@GetMapping("/list")
	public void list(@RequestParam(value="page", defaultValue = "1") Integer page, 
			@RequestParam(value = "searchType", required = false) String searchType, 
			@RequestParam(value = "keyword", required = false) String keyword, Model model) {
		
		Integer numberPerPage = 10; //한페이지 row는 10줄로 설정
		
		//게시물 목록
		List<freeBoardVO> listAdmin = service.getList(searchType, keyword);
		List<freeBoardVO> listMember = service.getList(page, searchType, keyword, numberPerPage);
		PageInfoVO pageInfo = service.getPageInfo(page, searchType, keyword, numberPerPage);
		
		model.addAttribute("listAdmin", listAdmin);
		model.addAttribute("listMember", listMember);
		model.addAttribute("pageInfo", pageInfo);
	}
	
	//파라미터로 원하는 목록(값)출력
	@GetMapping("/get")
	public void getPost(@RequestParam("id") Integer id, Model model) {
		
		service.viewCount(id);
		
		freeBoardVO freeBoard = service.get(id);
		String[] fileNames = service.getFileNames(id);
		
		//게시물 내 페이지 이동위함
		List<freeBoardVO> movePageAdmin = service.movePageAdmin(id); //관리자게시물 페이지넘기기위함
		List<freeBoardVO> movePage = service.movePage(id); //일반회원 게시물 넘기기위함
		
		model.addAttribute("freeBoard", freeBoard);
		model.addAttribute("fileNames", fileNames);
		model.addAttribute("movePageAdmin", movePageAdmin);
		model.addAttribute("movePage", movePage);
	}
	
	@GetMapping("/modify")
	public void getModiInfo(@RequestParam("id") Integer id, Model model) {
		freeBoardVO freeBoard = service.get(id);
		String[] fileNames = service.getFileNames(id);
		
		model.addAttribute("freeBoard", freeBoard);
		model.addAttribute("fileNames", fileNames);
	}
	
	@PostMapping("/modify")
	public String modify(freeBoardVO board, String[] removeFile, MultipartFile[] files) {
		
		try {
			service.modify(board, removeFile, files);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/freeBoard/list";
	}

	@GetMapping("/post")
	public void post() {
		
	}
	
	//테이블에 등록
	@PostMapping("/post")
	public String post(freeBoardVO board, MultipartFile[] files) {
		try {
			service.post(board, files);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/freeBoard/list";
	}
	
	//컬럼 삭제
	@PostMapping("/remove")
	public String remove(@RequestParam("id") Integer id) {
		service.remove(id);
		return "redirect:/freeBoard/list";
	}
}
