package com.carshop.boards;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.carshop.controller.CarDTO;
import com.carshop.users.User;

@Repository
public class BoardRepositoryImpl implements BoardRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public void setNewBoard(Board board) {
		this.sqlSessionTemplate.insert("board.insert", board);
	}
	
	public List<Board> getAllBoardList() {
		return this.sqlSessionTemplate.selectList("board.select_list");

	}
	
	public Board getBoardById(String bid) {
	
		return this.sqlSessionTemplate.selectOne("board.select_detail", bid);

	}

	public void replynewBoard(Map map) {
		this.sqlSessionTemplate.insert("board.insert_reply", map);

	}
	
	public List<Board> getReplyById(String bid) {
		return this.sqlSessionTemplate.selectList("board.select_reply", bid);
	}
	
	public void checkBoard(Map map) {
		String check = (String)map.get("check");
		
		System.out.println("조건1 : " + check);
		
		
		if (check.equals("blike")){
			this.sqlSessionTemplate.update("board.update_like", map);
		}else if(check.equals("bhate")){
			this.sqlSessionTemplate.update("board.update_hate", map);
		}else if(check.equals("bview")){
			this.sqlSessionTemplate.update("board.update_view", map);
		}
	}
}
