<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>

function Validation()
{
  var n=document.forms["myform"]["user"].value;
  var p=document.forms["myform"]["password"].value;
  if(n=="")
  {
    alert("USERNAME must be filled");
	return false;
  }
	else if(p=="")
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
  background:url("log2.jpg");
  background-size:cover;
  padding: 0px;
  font-family: "Open Sans Condensed", sans-serif;
}


form {
  position: relative;
  width: 500px;
  background:#3d3d29;
  opacity:0.7;
  margin: 60px auto;
  padding: 20px 22px;
  border: 1px solid white;
 
}

form input {
  width: 252px;
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
  width: 108px;
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

form input[type=reset] {
  width: 108px;
  margin-bottom: 2px;
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
  width:108px;
  opacity:0.9;
  font-size:16px;
}

</style>
</head>

<body>
<%@ include file="header.html" %>
<center><h3 style="color:red"><% String msg=(String)request.getAttribute("msg"); if(msg!=null)out.print(msg); %></h3></center>

<form name="myform"  action="signupUser" onsubmit="return Validation()"method="POST">

   
  <b style="font-size:20px; color:white">Email &nbsp</b>
  <input type="email" name="email" id="" placeholder="email" class="email" required>
    <br>
  <b style="font-size:20px; color:white">Name &nbsp</b>
  <input type="text" name="stu_name" id="" placeholder="name"  required>
    <br>
    
        
  <b style="font-size:20px; color:white">Contact &nbsp</b>
  <input type="text" name="contact" id="" placeholder="contact"  required>
    <br>
    
        
  <b style="font-size:20px; color:white">City &nbsp</b>
  <input type="text" name="city" id="" placeholder="city"  required>
    <br>
    
        
  <b style="font-size:20px; color:white">Institute &nbsp</b>
  <input type="text" name="institute" id="" placeholder="institute"  required>
    <br>
    
        
  <b style="font-size:20px; color:white">Year &nbsp</b>
  <input type="number" name="year" id="" placeholder="year"  required>
    <br>
    
        
  <b style="font-size:20px; color:white">Gender &nbsp</b><br>
  <input type="radio" name="gender" id="" placeholder="gender" value="F" required>Female<input type="radio" name="gender" id="" placeholder="gender" value="M" required>Male
    <br>
  <b style="font-size:20px; color:white">Password</b>&nbsp&nbsp&nbsp
  <input type="password" name="password" id="" placeholder="password" class="pass">
  <br>
  <b style="font-size:20px; color:white">Confirm Password</b>&nbsp&nbsp&nbsp
  <input type="password" name="confirm" id="" placeholder="password" class="pass">
  
    <center>
<input type="reset" value="reset">
  <input type="submit" value="signup">
  </center>
    
</form>
</body>