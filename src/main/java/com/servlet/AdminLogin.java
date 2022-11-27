package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.databases.AdminInfo;
import com.databases.Validation;

import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class AdminLogin
 */
@MultipartConfig
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminId=request.getParameter("adminid");
		
		String password=request.getParameter("password");
		
		PrintWriter out =response.getWriter();
		boolean flag=false;
		System.out.println("1"+adminId);
		if(adminId!=null&&password!=null)
		{
			AdminInfo adminInfo=new AdminInfo();
			
			adminInfo.setAdminId(Integer.parseInt(adminId));
			adminInfo.setAdminPassword(password);
			
			Validation validation=new Validation();
			
			flag=validation.check(adminInfo);
			
		}
		
		
		HttpSession fs=request.getSession();
		if(flag)
		{
			
		fs.setAttribute("adminid", adminId);
		out.println("Yes");
			
		}
		else
		{
			
			out.println("invalid username or password...");	
			
		}
				
	}
	
	

}
