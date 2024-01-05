<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
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
	font-size: 18px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 0px ;
    box-shadow: 0px 5px 15px darkgrey;
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
    margin: 0 20px;
    border-radius: 100%;
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
	 <h1><b>Admin Login</b></h1>
     <div id="but">
     	<div>
     		<img id="image" alt="" src="https://www.wpeka.com/rgh/wp-content/uploads/2014/03/Changing-the-default-admin-user-in-WordPress1-460x575.jpg" height="350px" width="380px">
     	</div>
     	<div>
     	<fieldset>
     		<form action="" method="post">
     		<br>
        		<table id="table-conatiner">
             		<tr>
                 		<th>Email :</th>
                 		<td><input type="text" name="email" class="non"></td>
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
         		<br>
     		</form>
     	</fieldset>     	
        </div>
     </div>
     <script type="text/javascript">
         setTimeout(function(){
        	 document.getElementById("span").style.display = "none"
         }, 2000);
     </script>
</body>
</html>