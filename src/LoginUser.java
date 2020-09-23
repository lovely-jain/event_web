import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String call="{call user_proc(?,?,?)}";
		try
	    {
		    CallableStatement st=database.getCallable(call);
		    st.setString(1,"login");
		    st.setString(2,request.getParameter("email"));
		    st.setString(3,request.getParameter("password"));
		    
		    ResultSet rs=st.executeQuery();
		   if(rs.next())
		    {    System.out.println(" successfull login ");
		       	 HttpSession ssn= request.getSession();
		    	 ssn.setAttribute("email",request.getParameter("email"));
		    	 ssn.setAttribute("result",rs);
		    	 
		    	 call="{call register_proc(?,?)}";
		    	 st=database.getCallable(call);
		 		 st.setString(1,"fetch");
		 		 st.setString(2,request.getParameter("email"));
		 		 
		 		 ResultSet reg=st.executeQuery();
		 		 ssn.setAttribute("reg",reg);
		    	 String from=(String) getServletContext().getAttribute("from");

	 
		 		 System.out.println(from);
		    	 if("profile".equals(from))
		    	 {
		    		// System.out.println(" issue");
		    	 request.getRequestDispatcher("profile.jsp").forward(request, response);
		    	 }
		    	 else if("register".equals(from))
		    	 request.getRequestDispatcher("register.jsp").forward(request, response);
		    	 else
		    	 request.getRequestDispatcher("home.jsp").forward(request, response);
			    	
		    }
		    else
		    {
		    	request.setAttribute("msg","Invalid login credentials !! ");
		    	request.getRequestDispatcher("loginform.jsp").forward(request, response);
		    	
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
