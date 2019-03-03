package javabean.classes;

public class TicketVenuePrices {
	public int idTicketVenuePrices;
	public int TicketPrice;
	public int venueId;
	public int ticketTypeID;
	public int performanceID;
	
	public TicketVenuePrices() {
		super();
	}
	
	public TicketVenuePrices(int idTicketVenuePrices, int ticketPrice, int venueId, int ticketTypeID,
			int performanceID) {
		super();
		this.idTicketVenuePrices = idTicketVenuePrices;
		TicketPrice = ticketPrice;
		this.venueId = venueId;
		this.ticketTypeID = ticketTypeID;
		this.performanceID = performanceID;
	}
	
	public int getIdTicketVenuePrices() {
		return idTicketVenuePrices;
	}
	public void setIdTicketVenuePrices(int idTicketVenuePrices) {
		this.idTicketVenuePrices = idTicketVenuePrices;
	}
	public int getTicketPrice() {
		return TicketPrice;
	}
	public void setTicketPrice(int ticketPrice) {
		TicketPrice = ticketPrice;
	}
	public int getVenueId() {
		return venueId;
	}
	public void setVenueId(int venueId) {
		this.venueId = venueId;
	}
	public int getTicketTypeID() {
		return ticketTypeID;
	}
	public void setTicketTypeID(int ticketTypeID) {
		this.ticketTypeID = ticketTypeID;
	}
	public int getPerformanceID() {
		return performanceID;
	}
	public void setPerformanceID(int performanceID) {
		this.performanceID = performanceID;
	}

	
}
