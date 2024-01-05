<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendence</title>
<style>
body{
	background-color: whitesmoke;
}
h1{
	color: brown;
	text-align: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 40px;
    margin: -5px;
}
#tab{
    margin: 30px auto;
    border-collapse: separate;
    border-spacing: 4px;
    width: 50%;
}
td, th {
    padding: 12px;
    border: 1.8px solid black;
    text-align: center;
}
th {
    font-size: 22px;
    background-color: #d4d4d4;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
}
td{
    font-size: 20px;
	background-color: white;
	color: #333333;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
}
#button01:hover{
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
#button02 {
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 42px;
	width: 220px;
	cursor: pointer;
	margin: 0 560px;
}
#button02:hover{
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
	<form action="/faculty/attendence" method="post">
	<h1><b><i>Students List</i></b></h1>
		<table border="3" id="tab">
			<tr>
				<th>Name</th>
				<th>Subject</th>
				<th>Attendence</th>
			</tr>
			<c:forEach var="student" items="${details}">
				<tr>
					<td><b>${student.name}</b></td>
					<td><b>${faculty.subject}</b></td>
					<td>
						<input type="radio" name="attend[${student.id}]" value="present" required><b>Present</b>
						<input type="radio" name="attend[${student.id}]" value="absent" required><b>Absent</b>
					</td>
				</tr>
			</c:forEach>
		</table>
		<br><br>
		<div>
			<button id="button02"><b>Submit Attendence</b></button>		
		</div>		
	</form>
</body>
</html>