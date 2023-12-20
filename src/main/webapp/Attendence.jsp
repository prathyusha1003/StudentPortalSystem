<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendence</title>
</head>
<body>
	<form action="/faculty/attendence" method="post">
		<table border="2px">
			<tr>
				<th>Name</th>
				<th>Subject</th>
				<th>Present / Absent</th>
			</tr>
			<c:forEach var="student" items="${details}">
				<input type="hidden" name="id" value="${student.id }">
				<tr>
					<td>${student.name }</td>
					<td>${faculty.subject }</td>
					<td><input type="radio" name="attend" value="present">Present
						<input type="radio" name="attend" value="absent">Absent</td>
				</tr>
			</c:forEach>
		</table>

		<br>
		<br>
		<button>Submit</button>
	</form>
</body>
</html>