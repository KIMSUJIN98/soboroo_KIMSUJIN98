package com.kh.soboroo.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.board.model.service.BoardServiceImpl;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;


@Controller
public class BoardController {

	@Autowired
	private BoardServiceImpl bService;
	
	@RequestMapping("list.bo")
	public ModelAndView selectBoardList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
		//System.out.println(category);
		int listCount = bService.selectBoardListCount();
		 //System.out.println(listCount);
		
		  PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		  
		 
		  ArrayList<Board> list = bService.selectBoardList(pi);
		  
		  mv.addObject("pi", pi).addObject("list",
		  list).setViewName("board/boardListView");
		 
		
		return mv;
	}
	
	 @RequestMapping("detail.bo")
		public ModelAndView selectBoard(int bno, ModelAndView mv) {
		 
		 int result = bService.increaseCount(bno);
		 
		 //System.out.println(result);
		 
		 
		 if(result > 0) {
			 //System.out.println("이거타나요");
			 Board b = bService.selectBoard(bno);
			 
			 mv.addObject("b", b).setViewName("board/boardDetailView");
		 }else {
			 mv.addObject("errorMsg", "게시글 상세 조회 실패!").setViewName("common/errorPage");
			 
			 }
		 return mv;
	 }
	 
	 @RequestMapping("boardupdate.bo")
		public String updateForm() {
			return "board/boardUpdateForm";	// 포워딩(모델)	
		}
	 
	 @RequestMapping("enroll.bo")
		public String enrollForm() {
			return "board/boardEnrollForm";
			
		}
	 
	 @RequestMapping("insert.bo")
	 public String insertBoard(Board b, HttpSession session, Model model) {
		 
		 int result = bService.insertBoard(b);
		 
		 if(result > 0) {
			 session.setAttribute("alertMsg", "게시글이 성공적으로 등록되었습니다.");
			 return "redirect:list.bo";
		 }else {
			 model.addAttribute("errorMsg", "게시글 등록 실패");
			 return "common/errorPage";
		 }
		 
	 }
	
	
	
	
	
}
