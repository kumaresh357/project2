package com;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Flights {
	@Id
	private String flightId;
	private String source;
	private String destination;
	private String airline;
	private int price;
	public String getFlightId() {
		return flightId;
	}
	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Flights(String flightId, String source, String destination, String airline, int price) {
		super();
		this.flightId = flightId;
		this.source = source;
		this.destination = destination;
		this.airline = airline;
		this.price = price;
	}
	public Flights() {
		super();
		// TODO Auto-generated constructor stub
	}
}
