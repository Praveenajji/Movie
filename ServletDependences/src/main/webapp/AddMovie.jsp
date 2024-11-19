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

</style>
<body>
    <h1>Enter Movie Details</h1>
    <form action="add-movie" method="post">
       <input type="number" placeholder="Enter MovieId"  name="movieId"> <br>
       <input type="text" placeholder="Enter MovieTitle" name="movieTitle"><br>
       <input type="text" placeholder="Enter MovieGenre" name="movieGenre"><br>
       <input type="text" placeholder="Enter MovieDirector" name="movieDirector"> <br>
       <input type="number" placeholder="Enter MoveRating"  name="movieRating"> <br>   
       
       <input type="submit" value="ADD">
    </form>
</body>
</html>