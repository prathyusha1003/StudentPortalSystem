<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student SignUp Page</title>
<style type="text/css">
body {
	background-color: #f6f6f6;	
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
	margin: 0px auto;
    box-shadow: 0px 5px 15px darkgrey;
}
h1{
	text-align: center;
	margin: 10px;
	color: darkred;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	font-size: 25px;
}
.non{
	border: none;
	background: none;
	outline: none;
	border-bottom: 1px solid black;
	height: 35px;
	width: 250px;
	margin-bottom: 1rem;
}
#but{
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10px;
}
#image{
    margin: 0 10px;
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
    <h1><b>Student SignUp</b></h1>
		<div>
			<fieldset>
				<form action="/student/signup" method="post" onsubmit="return validatePassword()">
				<br>
				<table id="table-conatiner">
				<tr>
					<th>Full Name :</th>
					<td><input type="text" class="non" name="name"></td>
				</tr>
				<tr>
					<th>Email :</th>
					<td><input type="email" class="non" name="email"></td>
				</tr>
				<tr>
					<th>Mobile Number :</th>
					<td><input type="tel" pattern="[0-9]{10}" name="mobile" class="non" required></td>
				</tr>
				<tr>
					<th>Date Of Birth :</th>
					<td><input type="date" name="dob" class="non" required>
				</td>
				</tr>
				<tr>
					<th>Password :</th>
					<td><input type="password" class="non" name="password" id="password">
						<div id="passwordError" style="color: red;"></div>
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
					<td><input type="text" class="non" name="address"></td>
				</tr>
				<tr>
					<th>Courses :</th>
					<td>
						<input type="checkbox" class="no" name="course" value="Web Technologies">Web Technologies
						<input type="checkbox" class="no" name="course" value="Core Java">Core Java
						<br>
						<input type="checkbox" class="no" name="course" value="JDBC & Hibernate">JDBC & Hibernate
						<input type="checkbox" class="no" name="course" value="SpringBoot">SpringBoot
						<br>
						<input type="checkbox" class="no" name="course" value="SQL">SQL
						<input type="checkbox" class="no" name="course" value="React JS">React JS
						<input type="checkbox" class="no" name="course" value="DevOps">DevOps
					</td>
				</tr>
				</table>
				<br><br>
				<div id="button">
					<button id="button01"><b>Sign Up</b></button>
					<button type="reset" id="button01"><b>Cancel</b></button>
				</div>
				<br>
				<div>
                	<p id="for02">Already Have An Account  ? <a href="/student/login" id="for01"><b>Login!</b></a></p>
         		</div>
         		<br>
				</form>
	    	</fieldset>
	    </div>
	<script>
		function validatePassword() 
		{
			var password = document.getElementById("password").value;
			var passwordError = document.getElementById("passwordError");

			var minLength = 8;
			var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
			isValid = passwordRegex.test(password);
			
			if (password.length < minLength || !isValid) 
			{
				passwordError.innerHTML = "Password must be at least 8 characters long and include uppercase letters, lowercase letters, and numbers.";
				return false;
			}
			else 
			{
				passwordError.innerHTML = "";
				return true;
			}
		}		
		setTimeout(function(){
        	document.getElementById("span").style.display = "none"
        }, 2000);
	</script>
</body>
</html>