<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
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
<% String adminId=(String)request.getSession().getAttribute("adminid"); 
if(adminId!=null)
{

%>
<br>

<br>
<div class="text-center">
<form action="consignment2.jsp" method="Post">
<label style="font-size:30px;font-weight:bold;color:green">Search By Pickup Date</label><br>
<input type="search" name="searchpick" placeholder="yyyy-mm-dd" >
<input class="btn btn-outline-light btn-lg bg-info" type="submit" value="Search">

</form>
<br>
<form action="consignment2.jsp" method="Post">
<label style="font-size:30px;font-weight:bold;color:green">Search By Drop Date</label><br>
<input type="search" name="searchdrop" placeholder="yyyy-mm-dd" >
<input class="btn btn-outline-light btn-lg bg-info" type="submit" value="Search">

</form>

</div>
<%}
else
		{
			response.sendRedirect("login.jsp");
		}%>
</body>
</html>