package com.carshop.board;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


@Repository
public class BoardRepositoryImpl implements BoardRepository {

	private List<BoardDTO> listOfBoards = new ArrayList<BoardDTO>();
	
	public BoardRepositoryImpl() {
		BoardDTO board1 = new BoardDTO("여러분", "너무", "보고싶었어", "2023.02.28");
		BoardDTO board2 = new BoardDTO("여러분", "너무", "보고싶었어", "2023.02.28");
		BoardDTO board3 = new BoardDTO("여러분", "너무", "보고싶었어", "2023.02.28");
		
		listOfBoards.add(board1);
		listOfBoards.add(board2);
		listOfBoards.add(board3);
	}
		
		

	
	
	@Override
	public List<BoardDTO> getAllBoardList() {
		// TODO Auto-generated method stub
		return listOfBoards;
	}

}
