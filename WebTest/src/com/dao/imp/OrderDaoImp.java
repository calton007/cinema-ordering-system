package com.dao.imp;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.OrderDao;
import com.file.Order;
import com.file.User;

public class OrderDaoImp implements OrderDao {

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		order.setTime(df.format(new Date()));
		
		try
		{
			session.save(order);
			tx.commit();
		}
		catch(Exception e)
		{
			if(tx!=null)
				tx.rollback();
			e.printStackTrace();
		}
		finally
		{
			HibernateUtil.close(session);
		}
		
		
	}

	@SuppressWarnings("finally")
	@Override
	public boolean upAgree(Order order) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		int Id=order.getId();
		List<Order> list=null;
		boolean result=false;
		
		try
		{
			Query query=session.createQuery("from Order where id="+Id+"");
			list=(List<Order>)query.list();
			if(list.size()==1)
			{
			  list.get(0).setStatus(1);
			  
			  
			  session.update(list.get(0));
			  
			  result=true;
			  
			}
			
			tx.commit();
		}
		catch(Exception e)
		{
			if(tx!=null)
				tx.rollback();
			e.printStackTrace();
		}
		finally
		{
			HibernateUtil.close(session);
			return result;
		}
			
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> checkOrder(int uid) {
		// TODO Auto-generated method stub
		List<Order> list=null;
		
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		try
		{
			Query query=session.createQuery("from Order where uid="+uid+"");
			list=(List<Order>)query.list();
			tx.commit();
			
		}catch(Exception ex)
		{
			if(tx!=null)
				tx.rollback();
			ex.printStackTrace();
		}
		finally
		{
			
			HibernateUtil.close(session);
		}
		
		
		
		
		
		return list;
	}

	@Override
	public void deleteOrder(Order order) {
		// TODO Auto-generated method stub
		
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		int id=order.getId();
		List<Order> list=null;
		
		try
		{
			
			Query query=session.createQuery("from Order where id="+id+"");
			list=(List<Order>)query.list();
			
			if(list.size()==1)
			{
				session.delete(list.get(0));
			}
			
			tx.commit();
			
		}
		catch(Exception ex)
		{
			if(tx!=null)
				tx.rollback();
			ex.printStackTrace();
		}
		finally
		{
			HibernateUtil.close(session);
		}
		
	}

	@SuppressWarnings("finally")
	@Override
	public List<Order> checkOrderC(int cid) {
		
		List<Order> list=null;
		
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		try
		{
			Query query=session.createQuery("from Order where cid="+cid+"");
			System.out.print(list==null);
			list=(List<Order>) query.list();
			System.out.print(list==null);
			tx.commit();
			
		}catch(Exception ex)
		{
			if(tx!=null)
				tx.rollback();
			ex.printStackTrace();
		}
		finally
		{
			
			HibernateUtil.close(session);
			
		}
		
		return list;
		
		
		
		
	}

	@Override
	public boolean passOrder(int id) {
		// TODO Auto-generated method stub
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<Order> list=null;
        
        
         Integer flag=Integer.valueOf(1);
      
         boolean result=false;
         
		  try
	         {
			
	      	   Query query1=session.createQuery("from Order where id="+id+"");
	      	   
	      	   list=(List<Order>)query1.list();
	      	   if(!list.isEmpty())
	      	   {
	      		  list.get(0).setStatus(flag);
	      		  
	      		  session.update(list.get(0));
	      		   /*
				Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
	      		   
				System.out.println(query2.executeUpdate());
				*/
	      		  result=true;
	      		 System.out.println(list.size());
	      	      
	      		 tx.commit();
	      	    	  
	      	   }
	      	   else
	      		 result=false; 
	      	   
	      	   //tx.commit();	  
	      	        	   
	         }
	         catch(Exception e)
	         {
	      	   if(tx!=null){
	      		   tx.rollback();
	      	   }
	      	  e.printStackTrace();
	         }
	         finally
	         {
	        	 
	      	   HibernateUtil.close(session);
	      	  
	         }
		  return result;
	}

	@Override
	public boolean denyOrder(int id) {
		// TODO Auto-generated method stub
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<Order> list=null;
        
        
      
         boolean result=false;
         
         try
         {
		
      	   Query query1=session.createQuery("from Order where id="+id+"");
      	   
      	   list=(List<Order>)query1.list();
      	   if(!list.isEmpty())
      	   {
      		  
      		 list.get(0).setStatus(2);//拒绝
     		  
     		  session.update(list.get(0));
     		   /* 
      		  
      		  session.delete(list.get(0));
      		   
			Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
      		   
			System.out.println(query2.executeUpdate());
			*/
      		  result=true;
      		 System.out.println(list.size());
      	      
      		 tx.commit();
      	    	  
      	   }
      	   else
      		 result=false; 
      	   
      	   //tx.commit();	  
      	        	   
         }
         catch(Exception e)
         {
      	   if(tx!=null){
      		   tx.rollback();
      	   }
      	  e.printStackTrace();
         }
         finally
         {
        	 
      	   HibernateUtil.close(session);
      	  
         }
	  return result;
}

	@Override
	public boolean user_quit(int id) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
        Transaction tx=session.beginTransaction();
        
        List<Order> list=null;
       
       
        Integer flag=Integer.valueOf(3);//申请退单
     
        boolean result=false;
        
		  try
	         {
			
	      	   Query query1=session.createQuery("from Order where id="+id+"");
	      	   
	      	   list=(List<Order>)query1.list();
	      	   if(!list.isEmpty())
	      	   {
	      		  list.get(0).setStatus(3);
	      		  
	      		  session.update(list.get(0));
	      		   /*
				Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
	      		   
				System.out.println(query2.executeUpdate());
				*/
	      		  result=true;
	      		 System.out.println(list.size());
	      	      
	      		 tx.commit();
	      	    	  
	      	   }
	      	   else
	      		 result=false; 
	      	   
	      	   //tx.commit();	  
	      	        	   
	         }
	         catch(Exception e)
	         {
	      	   if(tx!=null){
	      		   tx.rollback();
	      	   }
	      	  e.printStackTrace();
	         }
	         finally
	         {
	        	 
	      	   HibernateUtil.close(session);
	      	  
	         }
		  return result;
	}

	@Override
	public boolean permit_quit(int id) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
        Transaction tx=session.beginTransaction();
        
        List<Order> list=null;
       
       
        Integer flag=Integer.valueOf(4);//允许退单
     
        boolean result=false;
        
		  try
	         {
			
	      	   Query query1=session.createQuery("from Order where id="+id+"");
	      	   
	      	   list=(List<Order>)query1.list();
	      	   if(!list.isEmpty())
	      	   {
	      		  list.get(0).setStatus(4);
	      		  
	      		  session.update(list.get(0));
	      		   /*
				Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
	      		   
				System.out.println(query2.executeUpdate());
				*/
	      		  result=true;
	      		 System.out.println(list.size());
	      	      
	      		 tx.commit();
	      	    	  
	      	   }
	      	   else
	      		 result=false; 
	      	   
	      	   //tx.commit();	  
	      	        	   
	         }
	         catch(Exception e)
	         {
	      	   if(tx!=null){
	      		   tx.rollback();
	      	   }
	      	  e.printStackTrace();
	         }
	         finally
	         {
	        	 
	      	   HibernateUtil.close(session);
	      	  
	         }
		  return result;
	}
	

}
