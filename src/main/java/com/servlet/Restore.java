package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.databases.AddClientInfo;
import com.databases.Backup;

/**
 * Servlet implementation class Restore
 */
public class Restore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String adminId=(String)request.getSession().getAttribute("adminid");
		
		String id=request.getParameter("restoreid");
		int userId=0;
		if(id!=null)
			userId=Integer.parseInt(id);
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		Session session=fact.openSession();
		
		Transaction tr=session.beginTransaction();
		
		Backup backup=(Backup)session.get(Backup.class,userId );
		
		PrintWriter out=response.getWriter();
		if(addBackup(backup))
		{
		session.delete(backup);
		tr.commit();
		response.sendRedirect("recentlydelete.jsp");
		}
		else
		{
			out.println("Data can not restore");
			response.sendRedirect("recentlydelete.jsp");
		}
	
	}
	
private boolean addBackup(Backup backup) {
		
		AddClientInfo aci=new AddClientInfo();
		
		boolean flag=false;
		
		aci.setFirstName(backup.getFirstName());
		aci.setLastName(backup.getLastName());
		aci.setEmail(backup.getEmail());
		aci.setBoxWeight(backup.getBoxWeight());
		aci.setDob(backup.getDob());
		aci.setDistanceFrom(backup.getDistanceFrom());
		aci.setDistanceTo(backup.getDistanceTo());
		aci.setImage(backup.getImage());
		aci.setPickUpDate(backup.getPickUpDate());
		aci.setDropDate(backup.getDropDate());
		aci.setAdminID(backup.getAdminId());
		
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		Session session=fact.openSession();
		
		try {
			
			
		Transaction tr=session.beginTransaction();
		
		session.save(aci);
		
		tr.commit();
		flag=true;
		session.close();
		}catch(Exception e)
		{
			session.close();
		}
		
		return flag;
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
