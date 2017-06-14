package com.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.dao.ExpressDao;
import com.file.Cinema;
import com.file.Express;
import com.file.Order;

public class ExpressDapImp implements ExpressDao {

	@Override
	public void save(Express e) {
		// TODO Auto-generated method stub
		
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		 try
         {
      	   
      	   session.save(e);
      	   tx.commit();
      	   
      	   
         }
         catch(Exception ex)
         {
      	   if(tx!=null){
      		   tx.rollback();
      	   }
      	  ex.printStackTrace();
         }
         finally
         {
      	   HibernateUtil.close(session);
         }
	
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		
		List<Express> list=null;
		
		try
		{
			
			Query query=session.createQuery("from Express where id="+id+"");
			list=(List<Express>)query.list();
			
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

	@Override
	public List<Express> getAll() {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<Express> list=null;
		
		try
		{
			Query query=session.createQuery("from Express");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Express>)query.list();
			
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
	public List<Express> getU(int uid) {
		
		
	
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<Express> list=null;
		
		try
		{
			Query query=session.createQuery("from Express where uid="+uid+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Express>) query.list();
			
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
	public List<Express> getF(int fid) {
		
		// TODO Auto-generated method stub
		
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		
		List<Express> list=null;
		
		try
		{
			Query query=session.createQuery("from Express where fid="+fid+"");//创建一个HQL查询语句，如果两个User类 ，需要加如包名字
			//Query接口，setMaxRsults()实现分页
			list=(List<Express>) query.list();
			
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
