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
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Reading the userName and password from the Registration.jsp page
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String emailid = request.getParameter("emailId");
		
		//To Obtain the absolute path from the relative path
		
		ServletContext sc = this.getServletContext();
		String propFilePath = sc.getRealPath("WEB-INF/users.properties");
		
		//Use Users class to register the user and store the user in users.properties file
		
		Users user = new Users(userName, password);
		
		//Check if the user already exists
		
		String answer = user.validateUser(user, propFilePath);
		if(answer == "yes"){
			user.registerUser(user,propFilePath);
		}
		
		response.sendRedirect("Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
