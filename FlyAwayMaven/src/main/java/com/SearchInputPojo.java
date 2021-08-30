package com;

public class SearchInputPojo {
	private String source;
	private String destination;
	private int passangers;
	private String date;
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
	public int getPassangers() {
		return passangers;
	}
	public void setPassangers(int passangers) {
		this.passangers = passangers;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public SearchInputPojo(String source, String destination, int passangers, String date) {
		super();
		this.source = source;
		this.destination = destination;
		this.passangers = passangers;
		this.date = date;
	}
	public SearchInputPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
