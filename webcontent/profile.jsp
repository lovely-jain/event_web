<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
 h2{
  font-size:25px;
  font-style: italic;
  color:white;
  padding:7px 0 6px 20px;
  }
  div{
   background-color: #4CAF50;
   margin:5px 00 5px;
  }
  
form input[type=submit] {
  width: 100%;
  font-size:20px;
  margin-right:15px;	
  margin-bottom: 0;
  margin-top:5px;
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
  position:;	
}
form input[type=submit]:hover
{
  opacity:0.9;
  font-size:21px;
}	
table,td,th		{
 width:900px;
 border: 4px solid  white;
 text-align: center;
 border-collapse: collapse;
 background-color: #4CAF50;
}
th
{
padding:8px;
 font-size: 30px;
 color:#333;
}
td
{
 color:white;
 padding:6px;
 font-size: 30px;
}
.small
{
width:200px;	
margin:11px;	
float:right;
	}
</style>
</head>
<body>
   <%@ include file="header.html" %>
   <%
   	  ResultSet rs=(ResultSet)session.getAttribute("result");
      if(rs==null)
     {
    	 application.setAttribute("from","profile");
    	 request.getRequestDispatcher("login.jsp").forward(request,response);
     }
   %>
     <div ><div class="small" ><form action="logoutUser" >
	   <input type="submit" value="logout">
		</form><br><form action="updateProfile" >
	   <input type="submit" value="update profile">
		</form></div>
		
		  <h2>EMAIL: <% out.print(rs.getString(1)); %></h2>
		   <h2 >NAME: <% out.print(rs.getString(3)); %></h2>
		   <h2 >CONTACT:  <% out.print(rs.getString(2)); %></h2>
		   <h2 >CITY: <% out.print(rs.getString(4)); %></h2>
		   <h2 >INSTITUTE: <% out.print(rs.getString(5)); %></h2>
		   <h2>GENDER: <% out.print(rs.getString(6)); %></h2>
		   <h2>YEAR: <% out.print(rs.getInt(7)); %></h2>
      </div>
     
   
   <div style="background-color:white">
     	<table>
			<tr> <th> Event name </th><th>Team Name</th><th>Team size</th></tr>	
			<%  ResultSet reg=(ResultSet)session.getAttribute("reg");
			reg.beforeFirst();
    		while(reg.next())
    		{
    			out.print("<tr><td>"+reg.getString(2)+"</td><td>"+reg.getString(3)+"</td><td>"+reg.getInt(4)+"</td></tr>");
   			 }
			%>
		</table>
    </div>
   
	 
</body>
</html>