<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>

function Validation()
{
  var p=document.forms["myform"]["password"].value;
 
  if(p=="")
	{
	alert("Password must be filled");
	return false;
	}
}

</script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);

body {
  background-color:black;
  background-size:cover;
  padding: 0px;
  font-family: "Open Sans Condensed", sans-serif;
}


form {
  position: relative;
  width: 20%;
  background:#3d3d29;
  opacity:0.7;
  margin: 60px auto;
  padding: 20px 22px;
  border: 1px solid white;
 
}

form input {
  width: 	70%;
  border: 1px solid;
   border-bottom-color: rgba(255,255,255,.5);
  border-right-color: white;
  border-top-color:white;
  border-left-color: white;
 background-color: rgba(0,0,0,.2);
  background-repeat: no-repeat;
  padding: 8px 24px 8px 10px;
border-radius: 25px;
  font: bold .875em/1.25em "Open Sans Condensed", sans-serif;
  letter-spacing: .075em;
  color: #fff;
  text-shadow: 0 1px 0 rgba(0,0,0,.1);
  margin-bottom: 19px;
  -webkit-transition:width  0.9s ease-in-out;
transition : width 0.9s ease-in-out;}

form input:focus { background-color: rgba(0,0,0,.4); }

form input[type=submit] {
  width: 24%;
  margin-bottom: 0;
  color: white;
 font-size:14px;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  background: #225556;
  border-top-color: #9fb5b5;
  border-left-color: #608586;
  border-bottom-color: #1b4849;
  border-right-color: #1e4d4e;
corner-radius:60em;
  cursor: pointer;
}
form input[type=submit]:hover
{
  opacity:0.9;
  font-size:15px;
}

</style>
</head>

<body>
<%@ include file="header.html" %>
<center><h3 style="color:white"><% String msg=(String)request.getAttribute("msg"); if(msg!=null)out.print(msg); %></h3></center>
<form name="myform"  action="loginUser" onsubmit="return Validation()" method="POST">

   
  <b style="font-size:20px; color:white">Username &nbsp</b><br>
  <input type="text" name="email" id="" placeholder="email" class="email" required>
    <br><br>
  <b style="font-size:20px; color:white">Password</b>&nbsp&nbsp&nbsp<br>
  <input type="password" name="password" id="" placeholder="password" class="pass">
    <center>
    
<a href="#" style="color:white; text-decoration:none">forgot details? </a><br> <br>
  <br>
  
<a href="signup.jsp" style="color:white; text-decoration:none">signup </a><br> <br>
  
	  <input type="submit" value="login">
  </center>
    
</form>
</body>

