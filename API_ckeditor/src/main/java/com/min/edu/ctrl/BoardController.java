package com.min.edu.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.min.edu.service.IBoardService;
import com.min.edu.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {
	
	@Autowired
	private IBoardService service;
	

	@GetMapping(value = "/boardList.do")
	public String boardList(Model model) {
		log.info("@Controller 전체 게시판으로 이동");
		List<BoardVo> lists = service.boardList();
		model.addAttribute("lists", lists);
		return "boardList";
	}
	
	@GetMapping(value = "/boardDetail.do")
	public String boardDetail(String seq, Model model) {
		log.info("@Controller 게시글 상세 : {}번 게시글", seq);
		BoardVo vo = service.boardDetail(seq);
		model.addAttribute("vo", vo);
		return "boardDetail";
	}
	
	@GetMapping(value = "/writeBoard.do")
	public String writeBoard() {
		log.info("@Controller 게시글 작성 페이지");
		return "writeForm";
	}
	
	@PostMapping(value = "/write.do")
	public String write(BoardVo vo, Model model) {
		int n = service.writeBoard(vo);
		return "redirect:/boardList.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
