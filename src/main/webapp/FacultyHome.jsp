<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Home Page</title>
<style type="text/css">
body{
	background-color: white;
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
a{
	text-decoration: none;
}
h1{
	color: brown;
	text-align: center;
    font-family: 'Times New Roman', Times, serif;
    font-size: 50px;
    margin: 20px;
}
#but{
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	gap: 50px;
	margin: 60px auto;
}
#image01{
    border: 1px solid white;
    background-color: #ffffff;
    border-radius: 8px;
    height: 320px;
    width: 300px;
}
#image01:hover{
    box-shadow: 0px 5px 15px darkgrey;
	transform: scale(1.05);	
}
#icon01{
    margin: 35px 70px;
}
#but01{
	border: 1px solid white;
	margin: 0 45px;
	font-size: 25px;
	color: whitesmoke;
	height: 60px;
	width: 150px;
	background-color: #0e1833;
	border-radius: 10px;
	cursor: pointer;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 10px 70px;
}
#but01:hover {
	border: 1px solid royalblue;
	background-color: royalblue;
	transform: scale(1.05);	
}
#image02{
    border: 1px solid white;
    background-color: #ffffff;
    border-radius: 8px;
    height: 320px;
    width: 300px;
}
#image02:hover{
    box-shadow: 0px 5px 15px darkgrey;
	transform: scale(1.05);	
}
#icon02{
    margin: 30px 60px;
}
#but02{
	border: 1px solid white;
	font-size: 25px;
	color: whitesmoke;
	height: 60px;
	width: 240px;
	background-color: #0e1833;
	border-radius: 10px;
	cursor: pointer;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 20px 30px;
}
#but02:hover {
	border: 1px solid royalblue;
	background-color: royalblue;
	transform: scale(1.05);	
}
#image03{
    border: 1px solid white;
    background-color: #ffffff;
    border-radius: 8px;
    height: 320px;
    width: 300px;
}
#image03:hover{
    box-shadow: 0px 5px 15px darkgrey;
	transform: scale(1.05);	
}
#icon03{
    margin: 35px 70px;
}
#but03{
	border: 1px solid white;
	font-size: 25px;
	color: whitesmoke;
	height: 60px;
	width: 240px;
	background-color: #0e1833;
	border-radius: 10px;
	cursor: pointer;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 10px 30px;
}
#but03:hover {
	border: 1px solid royalblue;
	background-color: royalblue;
	transform: scale(1.05);	
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
	margin: 0px 620px;
}
#button01:hover {
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
	<div id="span">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	</div>
	<h1><b>Faculty Dashboard</b></h1>
 	<div id="but">
		<div id="image01">
			<img id="icon01" alt="" src="https://i.pinimg.com/564x/57/00/c0/5700c04197ee9a4372a35ef16eb78f4e.jpg" height="120px" width="150px"><br><br>
		 	<a href="/faculty/profile"><button id="but01"><i>Profile</i></button></a>
		</div>
		<div id="image02">
			<img id="icon02" alt="" src="https://t4.ftcdn.net/jpg/00/74/37/25/360_F_74372501_muy5mB4mbUoMzBLvgTIOrhYQA3KXfwvI.jpg" height="120px" width="170px"><br><br>
		 	<a href="/faculty/view-students"><button id="but02"><i>Students List</i></button></a>
		</div>
		<div id="image03">
			<img id="icon03" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOggtb4JNMlovCpzsDOl2L9INBEzsfGzm-7-De5KRix1_eSg0y0BkpAskaOxbU_f6G20Q&usqp=CAU" height="120px" width="160px"><br><br>
		 	<a href="/faculty/attendence"><button id="but03"><i>Attendence</i></button></a>
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