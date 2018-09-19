<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library</title>
</head>
<body style="font-family:century Gothic">
<table cellpadding="1">
<tr>
<th>Issue ID</th>
<th>Book Call No</th>
<th>Book Name</th>
<th>Student ID</th>
<th>Student Name</th>
<th>Student Contact</th>
<th>Issue Date</th>
<th>Return</th>
</tr>

<c:forEach items="${issued}"  var="iss" >
<tr>
<td>${iss.issue_id }</td>
<td>${iss.bookCallNo }</td>
<td>${iss.book_name }</td>
<td>${iss.student_id }</td>
<td>${iss.student_name }</td>
<td>${iss.student_contact }</td>
<td>${iss.issue_date }</td>
<c:url var="url" value="return">
<c:param name="issueId" value="${iss.issue_id }"/> 
<c:param name="bookcall" value="${iss.bookCallNo }"/> 
<c:param name="studentname" value="${iss.student_name}"/> 
<c:param name="studentId" value="${iss.student_id }"/> 
 </c:url>
 <td><a href="${url}" >Return Book</a></td>
</tr>
</c:forEach>
</table><br>
<a href="viewBooks"> Show All Books</a>
<a href="librarian"> Go Home</a>
<a href="logout">Logout</a>
</body>
</html>