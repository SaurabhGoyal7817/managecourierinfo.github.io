
  <%String s=(String)request.getSession().getAttribute("adminid");
  	String name=(String)request.getSession().getAttribute("adname");
 
	  
  %>
<nav class="navbar navbar-expand-lg navbar-light utility-bg">
  <a class="navbar-brand text-white" href="index.jsp"><span class="fa fa-bolt" style="font-size:24px"></span>  Courier Delivery</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


<%if(s==null)
	{%>
  <div class="collapse navbar-collapse " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item active">
        <a class="nav-link text-white" href="#"><span class="fa fa-street-view"></span>  About <span class="sr-only">(current)</span></a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link text-white" href="#"><span class="fa fa-thumbs-up"></span>  Contact</a>
      </li>
    <li class="nav-item">
    <a href="login.jsp" class="nav-link text-white"><span class="fa fa-user-circle-o"></span>  Login</a>
		
    </li>
    <li class="nav-item">
    <a href="register.jsp" class="nav-link text-white"><span class="fa fa-user-plus"></span>  Sign Up</a>
		
    </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
    </form>
   
  </div>
  <%}
else
{%>
   <div class="collapse navbar-collapse " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item active">
        <a class="nav-link text-white" href="viewallclients.jsp"><span class="fa fa-street-view"></span>  View Clients <span class="sr-only">(current)</span></a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link text-white" href="addclient.jsp"><span class="fa fa-thumbs-up"></span>  Add Client</a>
      </li>
    <li class="nav-item">
    <a href="recentlydelete.jsp" class="nav-link text-white"><span class="fa fa-user-circle-o"></span>  Recently Delete Data</a>
		
    </li>
    <li class="nav-item">
    <a href="consignment.jsp" class="nav-link text-white"><span class="fa fa-user-plus"></span>  Consignment</a>
		
    </li>
    <li class="nav-item">
    <a href="logout.jsp" class="nav-link text-white"><span class="fa fa-user-plus"></span>  Log Out</a>
		
    </li>
    </ul>
     <form class="form-inline my-2 my-lg-0">
      <h4 class="text-white">Welcome <%=name %>    </h4>
    </form>
  </div>
  <%} %>
</nav>