package demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckServlet
 */
@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("n");
		String pass=request.getParameter("p");
		PrintWriter pw=response.getWriter();
		if(name.equals(pass))
		{
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
			pw.println("Valid user");
			
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
			pw.println("Invalid user");
		}
		
	}

}
