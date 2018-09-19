<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Register</title>
</head>
<style>
.input{
	height:20px;
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
.select{
	width: 350px;
	height:45px;

	border-radius: 6px;
	margin:15px auto 0px 15px;
	color: #15BCD6;
	background:transparent;
	font-size:15px;
	padding:10px 15px;
	border:1px solid #15BCD6;
	
}

</style>
<body>
<div class="container">
 <form:form action="saveUser" modelAttribute="newUser">
 <form:select path="role"   cssClass="select">
  			<form:option value="Admin"></form:option>
  			<form:option value="Librarian"></form:option>
  		</form:select><br></br>
 <form:input path="username" cssClass="input" placeholder="Username"/><br></br>
<form:input path="password" type="password" cssClass="input" placeholder="password"/><br></br>
 
 <form:input path="email" type="email" cssClass="input" placeholder="email@example.com"/><br></br>
 <input class="btn" type ="submit" value ="Register">
 
 </form:form>
 </div>
</body>
</html>