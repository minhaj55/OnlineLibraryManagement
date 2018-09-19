<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Return Book</title>
</head>
<body>
<a href="logout">Logout</a>
<label>${issueId }</label><br>
<label>${bookCall }</label><br>
<label>${studentname }</label><br>
<label>${studentId }</label><br>
<c:url var="url" value="returnConfirm">
<c:param name="issueId" value="${issueId }"/> 
<c:param name="bookcall" value="${bookCall  }"/>
 </c:url>
<a href="${url}" >Return Confirm</a>
</body>
</html>