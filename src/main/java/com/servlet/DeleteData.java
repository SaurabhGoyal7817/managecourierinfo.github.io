package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.databases.AddClientInfo;
import com.databases.Backup;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class DeleteData
 */
public class DeleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("deleteid");
		int userId=0;
		if(id!=null)
			userId=Integer.parseInt(id);
		String adminId=(String)request.getSession().getAttribute("adminid");
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		Session session=fact.openSession();
		
		Transaction tr=session.beginTransaction();
		
		AddClientInfo aci=(AddClientInfo)session.get(AddClientInfo.class,userId );
		
		PrintWriter out=response.getWriter();
		if(addBackup(aci))
		{
		session.delete(aci);
		tr.commit();
		out.println("Data deleted..");
		response.sendRedirect("viewallclients.jsp");
		}
		else
		{
			out.println("Data can not delete");
			response.sendRedirect("viewallclients.jsp");
		}
		
		
		
		

	}

	private boolean addBackup(AddClientInfo aci) {
		
		Backup backup=new Backup();
		boolean flag=false;
		
		backup.setFirstName(aci.getFirstName());
		backup.setLastName(aci.getLastName());
		backup.setEmail(aci.getEmail());
		backup.setBoxWeight(aci.getBoxWeight());
		backup.setDob(aci.getDob());
		backup.setDistanceFrom(aci.getDistanceFrom());
		backup.setDistanceTo(aci.getDistanceTo());
		backup.setImage(aci.getImage());
		backup.setPickUpDate(aci.getPickUpDate());
		backup.setDropDate(aci.getDropDate());
		backup.setAdminId(aci.getAdminID());
		
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		Session session=fact.openSession();
		
		try {
		Transaction tr=session.beginTransaction();
		
		session.save(backup);
		
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
	
		doGet(request, response);
	}

}
