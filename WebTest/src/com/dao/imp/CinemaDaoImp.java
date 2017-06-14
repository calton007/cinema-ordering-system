package com.dao.imp;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.CinemaDao;
import com.file.Cinema;
import com.file.User;
import com.service.FilmService;
import com.service.imp.FilmServiceImp;


public class CinemaDaoImp implements CinemaDao {

	
	@Override
	public void saveCinema(Cinema c) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   
      	   session.save(c);
      	   session.flush();
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

	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Cinema> getAllCinema() {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<Cinema> list=null;
		
		try
		{
			Query query=session.createQuery("from Cinema");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Cinema>)query.list();
			
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
		return list;
	}




	@Override
	public void deleteFilm(Cinema c) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		int id=c.getId();
		
		List<Cinema> list=null;
		
		try
		{
			Query query=session.createQuery("from Cinema where id="+id+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Cinema>)query.list();
			
			if(list.size()==1)
			{
				session.delete(list.get(0));
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
		}
		
	}




	@Override
	public boolean updateFilm(Cinema c) {
		// TODO Auto-generated method stub
		
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<Cinema> list=null;
      
         Integer id=c.getId();
         boolean result=false;
         
		  try
	         {
			
	      	   Query query1=session.createQuery("from Cinema where id="+id+"");
	      	   
	      	   list=(List<Cinema>)query1.list();
	      	   if(!list.isEmpty()&&list.size()==1)
	      	   {
	      		  list.get(0).setPlace(c.getPlace());
	      		  list.get(0).setPrice(c.getPrice());
	      		  list.get(0).setShowtext(c.getShowtext());
	      		  list.get(0).setTime(c.getTime());
	      		  list.get(0).setNum(c.getNum());
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
	public List<Cinema> searchfilm(int fid) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<Cinema> list=null;
		
		try
		{
			Query query=session.createQuery("from Cinema where fid="+fid+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Cinema>) query.list();
			
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
		return list;
	}

}
