<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.input{
	height:30px;
	width: 300px;
	padding: 10px;
	border-radius: 6px;
	border: 1px solid #15BCD6  ;
	margin:15px auto 0px 15px;
	font-family: Century Gothic;
	font-size: 16px; 
}
.btn{
	height:50px;
	width: 300px;
	padding: 5px;
	border-radius: 6px;
	border: 1px solid #15BCD6  ;
	margin:15px auto 0px 20px;
	font-family: Century Gothic;
	font-size: 20px; 
	background:#15BCD6 ;
	color:white;
}
.container{
	height:470px;
	width: 350px;
	padding-top:5px;
	border-radius: 6px;
	border: 1px solid #15BCD6  ;
	margin:60px auto 0px auto;
	font-family: Century Gothic;
	font-size: 20px; 
	
}

</style>
<body>
<a href="librarian"> Go Home</a>
<div class="container">
<label style="font-size:30px;color:#15BCD6;font-family:Century Gothic;margin-top:5px;margin:15px auto 0px 15px;">Enter Book Details</label>
<form:form action="saveBook" modelAttribute="newBook">
<form:input path="name" cssClass="input" placeholder="Name"/><br>
 <form:input path="call_no" cssClass="input" placeholder="Call No"/><br>
<form:input path="author"  cssClass="input" placeholder="Author"/><br>
<form:input path="publisher" cssClass="input" placeholder="Publisher"/><br>
<form:input path="quantity" cssClass="input" /><br>
<input class="btn" type="submit"value="SAVE">

</form:form>
</div>
<a href="logout">Logout</a>


</body>
</html>