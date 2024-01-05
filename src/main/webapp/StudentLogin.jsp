<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login Page</title>
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
fieldset {
	border: none;
	background-color: white;
	border-radius: 10px;
	width: 500px;
	font-size: 18px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: -10px auto;
    box-shadow: 0px 5px 15px darkgrey;
    margin: 0 20px;
}
h1 {
	text-align: center;
	margin: 40px;
	color: darkred;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	font-size: 45px;
}
.non{
	border-bottom: 1px solid black;
	border-radius: 8px;
	height: 35px;
	width: 250px;	
}
#but{
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 40px;
}
#image{
    margin: 0 10px;
    border-radius: 100%;
}
a{
	text-decoration: none;
}
#for01{
    margin: 0 177px;
    font-size: 20px;
    border-bottom: 1.5px solid #551a8b;
}
#for02{
    font-size: 20px;
	color: green;
	border-bottom: 1.5px solid green;
}
#for03{
	margin: 0 145px;
}
#button01 {
	border: 1px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 40px;
	width: 94px;
	cursor: pointer;
	margin: 0 210px;
}
#button01:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
#table-conatiner{
    margin:10px 0px 0px 34px;
}
</style>
</head>
<body>
     <div id="span" style= "display: flex">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	 </div>
     <h1><b>Student Login</b></h1>
     <div id="but">
     	<div>
     	     <img id="image" alt="" src="https://t4.ftcdn.net/jpg/03/79/31/57/360_F_379315711_9dYf0jyywapP9DEJrgd2H39pISP2SVDS.jpg" height="400px" width="450px">
     	</div>
     	<div>
     	<fieldset>
     		<form action="/student/login" method="post">
     		<br>
         		<table id="table-conatiner">
             		<tr>
                 		<th>Email :</th>
                 		<td><input type="email" name="email" class="non"></td>
             		</tr>
             		<tr>
                 		<th>Password :</th>
                 		<td><input type="password" name="password" class="non"></td>
             		</tr>
         		</table>
         		<br><br>
         		<div>
             		<button id="button01"><b>Login</b></button>
         		</div>
         		<br><br>
         		<div>
             		<a href="/student/forgot-password" id="for01">Forgot Password ?</a><br><br>
             		<p id="for03">New User ? <a href="/student/signup" id="for02"><b>Register Now!</b></a></p>
         		</div>
         		<br>
     		</form>
     	</fieldset>    
     	</div> 	
     </div>
     <br>
     <script type="text/javascript">
         setTimeout(function(){
        	 document.getElementById("span").style.display = "none"
         }, 2000);
     </script>
</body>
</html>