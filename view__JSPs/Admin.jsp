<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link href="pr.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<style>
#container{
	width:80%;
	min-height:800px;
	margin:auto;
	padding:20px;
	box-shadow:0 6px 6px 0 rgba(0,0,0,0.5);
	background-color:rgba(0,0,0,0.1);
	background:transparent url("../images/11.jpg") no-repeat;
	overflow:hidden;
}
.head{
	width:95%;
	height:100px;
	margin:auto;
	padding:5px;
	color:black;
	font-size:60px;
	font-family:century Gothic,verdana,sans-serif;
	border-radius:6px;
	background-color:transparent;
	opacity:0.99;
	box-shadow:0 6px 6px 0 rgba(0,0,0,0.5);
}
.navbar{
	width:95%;
	height:25px;
	margin:auto;
	margin-top:3px;
	padding:10px;
	color: white;
	border-radius:5px;
	background-color: #EA1A7F ;
	font-family:verdana,sans-serif,Times;
	font-size:15px;
	line-height:5px;
	box-shadow:0 6px 6px 0 rgba(0,0,0,0.5);
	}
	a{
	text-decoration:none;
	color: white;
	padding:10px ;
	text-transform:ultra-expanded;
}
a:hover{
	color:hotpink;
	
}
#signout{
	width:80px;
	height:80px;
	border-radius:80px;
	-webkit-border-radius:80px;
				-moz-border-radius:80px;
	margin:8px auto;
	background-color:#03a9f4;
	
	font-size:20px;
	color:white;
	border:none;
	box-shadow:0 6px 6px 0 rgba(0,0,0,0.5);
	outline:none;
	float:right;
	font-family:cordia new;
}
</style>

<body id="container">
<div class="navbar "><ul>
<a href="Regform"> Add Librarian</a>
 <a href="showAll"> View All Librarian</a>
<a href="showAll"> Delete Librarian</a>



</ul></div>


<div id="signout">
<a href="logout">Logout</a>
</div>

</body>
</html>