<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Portal Members SignUp</title>
<style type="text/css">
body {
	background-color: #d7dbf4;
}
#but{
    display: flex;
    justify-content: center;
    gap: 40px;
}
img{
	margin: 55px auto;
}
#button01{
    border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #581845;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 320px;
    cursor: pointer;
    margin: 16rem auto;
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
    width: 200px;
    cursor: pointer;
    margin: 16rem auto;
}
#button02:hover{
	border: 1px solid #dc7fc1;
	background-color: #dc7fc1;
	transform: scale(1.05);	
	color: black;
}
</style>
</head>
<body>
	<div id="but">
		<a href="/faculty/signup"><button id="button01"><b><i>Faculty Members</i></b></button></a>
		<div>
			<img alt="" src="https://www.paidmembershipspro.com/wp-content/uploads/2016/06/signup.png" height="450px" width="500px">
		</div>
		<a href="/student/signup"><button id="button02"><b><i>Students</i></b></button></a>
	</div>
</body>
</html>