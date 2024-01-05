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
#parent{
    display: flex;
    gap: 5px;
}
#child01{
	border: 1px black;
	background-image: linear-gradient(#0078b7,#91e0ef);
	height: 609px;
	width: 300px;
	color: #36454F;
	text-align: center;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	font-size: 20px;
	border-radius: 8px;
}
#icon01{
	border-radius: 50%;
	margin: 30px;
}
h3{
	margin: 10px;
}
#but01{
	border: 1px white;
	margin: 0 45px;
	font-size: 25px;
	color: whitesmoke;
	height: 50px;
	width: 200px;
	background-color: #0e1833;
	border-radius: 10px;
	cursor: pointer;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
	margin: 30px auto;
}
#but01:hover {
	border: 1px solid rgb(212, 212, 212);
	background-color: rgb(212, 212, 212);
	transform: scale(1.05);
	color: black;	
}
#child02{
	border: 1px black;
	background-image: linear-gradient(#d0efff,#e6f2ff);
	height: 609px;
	width: 1050px;
	border-radius: 8px;
}
#but{
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	gap: 20px;
	margin: 60px auto;
}
#image02{
    border: 1px solid white;
    background-color: #ffffff;
    border-radius: 8px;
    height: 320px;
    width: 300px;
    margin: 20px 30px;
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
    margin: 30px 70px;
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
	margin: 20px 30px;
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
	background-color: #0e1833;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: whitesmoke;
	height: 42px;
	width: 110px;
	cursor: pointer;
	position: relative;
	top: 140px;
}
#button01:hover {
	border: 1px solid rgb(212, 212, 212);
	background-color: rgb(212, 212, 212);
	transform: scale(1.05);
	color: black;
}
</style>
</head>
<body>
	<div id="span">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	</div>
	<div id="parent">
		<div id="child01">
			<img id="icon01" alt="" src="https://www.kindpng.com/picc/m/24-248325_profile-picture-circle-png-transparent-png.png" height="120px" width="150px">
			<h3><i>${faculty.name}</i></h3>
			<h3><i>${faculty.email}</i></h3>
			<h3><i>${faculty.mobile}</i></h3>
			<a href="/faculty/profile"><button id="but01"><i>View Profile</i></button></a>
			<a href="/logout"><button id="button01"><b>Logout</b></button></a>
		</div>
 		<div id="child02">
 			<div>
 		     	<h1><b><i>Faculty Dashboard</i></b></h1>
 			</div>
 			<div id="but">
				<div id="image02">
					<img id="icon02" alt="" src="https://t4.ftcdn.net/jpg/00/74/37/25/360_F_74372501_muy5mB4mbUoMzBLvgTIOrhYQA3KXfwvI.jpg" height="120px" width="170px"><br><br>
		 			<a href="/faculty/view-students"><button id="but02"><i>Students List</i></button></a>
				</div>
				<div id="image03">
					<img id="icon03" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOggtb4JNMlovCpzsDOl2L9INBEzsfGzm-7-De5KRix1_eSg0y0BkpAskaOxbU_f6G20Q&usqp=CAU" height="120px" width="160px"><br><br>
		 			<a href="/faculty/attendence"><button id="but03"><i>Attendence</i></button></a>
				</div>
 			</div>
 		</div>
    </div>
    <script type="text/javascript">
    	setTimeout(function(){
    		document.getElementById("span").style.display = "none"
    	}, 1000);
    </script>
</body>
</html>