package assignment;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public long timeInit;
    public int count = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		//Reading the userName and Password from the HTML form (Login.jsp)
		count++;
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String referer = request.getHeader("referer");
		
		
		
		/*To obtain the absolute path of the users.properties file
		 from its relative path.
		*/
		
		ServletContext sc = this.getServletContext();
		String propFilePath = sc.getRealPath("/WEB-INF/users.properties");
		
		//Validate the user using the validate method in Users class
		
		Users user = new Users(userName, password);
		
		String answer = user.validateUser(user, propFilePath);
		
		
		if(answer == "yes"){
			if(referer.contains("Login")){
				response.setHeader("Refresh", "5; URL=Registration.jsp");
				
		        response.setContentType("text/html");
				
				PrintWriter out = response.getWriter();
			    
			    String docType =
			    	      "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			    	      "Transitional//EN\">\n";
			    	    String title = "Splash Screen";
			    	    out.println
			    	      (docType +
			    	       "<HTML>\n" +
			    	       "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
			    	       "<BODY BGCOLOR=\"#FDF5E6\">\n" +
			    	       "<H1 ALIGN=\"CENTER\">" + title + "</H1>\n");
			    	    
			    	        out.println("<H2> Redirecting to CinemaBros Registeration page</H2>");
			    	   
			    	    out.println("</BODY></HTML>");
			    
			    
			    
			    out.close();
			
			}
		}
		else if(userName.equals("admin")){
			response.sendRedirect("owner/OwnerHomePage.jsp");
		}
		else {
			response.sendRedirect("customer/CustomerHomePage.jsp");
		}
	}
	
	public long getLastModified(HttpServletRequest request){
		return timeInit;
	}
	
	public void destroy(){
		try {
			FileWriter fWriter = new FileWriter("lastLoginState.txt");
    		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss"); 
    		Date date = new Date();
    		fWriter.write("\nTime " + dateFormat.format(date));
    		fWriter.write("\n Number of users: " + count);
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
