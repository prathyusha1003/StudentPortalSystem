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
}
img{
    margin: 80px 40px;
    border-radius: 100%;
}
#buttoon{
    margin: 0 -100px;
}
#button01{
    border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #e8c36b;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 320px;
    cursor: pointer;
    margin: 160px 0px;
}
#button01:hover{
	border: 1px solid #2783ce;
	background-color: #2783ce;
	transform: scale(1.05);	
}
#button02{
    border: 2px white;
    color: whitesmoke;
    font-size: 25px;
    background-color: #e8c36b;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 60px;
    width: 200px;
    cursor: pointer;
    margin: -200px 60px;
}
#button02:hover{
	border: 1px solid #2783ce;
	background-color: #2783ce;
	transform: scale(1.05);	
}
</style>
</head>
<body>
	<div id="but">
		<div>
			<img alt="" src="https://cdni.iconscout.com/illustration/premium/thumb/concept-of-personal-data-and-business-online-data-security-1916378-1625553.png" height="450px" width="500px">
		</div>
		<div id="button">
			<a href="/faculty/signup"><button id="button01"><b><i>Faculty Members</i></b></button></a><br>
			<a href="/student/signup"><button id="button02"><b><i>Students</i></b></button></a>
		</div>
	</div>
</body>
</html>