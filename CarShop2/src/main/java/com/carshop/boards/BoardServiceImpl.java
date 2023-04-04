package com.carshop.boards;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardRepository boardRepository;
	
	public void setNewBoard(Board board) {
		boardRepository.setNewBoard(board);
	}
	
	
	public List<Board> getAllBoardList() {
		return boardRepository.getAllBoardList();
	}
	
	public Board getBoardById(String bid) {
		
		return boardRepository.getBoardById(bid);
	}
	
	public void replynewBoard(Map map) {
		boardRepository.replynewBoard(map);
	}
	
	public List<Board> getReplyById(String bid) {
		return boardRepository.getReplyById(bid);
	}
	
	public void checkBoard(Map map) {
		boardRepository.checkBoard(map);
	}
}
