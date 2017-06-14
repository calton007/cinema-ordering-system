package com.dao;

import java.util.List;

import com.file.Order;

public interface OrderDao {

	public void saveOrder(Order order);
	
	public boolean upAgree(Order order);//对订单进行操作批准还是不批准 1为批准0不批准
	
	public List<Order> checkOrder(int uid);
	
	public List<Order> checkOrderC(int cid);
	
	public void deleteOrder(Order order);
	
	
	public boolean passOrder(int id);
	
	public boolean denyOrder(int id);
	
	public boolean user_quit(int id);
	
	public boolean permit_quit(int id);
	
}
