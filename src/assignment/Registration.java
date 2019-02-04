package assignment;

import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
    public long timeInit;
    public int count = 0;
    public String userName;
    public String emailid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(){
    	timeInit = System.currentTimeMillis();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Reading the userName and password from the Registration.jsp page
		count++;
		 userName = request.getParameter("userName");
		String password = request.getParameter("password");
		 emailid = request.getParameter("emailId");
		
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
	
	
	public void destroy(){
		try {
			FileWriter fWriter = new FileWriter("lastRegistrationState.txt");
    		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss"); 
    		Date date = new Date();
    		fWriter.write("\nTime " + dateFormat.format(date));
    		fWriter.write("\n Number of registers: " + count);
    		fWriter.write("\n User Name: " + userName);
    		fWriter.write("\n Email Id: " + emailid);
    		fWriter.close();
    	}
    	catch(IOException e){
    		e.printStackTrace();
    	}
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
