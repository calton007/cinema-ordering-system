package com.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.FilmDao;
import com.file.Film;

public class FilmDaoImp implements FilmDao {

	@Override
	public void saveFilm(Film film) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   
      	   session.save(film);
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
	public List<Film> checkAll() {
		// TODO Auto-generated method stub
		List<Film> list=null;
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   Query query=session.createQuery("from Film");
      	   
      	   list=(List<Film>)query.list();
      	   
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
	public Film checkById(int id) {
		// TODO Auto-generated method stub
		
		List<Film> list=null;
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   Query query=session.createQuery("from Film where id="+id+"");
      	   
      	   list=(List<Film>)query.list();
      	   
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
	
		
		return list.get(0);
	}

	@Override
	public Film checkByName(String name) {
		// TODO Auto-generated method stub
		List<Film> list=null;
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   Query query=session.createQuery("from Film where name='"+name+"'");
      	   
      	   list=(List<Film>) query.list();
      	   
      	   System.out.println(list.size());
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
	
		
		return list.get(0);
	}
		
		
		
	

}
