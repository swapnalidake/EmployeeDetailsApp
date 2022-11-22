 


<%@page import="com.ed.model.EmpAddress"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Glitter IE App</title>
</head>
<body>

<jsp:include page="index.jsp"></jsp:include>
<div id="main">


<%List<EmpAddress> empList = (List<EmpAddress>)
		session.getAttribute("empList"); 
int count=1;
%>
	<table cellpadding="10">
		<tr>
			<th>EmpNo</th>
			<th>EmpName</th>
			<th>Street</th>
			<th>City</th>
			<th>State</th>
			<th>Code</th>
			<th colspan="2">Action</th>
		</tr>
		<%for(EmpAddress e : empList) {%>
		<tr>
			<td><%=count++ %></td>
			<td><%=e.getEmpNo() %></td>
			<td><%=e.getEmpName() %></td>
			<td><%=e.getStreet() %></td>
			<td><%=e.getCity() %></td>
			<td><%=e.getState() %></td>
			<td><%=e.getCode() %></td>
			
			<td><a href="EmpAddressServlet?action=edit&id=<%=e.getEmpNo() %>">Edit</a></td>
			<td><a href="EmpAddressServlet?action=delete&id=<%=e.getEmpNo() %>">Delete</a></td>
		</tr>		
		<% } %>
	</table>
	
</div>
</body>
</html>



