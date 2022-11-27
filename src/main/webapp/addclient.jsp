<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List"%>
   <%@page import="org.hibernate.Query,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration"%>
<%@page import="com.databases.AddClientInfo" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Client</title>
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
<body>
<%@include file="Utilty.jsp" %>

<%
String adminId=(String)request.getSession().getAttribute("adminid");
if(adminId!=null)
{
%>
<main class="d-flex align-items-center banner-background utility-bg" style="height:100%">
<div class="container">

<div class="row">
<div class="col-md-4 offset-md-4">

<div class="card">

<div class="card-header utility-bg text-white text-center">
<span class="fa fa-user-circle-o fa-3x "></span>
<p>Add Client</p>
</div>
<div class="card-body" style="margin-bottom:7em;">
<form id="logform" action="AddClient" method="POST" enctype="multipart/form-data">
  <div class="form-group">
  <label for="firstname">First Name</label><br>
<input type="text" name="firstname" class="form-control" id="firstname" aria-describedby="adminidHelp" placeholder="Enter first name" >
</div>
 <div class="form-group">
 <label for="lastname">Last Name</label><br>
<input type="text" name="lastname" class="form-control" id="lastname" aria-describedby="adminidHelp" placeholder="Enter last name">
    
  </div>
  <div class="form-group">
 <label for="image">Image</label><br>
<input type="file" name="image" class="form-control" id="image" aria-describedby="adminidHelp" >
    
  </div>
  <div class="form-group">
 <label for="email">Email</label><br>
<input type="email" name="email" class="form-control" id="email" aria-describedby="adminidHelp" placeholder="abc@opq.xyz" >
    
  </div>
 <div class="form-group">
 <label for="dob">DOB</label><br>
<input type="date" name="dob" class="form-control" id="dob" aria-describedby="adminidHelp" >
    
  </div>
  <div class="form-group">
 <label for="weight">DOB</label><br>
<input type="number" name="weight" class="form-control" id="weight" aria-describedby="adminidHelp" >
    
  </div>
  <div class="form-group">
 <label for="distancefrom">From</label><br>
<input type="text" name="distancefrom" class="form-control" id="distancefrom" aria-describedby="adminidHelp" >
    
  </div>
   <div class="form-group">
 <label for="distanceto">To</label><br>
<input type="text" name="distanceto" class="form-control" id="distanceto" aria-describedby="adminidHelp" >
    
  </div>
   <div class="form-group">
 <label for="pickupdate">Pickup Date</label><br>
<input type="date" name="pickupdate" class="form-control" id="pickupdate" aria-describedby="adminidHelp" >
    
  </div>
   <div class="form-group">
 <label for="dropdate">Drop Date</label><br>
<input type="date" name="dropdate" class="form-control" id="dropdate" aria-describedby="adminidHelp" >
    
  </div>
 
   <div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-3x"></span>
  <h4>Please wait...</h4>
  </div>
  <button type="submit" id="submit-btn" class="btn btn-outline-light btn-lg utility-bg">Submit</button>
</form>
</div>

</div>
</div>
</div>
</div>

</main>
<%}
else
		{
			response.sendRedirect("login.jsp");
		}%>
</body>
</html>