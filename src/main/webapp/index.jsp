<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Student Register Portal</title>
<style>
body {
    margin: 0;
	padding: 0;
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
.navbar {
	background-color: #333;
	color: #228B22;
	overflow: hidden;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.navbar a {
	float: right;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 24px;
	text-decoration: none;
}
.welcome-container {
	padding: 40px;
	margin: 0 auto;
	background-image: url("https://images.unsplash.com/photo-1541339907198-e08756dedf3f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	opacity: 0.6;
	background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 520px;
}
.welcome-text {
	font-size: 45px;
	color: darkred;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	margin: 20px 50px;
}
p {
	font-size: 25px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 10px 50px;
}
#btn {
	color: whitesmoke;
	font-size: 20px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	cursor: pointer;
}
#btn::after{
    content: '';
    display: block;
    height: 3px;
    width: 100%;
    background-color: white;
    transform: scaleX(0);
    transition: transform 0.3s ease;
    transform-origin: left;
}
#btn:hover::after{
    color: rgb(227, 98, 152);
    transform: scaleX(1);
    transition: 0.4s ease-in-out;
}
#pic{
	display: flex;
}
img{
	margin: 0 60px;
	border-radius: 100%;
}
footer{
	background-color: #000000;
	height: 80px;
	color: white;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
h3{
    margin: 0px 30px;
    padding: 25px;
}
</style>
</head>
<body>
	<div id="span">
		<span id="span01">${pass}</span>
    	<span id="span02">${fail}</span>
	</div>
	<div class="navbar">
    	<div id="pic">
    	    <img alt="" src="https://i.pinimg.com/474x/15/3a/d9/153ad9ab7acca6191d316d73aaff57cc.jpg" height="65px" width="100px">
    	</div>
    	<div>
        	<a href="/portal-members-signup" style="float: right;"><b id="btn">Sign Up</b></a>
        	<a href="/portal-members-login" style="float: right;"><b id="btn">Sign In</b></a>
    	</div>
	</div>

	<div class="welcome-container">
    	<h1 class="welcome-text">Inspiration, Innovation and <br> Discovery.</h1>
    	<p>Explore a world of knowledge and opportunities.</p>
	</div>	
	<footer>
		<h3>© 2023 - University Grants Commission.All Rights Reserved.</h3>
	</footer>
	<script type="text/javascript">
    	setTimeout(function(){
    		document.getElementById("span").style.display = "none"
    	}, 1000);
    </script>
</body>
</html>