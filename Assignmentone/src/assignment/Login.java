package assignment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Users;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Reading the userName and Password from the HTML form (Login.jsp)
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		/*To obtain the absolute path of the users.properties file
		 from its relative path.
		*/
		ServletContext sc = this.getServletContext();
		String propFilePath = sc.getRealPath("/WEB-INF/users.properties");
		
		//Validate the user using the validate method in Users class
		
		Users user = new Users(userName, password);
		
		String answer = user.validateUser(user, propFilePath);
		
		if(answer == "yes"){
			response.sendRedirect("Registration.jsp");
		}
		else{
			response.sendRedirect("CustomerHomePage.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
