import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class database {
	static ResultSet user;
	static CallableStatement getCallable(String call)throws SQLException,ClassNotFoundException
	{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=eventdatabase;", "sa","admin1234");
	    CallableStatement st=con.prepareCall(call,ResultSet.TYPE_SCROLL_INSENSITIVE,
	            ResultSet.CONCUR_READ_ONLY );
	    return st;
	    
	}

}
