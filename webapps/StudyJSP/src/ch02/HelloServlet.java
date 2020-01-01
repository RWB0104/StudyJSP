package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HelloServlet()
	{
		super();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=UTF-8");
		
		try
		{
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("");
			out.println("<head>");
			out.println("	<title>처음 작성하는 Servlet</title>");
			out.println("</head>");
			out.println("");
			out.println("<body>");
			out.println("	처음 작성하는 Servlet");
			out.println("</body>");
			out.println("");
			out.println("</html>");
			out.close();
		}
		
		catch (Exception e)
		{
			getServletContext().log("Error in HelloServlet: ", e);
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
	
}
