<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Student Details</title>
<style type="text/css">
body{
	background-color: whitesmoke;
}
h1{
	color: brown;
	text-align: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 40px;
}
#card00{
	display: flex;
}
#card{
	border: 1px solid #ddd;
	background-color: white;
	padding: 15px;
	margin: 5px auto;
	width: 630px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
#card h3{
	color: #666;
}
#dark01{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art01{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 150px;
}
#dark02{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art02{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 150px;
}
#dark03{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art03{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 67px;
}
#dark04{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art04{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 85px;
}
#dark05{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art05{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 136px;
}
#dark06{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art06{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 132px;
}
#dark07{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art07{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 141px;
}
#button01 {
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 42px;
	width: 110px;
	cursor: pointer;
	margin: 20px 620px;
}
#button01:hover{
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
    <h1><b><i>All Student Details</i></b></h1>
    <c:forEach var="student" items="${details}">   
    <div id="card00">
		<div id="card">
			<h3 id="dark01">Name<span id="art01">: ${student.name}</span></h3>
			<h3 id="dark02">Email<span id="art02">: ${student.email}</span></h3>
			<h3 id="dark03">Mobile Number<span id="art03">: ${student.mobile}</span></h3>
			<h3 id="dark04">Date Of Birth<span id="art04">: ${student.dob}</span></h3>
			<h3 id="dark05">Gender<span id="art05">: ${student.gender}</span></h3>
			<h3 id="dark06">Address<span id="art06">: ${student.address}</span></h3>
			<h3 id="dark07">Course<span id="art07">: ${student.course}</span></h3>
		</div>
	</div>
	</c:forEach>
	<br><br>
    <a href="/faculty/back"><button id="button01"><b>Back</b></button></a>
</body>
</html>