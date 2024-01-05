<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student EditProfile Page</title>
<style type="text/css">
body {
	background-color: beige;
}
#span{
	display: flex;
	justify-content: center;
}
#span01{
    color: green;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-size: 30px;
}
#span02{
    color: red;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-size: 30px;
}
fieldset{
	border: none;
	background-color: white;
	border-radius: 10px;
	width: 500px;
	font-size: 18px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 10px auto;
    box-shadow: 0px 5px 15px darkgrey;
}
h1{
	text-align: center;
	margin: 10px;
	color: brown;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	font-size: 30px;
}
.non{
	border-bottom: 1px solid black;
	border-radius: 8px;
	height: 35px;
	width: 250px;
	margin: 0 5px;
}
#button{
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 20px;
}
#button01{
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 40px;
	width: 94px;
	cursor: pointer;
}
#button01:hover{
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
#passwordError{
    font-size: 10px;
}
#table-conatiner{
    margin: 8px 0px 0px 34px;
}
a{
	text-decoration: none;
}
#for01{
    font-size: 20px;
	color: green;
	border-bottom: 1.5px solid green;
}
#for02{
	margin: 0 105px;
}
</style>
</head>
<body>
	<div id="span" style= "display: flex">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	</div>
    <h1><b><i>Edit Profile</i></b></h1>
	<div>
	<input type="text" name="id" value="${student.id}" hidden="hidden">
	<fieldset>
		<form action="/student/profile" method="post">
		<br>
			<table id="table-conatiner">
				<tr>
					<th>Full Name :</th>
					<td><input type="text" class="non" name="name" value="${student.name}"></td>
				</tr>
				<tr>
					<th>Email :</th>
					<td><input type="email" class="non" name="email" value="${student.email}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>Mobile Number :</th>
					<td><input type="tel" pattern="[0-9]{10}" name="mobile" class="non" required value="${student.mobile}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>Date Of Birth :</th>
					<td><input type="date" name="dob" class="non" required value="${student.dob}">
				</td>
				</tr>
				<tr>
					<th>Gender :</th>
					<td><input type="radio" name="gender" value="Male" id="radio"><b>MALE</b>
						<input type="radio" name="gender" value="Female" id="radio"><b>FEMALE</b>
					</td>
				</tr>
				<tr>
					<th>Address :</th>
					<td><input type="text" class="non" name="address" value="${student.address}"></td>
				</tr>
				<tr>
					<th>Course :</th>
					<td><input type="text" class="non" name="course" value="${student.course}"></td>
				</tr>
			</table>
			<br><br>
			<div id="button">
				<a href="/student/back"><button type="button" id="button01"><b>Back</b></button></a>
				<button id="button01"><b>Update</b></button>
				<button type="reset" id="button01"><b>Cancel</b></button>
			</div>
			<br>
		</form>
	    </fieldset>
	</div>
</body>
</html>