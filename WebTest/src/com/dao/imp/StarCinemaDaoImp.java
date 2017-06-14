package com.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.StarCinemaDao;
import com.file.Cinema;
import com.file.StarCinema;

public class StarCinemaDaoImp implements StarCinemaDao {

	@Override
	public void saveCinema(StarCinema c) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   
      	   session.save(c);
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
	}

	@Override
	public List<StarCinema> getAllCinema() {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<StarCinema> list=null;
		
		try
		{
			Query query=session.createQuery("from StarCinema");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<StarCinema>)query.list();
			
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
	public void deleteFilm(StarCinema c) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		int id=c.getId();
		
		List<StarCinema> list=null;
		
		try
		{
			Query query=session.createQuery("from StarCinema where id="+id+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<StarCinema>)query.list();
			
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
	public boolean updateFilm(StarCinema c) {
		// TODO Auto-generated method stub
		 Session session=HibernateUtil.openSession();
         Transaction tx=session.beginTransaction();
         
         List<StarCinema> list=null;
      
         Integer id=c.getId();
         boolean result=false;
         
		  try
	         {
			
	      	   Query query1=session.createQuery("from StarCinema where id="+id+"");
	      	   
	      	   list=(List<StarCinema>)query1.list();
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
	public List<StarCinema> searchfilm(int fid) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<StarCinema> list=null;
		
		try
		{
			Query query=session.createQuery("from StarCinema where fid="+fid+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<StarCinema>) query.list();
			
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
