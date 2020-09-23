<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
  img
  {
    width:300px; 
	height:350px;
	margin:20px;
	border-color:white;
	border-width:4px;
	border-style:solid;
	float:left;
  }
  img:hover
  {
    width:308px;
    height: 358px;
    border-width:0px;
  }
  
  .mydiv{
  
   background-color:#4CAF50;
   color:white;
   font-style:bold;	
   padding:7px 0 6px 20px;
   margin:0 0 20px  0;
   height:400px;
   }
   pre
   {
     padding:20px;
	 font-size:17px;
	 font-style:bold;
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
<br>
<form action="register.jsp">
   <input type="submit" value="register">
	</form>
     <br>
<div class="mydiv">
<img src="/images/e.png" >
<pre> 
Name: 
<br>Venue:
<br>Date & time:
<br>Team: 
<br>Coordinator:
<br>About:

</pre>
</div>

<div class="mydiv">
<img src="" >
<pre> 
Name: 
<br>Venue:
<br>Date & time:
<br>Team: 
<br>Coordinator:
<br>About:
</pre>
</div>
<div class="mydiv">
<img src="" >
<pre> 
Name: 
<br>Venue:
<br>Date & time:
<br>Team: 
<br>Coordinator:
<br>About:
</pre>
</div>
<div class="mydiv">
<img src="" >
<pre> 
Name: 
<br>Venue:
<br>Date & time:
<br>Team: 
<br>Coordinator:
<br>About:
</pre>
</div>
<div class="mydiv">
<img src="" >
<pre> 
Name: 
<br>Venue:
<br>Date & time:
<br>Team: 
<br>Coordinator:
<br>About:
</pre>
</div>

</body>
</html>