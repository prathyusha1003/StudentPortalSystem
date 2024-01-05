<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student View Attendence</title>
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
    width: 70%;
}
#head{
	padding: 12px;
    border: 1.8px solid black;
    text-align: center;
    font-size: 22px;
    background-color: #bbbbbb;
    color: black;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande','Lucida Sans', Arial, sans-serif;
}
th {
    padding: 12px;
    border: 1.8px solid black;
    text-align: center;
    font-size: 20px;
    background-color: white;
	color: #333333;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
#button01 {
	border: 2px black;
	border-radius: 8px;
	font-size: 18px;
	background-color: rgb(212, 212, 212);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande','Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: black;
	height: 42px;
	width: 110px;
	cursor: pointer;
	margin: 40px 620px;
}
#button01:hover{
	border: 1px solid rgb(103, 155, 233);
	background-color: rgb(103, 155, 233);
	transform: scale(1.05);	
}
</style>
</head>
<body>
	<h1><b><i>Attendence List</i></b></h1>
	<table border="2" id="tab">
		<tr>
			<th id="head">Subjects</th>
			<th id="head">No. Of Classes Taken</th>
			<th id="head">No. Of Classes Present</th>
			<th id="head">No. Of Classes Absent</th>
		</tr>
		<c:forEach var="sub" items="${student.course.split(',')}">
        <tr>
        	<th>${sub}</th>
        	<c:if test="${student.attendence == null}">
            	<th>0</th>
            	<th>0</th>
            	<th>0</th>
        	</c:if>
        	<c:if test="${student.attendence != null}">
            <c:if test="${student.attendence.isEmpty()}">
                <th>0</th>
                <th>0</th>
                <th>0</th>
            </c:if>
            <c:if test="${!student.attendence.isEmpty()}">
                <c:set var="a" value="0"></c:set>
                <c:set var="t" value="0"></c:set>
                <c:set var="p" value="0"></c:set>
                <c:forEach var="attende" items="${student.attendence}">
                    <c:if test="${attende != null }">
                        <c:forEach var="a1" items="${attende.presentSubjects}">
                            <c:if test="${a1.equals(sub)}">
                                <c:set var="p" value="${p + 1}"></c:set>
                                <c:set var="t" value="${t + 1}"></c:set>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="a1" items="${attende.absentSubjects}">
                            <c:if test="${a1.equals(sub)}">
                                <c:set var="a" value="${a + 1}"></c:set>
                                <c:set var="t" value="${t + 1}"></c:set>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </c:forEach>
                <th>${t}</th>
                <th>${p}</th>
                <th>${a}</th>
            </c:if>
        	</c:if>
    	</tr>
		</c:forEach>
	</table>
	<a href="/student/back"><button id="button01"><b>Back</b></button></a>
</body>
</html>