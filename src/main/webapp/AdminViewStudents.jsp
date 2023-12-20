<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Student Details</title>
<style type="text/css">
body{
	background-color: #fbfaf0;
}
h1{
	color: brown;
	text-align: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 40px;
}
#tab{
    margin: 40px auto;
    border-collapse: collapse;
    width: 80%;
}
td, th {
    padding: 12px;
    border: 1.8px solid black;
    text-align: center;
    font-size: 20px;
}
td{
	background-color: whitesmoke;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
th {
    background-color: #d4d4d4;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
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
	margin: 120px 620px;
}
#button01:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
    <h1><b>All Student Details</b></h1>
	<table border="2" id="tab">
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