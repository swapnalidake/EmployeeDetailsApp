<%@page import="com.ed.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%User user = (User)session.getAttribute("user");%>

<jsp:include page="index.jsp"></jsp:include>
<div id="main">

	<form action="UserServlet" method="post">
		<input type="hidden" name="action" value="updateuser"> 
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" value="<%=user.getId()%>" readonly="readonly"></td>
				</tr>

				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="<%=user.getName()%>" required="required"></td>
				</tr>

				<tr>
					<td>Email</td>
					<td><input type="email" name="email" value="<%=user.getEmail()%>" required="required"></td>
				</tr>

				<tr>
					<td>Contact</td>
					<td><input type="text" name="contact" value="<%=user.getContact()%>" required="required"></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><input type="password" name="passwd1" value="<%=user.getPassword()%>" required="required"></td>
				</tr>


				<tr>
					<td><input type="submit" value="Save"></td>
					<td><input type="reset" value="Reset"></td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>