<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.cfg.Configuration" %>
 <%@page import="org.hibernate.SessionFactory"%>
 <%@page import="org.hibernate.Session"%>
 <%@page import="org.hibernate.Query"%>
 <%@page import="java.util.List"%>
 <%@page import="com.databases.AdminInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
<%
Configuration cfg=new Configuration();
cfg.configure("hibernate.config.xml");


SessionFactory fact=cfg.buildSessionFactory();

Session sessio=fact.openSession();

Query q=sessio.createQuery("from AdminInfo");
boolean flag=false;
List<AdminInfo> list=q.list();
String id=(String)request.getSession().getAttribute("adminid");
int adminId=0;
if(id!=null)
	adminId=Integer.parseInt(id);

if(adminId>0)
{
String name3="";
for(AdminInfo ad:list)
{
	if(ad.getAdminId()==adminId)
	{
		name3=ad.getAdminName();
		break;
	}
}
HttpSession hs=request.getSession();
hs.setAttribute("adname", name3);
sessio.close();

 %>

<body>
<!-- navbar -->
<%@include file="Utilty.jsp" %>



<%}
else{
	response.sendRedirect("login.jsp");
} %>

<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
</html>