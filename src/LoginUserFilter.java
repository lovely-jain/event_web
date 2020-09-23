import java.io.IOException;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class LoginUserFilter implements Filter{

	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		System.out.println(" login filter checking for password length...");
		String pwd= arg0.getParameter("password");
		if (pwd.length()<8)
		{
			//System.out.println(pwd);
			arg0.setAttribute("msg","Password length must be atleast 8 !!");
			arg0.getRequestDispatcher("loginform.jsp").forward(arg0, arg1);
		}
		else{
		System.out.println(" valid length of password !!");
		arg2.doFilter(arg0, arg1);
	}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	

}
