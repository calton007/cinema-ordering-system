package com.service.imp;

import java.util.List;

import com.dao.OrderDao;
import com.dao.imp.OrderDaoImp;
import com.file.Order;
import com.service.OrderService;

public class OrderServiceImp implements OrderService {

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		
		OrderDao orderdao=new OrderDaoImp();
		orderdao.saveOrder(order);
	}

	@Override
	public boolean upAgree(Order order) {
		// TODO Auto-generated method stub
		
		OrderDao dao=new OrderDaoImp();
		
		return dao.upAgree(order);
	}

	@Override
	public List<Order> checkOrder(int uid) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		
		List<Order> list=dao.checkOrder(uid);
		return list;
	}

	@Override
	public void deleteOrder(Order order) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		dao.deleteOrder(order);
		
	}

	@Override
	public List<Order> checkOrderC(int cid) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		
		
		return dao.checkOrderC(cid);
	}

	@Override
	public boolean passOrder(int id) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		return dao.passOrder(id);
	}

	@Override
	public boolean denyOrder(int id) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		return dao.denyOrder(id);
	}

	@Override
	public boolean user_quit(int id) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		return dao.user_quit(id);
	}

	@Override
	public boolean permit_quit(int id) {
		// TODO Auto-generated method stub
		OrderDao dao=new OrderDaoImp();
		return dao.permit_quit(id);
	}

	
	

}
