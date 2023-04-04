package com.carshop.boards;

import java.util.List;
import java.util.Map;

public interface BoardRepository {
	
	void setNewBoard(Board board);
	
	List<Board> getAllBoardList();
	
	Board getBoardById(String bid);
	
	void replynewBoard(Map map);
	
	List<Board> getReplyById(String bid);
	
	void checkBoard(Map map);
}
