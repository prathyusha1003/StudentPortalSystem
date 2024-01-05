<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Portal Members Login</title>
<style type="text/css">
body {
	background-color: #d7f5f5;
}
#but{
    display: flex;
    justify-content: center;
}
img{
    margin: 60px 40px;
    border-radius: 100%;
}
#buttoon{
    margin: 0 -100px;
}
#button01{
    border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #581845;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 200px;
    cursor: pointer;
    margin: 110px 120px;
}
#button01:hover{
	border: 1px solid #dc7fc1;
	background-color: #dc7fc1;
	transform: scale(1.05);	
	color: black;
}
#button02{
    border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #581845;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 320px;
    cursor: pointer;
    margin: 0px 60px;
}
#button02:hover{
	border: 1px solid #dc7fc1;
	background-color: #dc7fc1;
	transform: scale(1.05);	
	color: black;
}
#button03{
	border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #581845;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 200px;
    cursor: pointer;
    margin: 100px 120px;
}
#button03:hover{
	border: 1px solid #dc7fc1;
	background-color: #dc7fc1;
	transform: scale(1.05);	
	color: black;
}
</style>
</head>
<body>
	<div id="but">
		<div>
			<img alt="" src="https://img.freepik.com/premium-vector/login-account-vector-illustration-laptop-isolated-background-password-sign-concept_993513-273.jpg" height="500px" width="550px">
		</div>
		<div id="button">
			<a href="/admin/login"><button id="button01"><b><i>Admin</i></b></button></a><br>
			<a href="/faculty/login"><button id="button02"><b><i>Faculty Members</i></b></button></a><br>
			<a href="/student/login"><button id="button03"><b><i>Students</i></b></button></a>
		</div>
	</div>
</body>
</html>