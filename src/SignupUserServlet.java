import java.io.IOException;
import java.sql.CallableStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/signupUser")
public class SignupUserServlet extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
  {
	  String call="{call user_proc(?,?,?,?,?,?,?,?,?)}";
		try
	    {
		    CallableStatement st=database.getCallable(call);
		    st.setString(1,"signup");
		    st.setString(2,request.getParameter("email"));
		    st.setString(3,request.getParameter("password"));
		    st.setString(4, request.getParameter("contact"));
		    st.setString(5,request.getParameter("stu_name") );
		    st.setString(6,request.getParameter("city") );
		    st.setString(7, request.getParameter("institute"));
		    st.setString(8,request.getParameter("gender") );
		    st.setString(9,request.getParameter("year") );
		    
		    int rs=st.executeUpdate();
		    
		    if(rs==1)
		    {
		    	System.out.println(" successfull signup ");
		    	request.getRequestDispatcher("home.jsp").forward(request, response);
		    	
		    }
		    else
		    {
		    	request.setAttribute("msg","Email already registered  !! ");
		    	request.getRequestDispatcher("login.jsp").forward(request, response);
		    	
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	

  }
  public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
  {
	 doGet(req, res); 
  }
}
