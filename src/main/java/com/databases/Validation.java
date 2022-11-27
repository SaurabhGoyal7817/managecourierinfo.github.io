package com.databases;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.internal.SessionFactoryImpl;

public class Validation {
	
	
	public boolean check(AdminInfo adminInfo)
	{
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		
		
		SessionFactory fact=cfg.buildSessionFactory();
		
		Session session=fact.openSession();
		
		Query q=session.createQuery("from AdminInfo");
		boolean flag=false;
		List<AdminInfo> list=q.list();
		
		for(AdminInfo ad:list)
		{
			if(ad.getAdminId()==adminInfo.getAdminId()&&ad.getAdminPassword().equals(adminInfo.getAdminPassword()))
			{
				flag=true;
			}
		}
		session.close();
		
		return flag;
	}

	public boolean addClient(AddClientInfo ac) {
		
		boolean flag=false;
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
        SessionFactory fact=cfg.buildSessionFactory();
		
		Session session=fact.openSession();
		try {
		
		
		Transaction transaction=session.beginTransaction();
		
		session.save(ac);
		
		transaction.commit();
		
		session.close();
		flag=true;
		}
		catch(Exception e)
		{
		session.close();
		e.printStackTrace();
		}
		
		
		return flag;
		
	}

	public boolean updateData(AddClientInfo aci) {
		boolean flag=false;
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
        SessionFactory fact=cfg.buildSessionFactory();
		
		Session session=fact.openSession();
		try {
		
		
		Transaction transaction=session.beginTransaction();
		
		session.save(aci);
		
		transaction.commit();
		
		session.close();
		flag=true;
		}
		catch(Exception e)
		{
		session.close();
		e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
	
	
	
	

}
