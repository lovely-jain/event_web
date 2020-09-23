import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/signupUser")
public class Register extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
  {
	  String call="{call register_proc(?,?,?,?,?)}";
		try
	    {
		    CallableStatement st=database.getCallable(call);
		    st.setString(1,"check");
		    st.setString(2,(String)request.getSession().getAttribute("email"));
		    st.setString(3,request.getParameter("event"));
		    st.setString(4, request.getParameter("team_name"));
			st.setString(5,request.getParameter("team_size") );
			
			ResultSet rs=st.executeQuery();
			request.setAttribute("msg","Team name already exists !! ");
	    	
			if(rs.next()==false)
			{ st.setString(1,"register");
			  int rsup=st.executeUpdate();
			  
			  if(rsup==1){
		      System.out.println(" successfull registered ");
		      request.getRequestDispatcher("profile.jsp").forward(request, response);
		      
		      st.setString(1,"fetch");
		 	 st.setString(2,(String)request.getSession().getAttribute("email"));
	 		 ResultSet reg=st.executeQuery();
	 		 request.getSession().setAttribute("reg",reg);
		 		 
		    }
		 }
		    else
		    {
		    	request.setAttribute("msg","Already registered !! ");
		    	request.getRequestDispatcher("register.jsp").forward(request, response);
		    	
		    }
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	

  }
  public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
  {
	 doGet(req, res); 
  }
}
