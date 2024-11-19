<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<STYLE>
body{
background-color:gray;}
h1{
display:flex;
justify-content:center;
align-items:center;
color:white;
}

form{
display:flex;
justify-content:center;
align-items:center;
flex-direction:column;
padding:30px;


}
input{
padding:20px;
border:none;
border-radius:5px;
font-size:20px;
font-family:serial;
}
</STYLE>
<body>
<%ResultSet rs=(ResultSet)request.getAttribute("movie"); %>
<%rs.next(); %>
<form action="Save-updated-movie" method="post">
<input type="number" placeholder="Enter MovieId" value="<%=rs.getInt(1) %>" name="movieId"> <br>
       <input type="text"  value="<%=rs.getString(2) %>" name="movieTitle"><br>
       <input type="text" value="<%=rs.getString(3) %>" name="movieGenre"><br>
       <input type="text" value="<%=rs.getString(4) %>" name="movieDirector"> <br>
       <input type="number"  value="<%=rs.getInt(5) %>" name="movieRating"> <br>   
       
       <input type="submit" value="Update">
</form>
</body>
</html>