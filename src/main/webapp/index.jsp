<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>


</head>
<style>
.navbar-nav{
font-size:30px;


}
</style>
<body>   
	<nav class="navbar navbar-expand-sm navbar-light bg-danger">
	  <div class="container-fluid ">
	  
		
		 <ul class="navbar-nav ">
		<li class="nav-item">
			  <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link active" aria-current="page" href="adduser.jsp">Register</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link active" aria-current="page" href="employeedetails.jsp">Employees Details</a>
			</li>
			
			</ul>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
		  <ul class="navbar-nav ">
			
			<li class="nav-item">
			  <a class="nav-link" href="logout.jsp">Logout</a>
			</li>			
		  </ul>		  
		</div>
		
	  </div>
	  
	</nav>
	<!--  
	<footer class="container-fluid text-center" style="padding: 10px; margin-bottom: 10px; background-color:#f4511e;">
        <p style="color: white;">Employee Details &copy;By Swapnali Dake</p>
        </footer>
        -->
</body>

	
</html>