package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void setNewUser(User user) {
		this.sqlSessionTemplate.insert("users.insert", user);

	}

	public List<User> getAllUserList() {
		return this.sqlSessionTemplate.selectList("users.select_list");

	}
	
	public void removeUser(String username) {
		this.sqlSessionTemplate.delete("users.delete", username);

	}
	
	public void updateAuth(Map<String, Object> auth) {
		this.sqlSessionTemplate.update("users.updateAuth", auth);

	}
	
	public User existUsername(String email) {
		return this.sqlSessionTemplate.selectOne("users.select_email", email);
	}
	
}
