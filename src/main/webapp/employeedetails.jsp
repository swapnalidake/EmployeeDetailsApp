<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
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


</style>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<div class="container-fluid">
        <div class="row text-center">
 <div class="col-sm-3 "> </div>      
<div class="col-sm-6 ">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>Employee Details</h1>
                </div>
                <div class="panel-body">
                <form action="EmpAddressServlet" method="post" role="form" class="form-horizontal col-sm-12 col-md-12" autocomplete="off">
                     <div class="form-group">
                    <label for="empNo"> Employee Number</label>
                    <input type="text" name="empNo" id="empNo" class="form-control" placeholder="Enter Employee Number" required>    
                    </div> 
                    <div class="form-group">
                    <label for="empName"> Employee Name</label>
                    <input type="text" name="empName" id="empName" class="form-control" placeholder="Enter Employee Name" required>    
                    </div>
                    <div class="form-group">
                    <label for="street">Street</label>
                    <input type="text" name="street" id="street" class="form-control" placeholder="Enter street" required>    
                    </div>
                     <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" name="city" id="city" class="form-control" placeholder="Enter city" required>    
                    </div>
                     <div class="form-group">
                    <label for="state">State</label>
                    <input type="text" name="state" id="state" class="form-control" placeholder="Enter state" required>    
                    </div>
                   
                
                    <div class="form-group">
                    <label for="code">Code</label>
                    <input type="text" name="code" id="code" class="form-control" placeholder="Enter code" required>    
                    </div>
                    <div class="form-group">
                    <input type="submit" value="SignUp" class="btn btn-lg bg-primary">
                    </div>
                    </form>
                    
                </div>
                </div>
            </div>
            </div>
            </div>
   
</body>
</html>