<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Delivery</title>
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
 <%String s2=(String)request.getSession().getAttribute("adminid");
 
	  
  %>

<!-- navbar -->

<%@include file="Utilty.jsp" %>

<!-- banner -->

<div class="container-fluid p-0 m-0 ">

	<div class="jumbotron utility-bg text-white rounded-0 banner-background" >
		<div class="container">
		<h3 class="display-3">WELCOME</h3>
		<p>International courier services in India include DHL, FedEx, Blue Dart Express, Ekart, DTDC, VRL Courier Services, Delhivery, TNT,[4] Amazon.com, OCS and Gati Ltd. Apart from these, several local couriers also operate across India. Almost all of these couriers can be tracked online.</p>
		<%if(s2==null){ %>
		<button class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span>  Start !</button>
		<a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o fa-spin"></span>  Login</a>
		<%} %>
		</div>
	</div>
</div>

<div class="container ">
<div class="row mb-2">

<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Delhi To Pune</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Meerut To Noida</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Mumbai To Delhi</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
</div>
<div class="row mb-2">

<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Bangalore To Hyderabad</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Hyderabad To Pune</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
<div class="col-md-4">

<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Chennai To Bangalore</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button class="btn btn-outline-light btn-lg utility-bg"><span class="fa fa-toggle-right"></span>  Read More!</button>
  </div>
</div>
</div>
</div>
</div>


























<!--  javascript -->

<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script type="text/javascript">



</script>
</body>


</html>