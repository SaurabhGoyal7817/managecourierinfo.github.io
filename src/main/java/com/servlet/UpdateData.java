package com.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.databases.AddClientInfo;
import com.databases.Validation;


import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class DeleteData
 */
@MultipartConfig
public class UpdateData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateData() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String id=request.getParameter("updateid");
		System.out.println("Up"+id);
		int userId=0;
		if(id!=null)
			userId=Integer.parseInt(id);
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		Session session=fact.openSession();
		
		Transaction tr=session.beginTransaction();
		
		AddClientInfo aci=(AddClientInfo)session.get(AddClientInfo.class,userId );
		
		String adminId=(String)request.getSession().getAttribute("adminid");
		
		String firstName=request.getParameter("firstname");
		
		String lastName=request.getParameter("lastname");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String weight=request.getParameter("weight");
		String distanceFrom=request.getParameter("distancefrom");
		String distanceTo=request.getParameter("distanceto");
		
		String pickdate=request.getParameter("pickupdate");
		String dropdate=request.getParameter("dropdate");
		
		String image=setImage(request,"image");
		
		if(image!=null)
			aci.setImage(image);
		aci.setFirstName(firstName);
		aci.setLastName(lastName);
		aci.setEmail(email);
		
		aci.setDob(dob);
		aci.setBoxWeight(Double.parseDouble(weight));
		aci.setDistanceFrom(distanceFrom);
		aci.setDistanceTo(distanceTo);
		aci.setEmail(email);
		aci.setPickUpDate(pickdate);
		aci.setDropDate(dropdate);
		
		session.save(aci);
		tr.commit();
		session.close();
		
		
		if(aci!=null)
		{
			response.sendRedirect("viewallclients.jsp");
		}
	
		
	}

	private String setImage(HttpServletRequest request, String string) throws IOException, ServletException {

		
		Part part=request.getPart(string);
		
		try {
		if(part!=null)
		{
		
		String path="C:\\Users\\Soni Maurya\\Desktop\\webproject\\Application\\src\\main\\webapp\\image"+File.separator+part.getSubmittedFileName();
		
		FileOutputStream fos=new FileOutputStream(path);
		
		InputStream in=part.getInputStream();
		byte[] data=new byte[in.available()];
		in.read(data);
		fos.write(data);
		fos.close();
		return part.getSubmittedFileName();
		}}
		catch(Exception e)
		{
			return null;
		}
	
	return null;	
	}

}
