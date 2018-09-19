<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Libray</title>
</head>
<body  style="font-family: Century Gothic;" >
<div>

<form:form action="confrm" modelAttribute="issuebook">

<h4>Book Name</h4><form:label path="book_name" value="${bookName }">${bookName }</form:label>
<h4>Book Call No</h4><form:label path="bookCallNo" value="${bookCallNo }">${bookCallNo }</form:label></br>
Student Name <form:input path="student_name"/><br>
Student Contact <form:input path="student_contact" length="12"/></br>
Student ID 	<form:input path="student_id"/></br>
<input type="submit" value="Confirm">
</a>
<a href="librarian"> Go Home</a>
<a href="logout">Logout</a>
</form:form>
</div>
</body>
</html>