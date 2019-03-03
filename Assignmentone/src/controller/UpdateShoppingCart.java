package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.ConcertsDB;
import classes.OrdersDB;
import javabean.classes.Concert;
import javabean.classes.ShoppingCart;

/**
 * Servlet implementation class UpdateShoppingCart
 */
@WebServlet("/UpdateShoppingCart")
public class UpdateShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateShoppingCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sess = request.getSession();
		String bandName = request.getParameter("concertName");
		System.out.println("QUantity :::::" + bandName);
		ConcertsDB cdb = new ConcertsDB();
		Concert conc = cdb.getDetails(bandName);
		int concertId = conc.getId();
		int ticketQuantity = Integer.parseInt(request.getParameter("qty"));
		System.out.println("QUantity :::::" + ticketQuantity);
		int price = Integer.parseInt(request.getParameter("price"));
		System.out.println("QUantity :::::" + price);
		String venueName = request.getParameter("venueName");
		System.out.println("QUantity :::::" + venueName);
		int totalPrice = ticketQuantity * price;
		int totalSeats = Integer.parseInt(request.getParameter("availableSeats"));
		String delete = request.getParameter("status");
		System.out.println("QUantity 13412341234:::::" + delete);
		//Store concert Object in the session
		OrdersDB odb = new OrdersDB();
		ShoppingCart scBean = new ShoppingCart();
		scBean.setConcertId(concertId);
		scBean.setBandName(bandName);
		scBean.setTicketQuantity(ticketQuantity);
		scBean.setVenueName(venueName);
		scBean.setTotalPrice(totalPrice);
		//How do you delete the session
		if(delete != null){
			scBean.setStatus(0);
			//Handle ticket updates : TODO
			sess.invalidate();
			int updatedSeats = totalSeats+ticketQuantity;
			odb.updateSeats(updatedSeats, venueName);
			response.sendRedirect("ViewAndCheckoutShoppingCart.jsp");
		}
		else if(scBean != null && delete == null){
			scBean.setStatus(1);
			sess.setAttribute("scBean", scBean);
			//Handle ticket updates : TODO
			int updatedSeats = totalSeats-ticketQuantity;
			odb.updateSeats(updatedSeats, venueName);
			RequestDispatcher rd = request.getRequestDispatcher("ViewAndCheckoutShoppingCart.jsp");
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
