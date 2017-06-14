package com.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.UserDao;
import com.file.Film;
import com.file.User;

public class UserDaoImp implements UserDao {

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
           Session session=HibernateUtil.openSession();
           Transaction tx=session.beginTransaction();
           
           
           try
           {
        	   
        	   session.save(user);
        	   tx.commit();
        	   System.out.println("tijiao");
        	   
        	   
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
	}

	@SuppressWarnings({ "finally", "unchecked" })
	@Override
	public User searchUser(User user) {
		// TODO Auto-generated method stub
		
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<User> list=null;
         String username=user.getU_name();
         String password=user.getPassword();
         User u=null;
         
         try
         {
      	   Query query=session.createQuery("from User where u_name='"+username+"'");
      	   
      	   list=(List<User>)query.list();
      	   if(!list.isEmpty()&&list.size()==1)
      	   {
      		 System.out.println(list.size());
      	      if(list.get(0).getPassword().equals(password))
      	      {
      	    	  
      	    	 u=list.get(0);
      	      }
      	      else
      	    	 u=null;
      	    	  
      	   }
      	   else
      		   u=null;	  
      	   tx.commit();	  
      	        	   
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
         return u;
		
	}

	@SuppressWarnings({ "finally", "unchecked" })
	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<User> list=null;
        
         String username=user.getU_name();
         String password=user.getPassword();
         String email=user.getEmail();
         String tel=user.getTel();
      
         boolean result=false;
         
		  try
	         {
			
	      	   Query query1=session.createQuery("from User where u_name='"+username+"'");
	      	   
	      	   list=(List<User>)query1.list();
	      	   if(!list.isEmpty()&&list.size()==1)
	      	   {
	      		  list.get(0).setPassword(password);
	      		  list.get(0).setEmail(email);
	      		  list.get(0).setTel(tel);
	      		  
	      		  session.update(list.get(0));
	      		   /*
				Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
	      		   
				System.out.println(query2.executeUpdate());
				*/
	      		  result=true;
	      		 System.out.println(list.size());
	      	      
	      	    	  
	      	   }
	      	   else
	      		 result=false; 
	      	   tx.commit();	  
	      	        	   
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
	      	   return result;
	         }
		
		
		
	}

	@Override
	public User searchManagerUser(User user) {
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<User> list=null;
         String username=user.getC_name();
         String password=user.getPassword();
         User u=null;
         
         try
         {
      	   Query query=session.createQuery("from User where c_name='"+username+"'");
      	   
      	   list=(List<User>)query.list();
      	   if(!list.isEmpty()&&list.size()==1)
      	   {
      		 System.out.println(list.size());
      	      if(list.get(0).getPassword().equals(password))
      	      {
      	    	  
      	    	 u=list.get(0);
      	      }
      	      else
      	    	 u=null;
      	    	  
      	   }
      	   else
      		   u=null;	  
      	   tx.commit();	  
      	        	   
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
         
         return u;
	}

	@Override
	public User searchById(int id) {
		// TODO Auto-generated method stub
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<User> list=null;
        
         User u=null;
         
         try
         {
      	   Query query=session.createQuery("from User where id="+id+"");
      	   
      	   list=(List<User>)query.list();
      	   if(!list.isEmpty()&&list.size()==1)
      	   {
      		 System.out.println(list.size());
      	   
      	    	  u=list.get(0);
      	   }
      	   else
      		   u=null;	  
      	   tx.commit();	  
      	        	   
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
         return u;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		
		
		List<User> list=null;
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   Query query=session.createQuery("from User");
      	   
      	   list=(List<User>)query.list();
      	   
      	   tx.commit();
      	   
      	   
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
	
		
		return list;
	
	}

	@Override
	public User insertsearchUser(User user) {
		// TODO Auto-generated method stub
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<User> list=null;
         String username=user.getU_name();
         String password=user.getPassword();
         User u=null;
         
         try
         {
      	   Query query=session.createQuery("from User where u_name='"+username+"'");
      	   
      	   list=(List<User>)query.list();
      	   if(!list.isEmpty()&&list.size()==1)
      	   {
      		 System.out.println(list.size());
      	       
      	    	 u=list.get(0);
      	     
      	   }
      	   else
      		   u=null;	  
      	   tx.commit();	  
      	        	   
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
         return u;
		
	}

	@Override
	public boolean updateUserM(User user) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
        Transaction tx=session.beginTransaction();
        
        List<User> list=null;
       
        String username=user.getC_name();
        String password=user.getPassword();
        String email=user.getEmail();
        String tel=user.getTel();
     
        boolean result=false;
        
		  try
	         {
			
	      	   Query query1=session.createQuery("from User where c_name='"+username+"'");
	      	   
	      	   list=(List<User>)query1.list();
	      	   if(!list.isEmpty()&&list.size()==1)
	      	   {
	      		  list.get(0).setPassword(password);
	      		  list.get(0).setEmail(email);
	      		  list.get(0).setTel(tel);
	      		  
	      		  session.update(list.get(0));
	      		  
	      		tx.commit();	 
	      		
	      		System.out.print("!!!!!!!!!!!!!!!!!!!!!!!");
	      		   /*
				Query query2=session.createQuery("update User set password='"+password+"',email='"+email+"',tel='"+tel+"' where username='"+username+"'");
	      		   
				System.out.println(query2.executeUpdate());
				*/
	      		  result=true;
	      		 System.out.println(list.size());
	      	      
	      	    	  
	      	   }
	      	   else
	      		 result=false; 
	      	   
	      	        	   
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
	      	   return result;
	         }
		
	}

}
