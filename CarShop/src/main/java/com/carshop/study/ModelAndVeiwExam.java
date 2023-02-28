package com.carshop.study;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.carshop.board.BoardDTO;
import com.carshop.board.BoardService;

@Controller
@RequestMapping("/study")
public class ModelAndVeiwExam {
	
	private BoardService boardService;
	
	@GetMapping("/modelandview")
	public ModelAndView modelandview() {
		ModelAndView modelandview = new ModelAndView();
		List<BoardDTO> list = boardService.getAllBoardList();
		modelandview.addObject("test", list);
		modelandview.setViewName("study/modelandview");
		return modelandview;
	}
}
