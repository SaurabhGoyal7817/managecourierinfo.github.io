<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.List"%>
   <%@page import="org.hibernate.Query,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration"%>
<%@page import="com.databases.Backup" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RecentlyDelete Data</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background{
clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 85%, 68% 93%, 31% 91%, 0 100%, 0% 30%);
}
.utility-bg{
	background:#EC407A!important;
	
}
</style>
</head>
<body>

<!-- navbar -->

<%@include file="Utilty.jsp" %>
<%
        Configuration cfg=new Configuration();
		cfg.configure("hibernate.config.xml");
		SessionFactory fact=cfg.buildSessionFactory();
		
		Session sessio=fact.openSession();
		
		Query q=sessio.createQuery("from Backup");
		boolean flag=false;
		List<Backup> list=q.list();
		sessio.close();
		
		String adminId=(String)request.getSession().getAttribute("adminid");
		
		if(adminId!=null)
		{
		
		
		%>
		
		<div class="table-responsive text-nowrap" style="overflow-x:auto">
		<table class="table table-hove table-bordered" >
		
		<thead>
		<tr >
		<th scope="col">No</th>
		<th scope="col">Image</th>
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">Email</th>
		<th scope="col">DOB</th>
		<th scope="col">Box Weight</th>
		<th scope="col">Distance From</th>
		<th scope="col">Distance To</th>
		<th scope="col">Pay</th>
		<th scope="col">PickUp Date</th>
		<th scope="col">Drop Date</th>
		<th scope="col">Delete</th>
		<th scope="col">Update</th>
		
		
		</tr>
		
		</thead >
		<%int i=1;
		for(Backup client:list)
		{
		
		%>
		
		<tbody>
		
		<tr>
		<th scope="row"><%=i++ %></th>
		
		<td><img src="image/<%=client.getImage()%>" width="40px" height="40px"></td>
		<td><%=client.getFirstName() %></td>
		<td><%=client.getLastName() %></td>
		<td><%=client.getEmail() %></td>
		<td><%=client.getDob() %></td>
		<td><%=client.getBoxWeight() %></td>
		<td><%=client.getDistanceFrom() %></td>
		<td><%=client.getDistanceTo() %></td>
		<td><%=client.getBoxWeight()/5 %></td>
		<td><%=client.getPickUpDate() %></td>
		<td><%=client.getDropDate() %></td>
		<td><a class="btn btn-outline-light btn-lg bg-danger" href="PerDeleteData?deleteid=<%=client.getId()%>">Delete</a></td>
		<td><a  class="btn btn-outline-light btn-lg bg-success" href="Restore?restoreid=<%=client.getId()%>">Restore</a></td>
		</tr>
		
		
		</tbody>
		<% }}
		else
		{
			response.sendRedirect("login.jsp");
		}%>
		
		</table>
		</div>
</body>
</html>
		
	