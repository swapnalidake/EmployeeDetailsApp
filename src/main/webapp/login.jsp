<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>
 <style type="text/css">
  body
        {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        h2
        {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4
        {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        .jumbotron
        {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
            font-family: Montserrat,sans-serif;
        }
        
        .container-fluid
        {
            padding: 60px 50px;
        }
        
        .bg-grey
        {
            background-color: #f6f6f6;
            
        }
        .logo-small
        {
            color: #f4511e;
            font-size: 50px;
        }
        .logo
        {
            color: #f4511e;
            font-size: 200px;
        }
        
        .panel
        {
            border: 1px solid #f4511e;
            border-radius: 0px !important;
            transition: box-shadow 0.5s;
        }
        
        .panel:hover
        {
            box-shadow: 5px 0px 40px rgba(0,0,0,0.2);
            
        }
        .panel-footer .btn:hover
        {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }
        .panel-heading
        {
            color: #fff !important;
            background-color: #f4511e !important;
            padding: 25px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
            
        }
        .panel-footer
        {
            background-color: white !important;
        }
        .panel-footer h3
        {
            font-size: 32px;
        }
        .panel-footer h4
        {
            color: #aaa;
            font-size: 14px;
        }
        .panel-footer .btn
        {
            margin: 15px 0;
            background-color: #f4511e;
            color: #fff;
        }
        .navbar
        {
            margin-bottom: 0;
            background-color: #f4511e;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42em;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat,sans-serif;
        }
        
        .navbar li a,.navbar .navbar-brand
        {
            color: #fff !important;
        }
        .navbar-nav li a:hover,.navbar-nav li.active a
        {
            color: #f4511e !important;
            background-color: #fff !important;
        }
        
        footer .glyphicon
        {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }
        
        
        @media screen and (max-width:480px)
        {
            .logo
            {
                font-size: 150px;
            }
        }
        @media screen and (max-width:768px)
        {
            .col-sm-4
            {
                text-align: center;
                margin: 25px 0;
            }
            .btn-lg
            {
                width: 100%;
                margin-bottom: 35px;
            }
        }
    
  </style>  
</head>
<body>

<jsp:include page="index.jsp"></jsp:include> 
<div id="main">

<%String message = (String)request.getAttribute("errorMsg"); %>
<%if(message!=null){ %>

	<h3 style="color:red;"><%=message %></h3>

<%} %>
<!--  
<form action="LoginServlet" method="post">
	<table>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email" required/></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" required/></td>
		</tr>
		
		
		<tr>
		
			<td><input type="submit" value="Login"/></td>
			<td><input type="reset"/></td>
		</tr>
	</table>
	<br/><br/>
	<a href="adduser.jsp">Click Here to Register</a>
</form>
</div>
-->

<div class="container-fluid">
               <div class="row text-center">
 <div class="col-sm-3 "> </div>      
<div class="col-sm-6 ">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>LoginPanel</h1>
                </div>
                <div class="panel-body">
                <form action="LoginServlet" method="post" role="form" class="form-horizontal col-sm-12 col-md-12" autocomplete="off">
                    <div class="form-group">
                    <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                    </div>
                    <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>    
                    </div>
                    <div class="form-group">
                    <a href="forgot-password.jsp">forgot password?</a>
                    </div>
                    <div class="form-group">
                    <input type="submit" value="Login" class="btn btn-lg">
                    </div>
                    </form>
                </div>
                </div>
            </div>
     </div>
     </div>
     </div>   





</body>
</html>