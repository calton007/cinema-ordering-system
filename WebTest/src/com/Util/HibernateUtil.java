package com.Util;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory sessionFactory;//全局只有一个sessionfactory，一个数据库对应一个
	
	static 
	{
	 try
	 {
		 sessionFactory=new Configuration().configure().
				 buildSessionFactory();
		 
		 
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
		
	}
	public static Session openSession()
	{
		Session session=sessionFactory.openSession();
		return session;
	}
	
	public static void close(Session session)
	{
		if(session!=null){
			session.close();
		}
	}
	
	
}
