package com.dao;

import java.util.List;

import com.file.User;

public interface UserDao {
	public List<User> getAll();
	
	public void saveUser(User user);
	
	public User searchUser(User user);
	
	public boolean updateUser(User user);
	
	public boolean updateUserM(User user);
	
	public User searchManagerUser(User user);
	
	public User searchById(int id);
	
	public User insertsearchUser(User user);
	

}
