import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

public class SignupUserFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		
		if(arg0.getParameter("contact").length()!=10)
			arg0.setAttribute("msg"," Contact must be of 10 digits !! ");
		else if(arg0.getParameter("password").length()<8 )
			arg0.setAttribute("msg"," Password length must be atleast 8 !! ");
		else if(arg0.getParameter("password").equals(arg0.getParameter("confirm"))==false)
			arg0.setAttribute("msg"," Password doesn't match !! ");
			
		if (arg0.getAttribute("msg")!=null)
		arg0.getRequestDispatcher("signup.jsp").forward(arg0, arg1);
		else
		arg2.doFilter(arg0, arg1);
		
		
		 
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	 
}
