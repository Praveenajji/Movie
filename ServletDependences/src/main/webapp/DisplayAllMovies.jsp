<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-color:yellow;

}

table{
border:none;
padding:20px;
display:flex;
justify-content:center;
align-items:center;

}
th{
padding:20px;
text-transform:capitalize;
background-color:purple;
color:white;
}
td{
padding:20px;
text-transform:capitalize;
background-color:white;
text-align:center;
}
h3{
display:flex;
justify-content:center;
align-items:center;

}
h3 a{
text-decoration:none;}
</style>
<body>

<% ResultSet rs =(ResultSet)request.getAttribute("resultSet"); %>
<table border="">
<tr>
<th>movieId</th>
<th>movieTitle</th>
<th>movieGenre</th>
<th>movieDirector</th>
<th>movieRating</th>
<th>update</th>
<th>delete</th>
</tr>

<%while(rs.next()){ %>
<tr>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><a href="UpdatemovieServlet?movieId=<%=rs.getInt(1)%>">Update</a></td>
<td><a href="DeleteMovieServlet?movieId=<%=rs.getInt(1) %>">Delete</a></td>

</tr>
<%} %>

</table>
<h3><a href="index.jsp">Back to Home page</a></h3>
</body>
</html>