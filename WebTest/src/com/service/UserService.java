package com.service;

import java.util.List;

import com.file.User;

public interface UserService {
	public void saveUser(User user);
	public User searchUser(User user);

	public boolean updateUser(User user);
	
	public User searchManagerUser(User user);
	
	public User searchById(int id);
	
	public List<User> getAll();
	public User insertsearchUser(User user);
	
	public boolean updateUserM(User user);
}
