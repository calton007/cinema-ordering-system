package com.service;

import java.util.List;

import com.file.Order;

public interface OrderService {
	
	public void saveOrder(Order order);
	
	public boolean upAgree(Order order);
	
	public List<Order> checkOrder(int uid);
	
	public List<Order> checkOrderC(int cid);
	
	public void deleteOrder(Order order);
	
	
	public boolean passOrder(int id);
	
	public boolean denyOrder(int id);
	
	public boolean user_quit(int id);
	public boolean permit_quit(int id);
	

}
