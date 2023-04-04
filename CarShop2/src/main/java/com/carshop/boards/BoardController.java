package com.carshop.boards;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carshop.mail.MailService;
import com.carshop.users.User;
import com.carshop.users.UserService;

@Controller
@RequestMapping("/boards")
public class BoardController {

	@Autowired  //DI
	private BoardService boardService;
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private UserService userService;
	

	
	
	
	@GetMapping("/addboard")
	public String requestAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		
		return "boards/addboard";
	}
	
	@PostMapping("/addboard")
	public String submitAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		
		boardService.setNewBoard(board);
		
		User user = userService.existUsername(board.getBwriter());
		
		String to = user.getUemail();
		String subject = board.getBwriter() + " 님이 게시판에 글을 등록하셨습니다.";
		String body = board.getBcontent();
		
		mailService.sendMail(to, subject, body);
		
		return "redirect:/boards/list";
	}
	
	
	@GetMapping("/list")
	public String BoardList(Model model) {
	    List<Board> list = boardService.getAllBoardList();
	    model.addAttribute("boardList", list);

	    return "boards/list";
	}
	
	@GetMapping("/board")
	public String requestBoardById(@RequestParam("bid") String bid, Model model) {
		//주 게시물
		Board boardById = boardService.getBoardById(bid);
		model.addAttribute("board", boardById);
		
		
		// 답변 게시물
		List<Board> list = boardService.getReplyById(bid);
		int cnt = list.size();
		model.addAttribute("replyList",list);
		model.addAttribute("cnt", cnt);
		
		// 폼을 띄우기 전에 조회수 하나 증가
		
		Map<String, Object> map = new HashMap<String, Object>();
		
			map.put("check","bview");
			map.put("bid",bid);
		
		boardService.checkBoard(map);
		
		return "boards/board";
	}
	
	@ResponseBody
	@RequestMapping("/replynew")
	public void replynew(@RequestParam Map<String, Object> map) {
		
		String rpid = (String)map.get("rpwriter");
		String bpid = (String)map.get("bpwriter");

		boardService.replynewBoard(map);

		User user = userService.existUsername(bpid);
		
		String to = user.getUemail();
		String subject = bpid + " 님의 글에 댓글이 달렸습니다.";
		String body = (String)map.get("bcontent");
		
		mailService.sendMail(to, subject, body);
		
	}
	
	@ResponseBody
	@RequestMapping("/check")
	public void checkBoard(@RequestParam Map<String, Object> map) {
		
		System.out.println(map.get("check"));
		System.out.println(map);
		boardService.checkBoard(map);

		
	}
}
