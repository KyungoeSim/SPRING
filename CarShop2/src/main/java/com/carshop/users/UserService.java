package com.carshop.users;

import java.util.List;
import java.util.Map;


public interface UserService {

	void setNewUser(User user);

	List<User> getAllUserList();
	
	void removeUser(String username);
	
	void updateAuth(Map<String, Object> auth);
	
	User existUsername(String email);
}
