<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<style>

</style>
<body>

<jsp:include page="index.jsp"></jsp:include>
<div id="main">

<%String errorMsg = (String)request.getAttribute("errorMsg"); %>
<%if(errorMsg !=null){ %>

	<h3 style="color:red;"><%=errorMsg %></h3>

<%} %>

<form action="UserServlet" method="post" >
	<input type="hidden" name="action" value="adduser">
	<table>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email" required/></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="passwd1" required/></td>
		</tr>
		<tr>
			<td>Confirm-Password</td>
			<td><input type="password" name="passwd2" required/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Register"/></td>
			<td><input type="reset"/></td>
		</tr>
	</table>
</form>
</div>
</body>
</html>