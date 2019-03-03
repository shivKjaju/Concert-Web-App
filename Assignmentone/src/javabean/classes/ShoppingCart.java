package javabean.classes;

public class ShoppingCart {
	private int concertId;
	private int ticketQuantity;
	private String bandName;
	private String venueName;
	private int totalPrice;
	public int status;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public ShoppingCart() {
		super();
	}
	
	public ShoppingCart(int concertId, int ticketQuantity, String bandName, String venueName, int totalPrice, int status) {
		super();
		this.concertId = concertId;
		this.ticketQuantity = ticketQuantity;
		this.bandName = bandName;
		this.venueName = venueName;
		this.totalPrice = totalPrice;
		this.status = status;
	}
	
	public int getConcertId() {
		return concertId;
	}
	public void setConcertId(int concertId) {
		this.concertId = concertId;
	}
	public int getTicketQuantity() {
		return ticketQuantity;
	}
	public void setTicketQuantity(int ticketQuantity) {
		this.ticketQuantity = ticketQuantity;
	}
	public String getBandName() {
		return bandName;
	}
	public void setBandName(String bandName) {
		this.bandName = bandName;
	}
	public String getVenueName() {
		return venueName;
	}
	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}
	
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public int getTotalPrice() {
		return totalPrice;
	}
	
}
