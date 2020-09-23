<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);

body {
  background-color:black;
  background-size:cover;
  padding: 0px;
  font-family: "Open Sans Condensed", sans-serif;
}
 
form input[type=submit] {
  width: 12%;
  font-size:20px;	
  margin-bottom: 0;
  color: white;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  background: #225556;
  padding:10px;
  border-top-color: #9fb5b5;
  border-left-color: #608586;
  border-bottom-color: #1b4849;
  border-right-color: #1e4d4e;
  corner-radius:50em;
  cursor: pointer;
}
form input[type=submit]:hover
{
  opacity:0.9;
  font-size:21px;
}

</style>
</head>

<body>
<%@ include file="header.html" %>
 <%  ResultSet rs=(ResultSet)session.getAttribute("result");
     if(rs==null)
    	 response.sendRedirect("loginform.jsp");

     %>
     <h1 style="font-size:30px; color:white">
     Already logged in !<br>
     Logout !
      
     </h1><br>
     <form action="logoutUser">
   <input type="submit" value="logout">
	</form>
     
</body>

