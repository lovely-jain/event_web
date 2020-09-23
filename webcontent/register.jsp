<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
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
select
{
  width:140px;
  height:40px;
  background-color: white;
  font-size: 18px;
}
</style>
</head>

<body>
<%@ include file="header.html" %>
<%
   	  ResultSet rs=(ResultSet)session.getAttribute("result");
     if(rs==null)
     {
    	 application.setAttribute("from","register");
    	 request.getRequestDispatcher("login.jsp").forward(request,response);
     }
   %>
   

<center><h3 style="color:red"><% String msg=(String)request.getAttribute("msg"); if(msg!=null)out.print(msg); %></h3></center>

<form name="myform"  action="register" >
  <b style="font-size:20px; color:white">Event &nbsp</b>
  <select name="event" required>
  	<option value="t-shirt painting">t-shirt painting</option>
  	<option value="face painting">face painting</option>
  	<option value="solo singing">solo singing</option>
  	<option value="group singing">group singing</option>
  	<option value="solo dance">solo dance</option>
  	<option value="duet dance">duet dance</option>
  	<option value="group dance">group dance</option>
  	<option value="theatrical">theatrical</option>
  	<option value="flashmob">flashmob</option>
  	<option value="fashion walk">fashion walk</option>
  	<option value="star of Utsav">star of Utsav</option>
  </select>
 <br>  <br>
      
  <b style="font-size:20px; color:white">Team Name &nbsp</b>
  <input type="text" name="team_name" id="" placeholder="team name"  required>
    <br>
            
  <b style="font-size:20px; color:white">Team size &nbsp</b>
  <input type="number" name="team_size" id="" min="1" max="5" placeholder="year"  required>
    <br>
    
    <center>
<input type="reset" value="reset">
  <input type="submit" value="done">
  </center>
    
</form>

</html>