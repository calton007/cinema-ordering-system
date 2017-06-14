package com.service.imp;

import java.util.List;

import com.dao.UserDao;
import com.dao.imp.UserDaoImp;
import com.file.User;
import com.service.UserService;

public class UserServiceImp implements UserService {
	
	

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		UserDao userdao=new UserDaoImp();
		userdao.saveUser(user);
		
	}

	@Override
	public User searchUser(User user) {
		// TODO Auto-generated method stub
		
		UserDao dao=new UserDaoImp();
		User u=dao.searchUser(user);
		return u;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDaoImp();
		
		return dao.updateUser(user);
	}

	@Override
	public User searchManagerUser(User user) {
		// TODO Auto-generated method stub
		
		UserDao dao=new UserDaoImp();
		return dao.searchManagerUser(user);
	}

	@Override
	public User searchById(int id) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDaoImp();
		return dao.searchById(id);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		UserDao dao=new UserDaoImp();
		return dao.getAll();
	}

	@Override
	public User insertsearchUser(User user) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDaoImp();
		return dao.insertsearchUser(user);
	}

	@Override
	public boolean updateUserM(User user) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDaoImp();
		return dao.updateUserM(user);
	}

}
