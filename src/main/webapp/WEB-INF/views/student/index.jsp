<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Students details</h1>

<c:forEach var="student" items="${students}">
<div>
Student id --> ${student.sid}<Br>
Student Name --> ${student.sname}<Br>
Student City --> ${student.scity}<Br>
Student Score --> ${student.sscore}<Br>
--------------------------------------<br>
</div>
</c:forEach>
</body>
</html>