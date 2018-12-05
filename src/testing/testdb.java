package testing;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testdb
 */
@WebServlet("/testdb")
public class testdb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user="root";
		String pass="foobar";
		String jdbcurl="jdbc:mysql://localhost:3306/lab6?useSSL=false";
		String driver="com.mysql.cj.jdbc.Driver";
		
		
		try {
			PrintWriter out=response.getWriter();
			
			out.println("Connecting to database: "+jdbcurl);
			
			Class.forName(driver);
			Connection myConn=DriverManager.getConnection(jdbcurl,user,pass);
			
			out.println("Successful");
			myConn.close();
		}
		catch(Exception exc) {
			exc.printStackTrace();
			throw new ServletException(exc);
		}
	
	}

}
