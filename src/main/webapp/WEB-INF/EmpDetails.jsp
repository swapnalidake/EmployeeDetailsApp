<%@page language="java" import="java.util.*" %>
<html>
<head>
<title>Data Page</title>                         
</head>
<body> 
<table border="1" width="303">
<tr>
<td width="119"><b>empNo</b></td>
<td width="168"><b>EmpName</b></td>
<td width="168"><b>Street</b></td>
<td width="168"><b>City</b></td>
<td width="168"><b>State</b></td>
<td width="168"><b>Code</b></td>
</tr>
<%Iterator itr;%>
<% List EmpAddress= (List)request.getAttribute("EmpAddress");
for (itr=EmpAddress.iterator(); itr.hasNext(); )
{
%>
<tr>
<td width="119"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
</tr>
<%}%>
</table>
</body>
</html>