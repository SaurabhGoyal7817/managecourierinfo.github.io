package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.databases.AddClientInfo;
import com.databases.Validation;

/**
 * Servlet implementation class AddClient
 */
@MultipartConfig
public class AddClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String firstName=request.getParameter("firstname");
		
		String lastName=request.getParameter("lastname");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String weight=request.getParameter("weight");
		String distanceFrom=request.getParameter("distancefrom");
		String distanceTo=request.getParameter("distanceto");
		
		String pickdate=request.getParameter("pickupdate");
		String dropdate=request.getParameter("dropdate");
		
		String adminId=(String)request.getSession().getAttribute("adminid");
		boolean flag=false;
		
		
		
		if(adminId!=null&&firstName!=null&&email!=null&&dob!=null&&weight!=null&&distanceFrom!=null&&distanceTo!=null)
		{
			String data=setImage(request,"image");
			AddClientInfo ac=new AddClientInfo();
			
			ac.setFirstName(firstName);
			ac.setLastName(lastName);
			ac.setEmail(email);
			ac.setDob(dob);
			ac.setBoxWeight(Double.parseDouble(weight));
			ac.setDistanceFrom(distanceFrom);
			ac.setDistanceTo(distanceTo);
			ac.setImage(data);
			ac.setPickUpDate(pickdate);
			ac.setDropDate(dropdate);
			ac.setAdminID(Integer.parseInt(adminId));
			
			
			Validation validation=new Validation();
			
			flag=validation.addClient(ac);
		
		}
		PrintWriter out =response.getWriter();
		if(flag)
		{
			
			
			out.println("<h1>Client Information Added</h1>");
			
			response.sendRedirect("admindashboard.jsp?adminid="+adminId);
			
		}
		else
		{
			out.println("<h1>not Added</h1>");
		}

		
	}


	private String setImage(HttpServletRequest request, String string) throws IOException, ServletException {

		Part part=request.getPart(string);
	
		String path="C:\\Users\\Soni Maurya\\Desktop\\webproject\\Application\\src\\main\\webapp\\image"+File.separator+part.getSubmittedFileName();
		
		FileOutputStream fos=new FileOutputStream(path);
		
		InputStream in=part.getInputStream();
		byte[] data=new byte[in.available()];
		in.read(data);
		fos.write(data);
		fos.close();
		return part.getSubmittedFileName();
	}




}
