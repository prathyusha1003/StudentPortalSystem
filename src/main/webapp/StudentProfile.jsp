<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<style type="text/css">
body{
	background-color: whitesmoke;
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
h1{
	margin: 0px auto;
    color: white;
    text-align: center;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	background-color: #133c55;
	height: 50px;
	padding: 2px;
	border-radius: 8px;
}
.card {
	border: 1px solid #ddd;
	background-color: white;
	padding: 15px;
	margin: 10px auto;
	width: 900px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}
.card h3 {
	color: #666;
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
	margin: 0 620px;
}
#button01:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
#dark01{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art01{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 130px;
}
#dark02{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art02{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 148px;
}
#dark03{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art03{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 86px;
}
#dark04{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art04{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 104px;
}
#dark05{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art05{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 155px;
}
#dark06{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art06{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 151px;
}
#dark07{
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 15px 30px;
}
#art07{
	color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0 160px;
}
#but{
	display: flex;
	gap: 10px;
	margin: 0 660px;
}
#button02{
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 40px;
	width: 90px;
	cursor: pointer;
}
#button02:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
#button03{
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 40px;
	width: 130px;
	cursor: pointer;
}
#button03:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
	<div id="span" style= "display: flex">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	</div>
	<div class="card">
	 	<h1><b>Student Profile</b></h1>
		<div class="details">
		    <h3 id="dark01">Full Name<span id="art01">: ${student.name}</span></h3>
	    	<h3 id="dark02">Email Id<span id="art02">: ${student.email}</span></h3>
		    <h3 id="dark03">Mobile Number<span id="art03">: ${student.mobile}</span></h3>
		    <h3 id="dark04">Date Of Birth<span id="art04">: ${student.dob}</span></h3>
		    <h3 id="dark05">Gender<span id="art05">: ${student.gender}</span></h3>
        	<h3 id="dark06">Address<span id="art06">: ${student.address}</span></h3>
        	<h3 id="dark07">Course<span id="art07">: ${student.course}</span></h3>
    	</div>
    	<br><br>
    	<div id="but">
    		<a href="/student/attendence"><button id="button03"><b>Attendence</b></button></a>
			<a href="/student/profile"><button id="button02"><b>Edit</b></button></a>
		</div>
	</div>
	<br><br>
    <a href="/logout"><button id="button01"><b>Logout</b></button></a>
    <script type="text/javascript">
    	setTimeout(function(){
          	document.getElementById("span").style.display = "none"
        }, 1000);
    </script>
</body>
</html>