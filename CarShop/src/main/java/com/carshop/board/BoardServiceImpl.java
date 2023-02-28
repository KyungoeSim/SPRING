package com.carshop.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired //객체를 생성해 버린다.(new=이걸 해주는거)
	private BoardRepository boardRepository;
	
	@Override
	public List<BoardDTO> getAllBoardList() {
		// TODO Auto-generated method stub
		return boardRepository.getAllBoardList();
	}

}
