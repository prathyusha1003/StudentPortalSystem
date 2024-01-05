<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Student Details</title>
<style type="text/css">
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f2f2f2;
}
h1 {
	text-align: center;
	background-color: #333;
	color: #fff;
	padding: 20px;
	margin: 0;
	font-size: 30px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
}
#tab {
	width: 100%;
	border-collapse: collapse;
	margin: 20px auto;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
th, td {
 	padding: 10px;
	border: 1px solid #ddd;
	text-align: left;
}
td{
  	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  	font-size: 20px;
}		
th {
	background-color: #333;
	color: #fff;
	text-align: center;
	font-size: 18px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
}
a {
	display: block;
	width: 100px;
	margin: 20px auto;
	text-align: center;
	text-decoration: none;
}
#button01 {
	border: 2px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: #adbac0;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 42px;
	width: 110px;
	cursor: pointer;
	margin: 40px auto;
}
#button01:hover{
	border: 1px solid rgb(103, 155, 233);
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
    <h1><b>All Student Details</b></h1>
	<table id="tab">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile Number</th>
			<th>Date Of Birth</th>
			<th>Gender</th>
			<th>Address</th>
			<th>Course</th>
		</tr>
		<c:forEach var="student" items="${details}">
			<tr>
				<td>${student.name }</td>
				<td>${student.email}</td>
				<td>${student.mobile}</td>
				<td>${student.dob}</td>
				<td>${student.gender}</td>
				<td>${student.address}</td>
				<td>${student.course}</td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
    <a href="/admin/back"><button id="button01"><b>Back</b></button></a>
</body>
</html>