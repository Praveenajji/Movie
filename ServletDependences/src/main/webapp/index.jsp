<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
background-color:pink;
}

.header{
display:flex;
justify-content:center;
align-items:center;



}
h1{
color:white;

}
h2 a{
color:black;
text-decoration:none;
background-color:red:
}
.content{
display:flex;
justify-content:space-evenly;
align-items:center;
}

</style>

<body>

<div class="header">
   <h1>Welcome to Movie DashBoard</h1>
  </div>
  <div class="content">
   <h2>
   		<a  href="AddMovie.jsp">ADD NEW MOVIE</a>
   </h2>
   
   <h2>
       <a href="DisplayallmoviesServlet">DISPLAY ALL MOVIES</a>
   </h2>
   </div>
  
</body>
</html>
