package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	public void setNewUser(User user) {

		userRepository.setNewUser(user);
	}

	public List<User> getAllUserList() {
		return userRepository.getAllUserList();
	}
	
	
	public void removeUser(String username) {
		userRepository.removeUser(username);
	}
	
	public void updateAuth(Map<String, Object> auth) {
		userRepository.updateAuth(auth);
	}
	
	public User existUsername(String email) {
		return userRepository.existUsername(email); 
	}
}
