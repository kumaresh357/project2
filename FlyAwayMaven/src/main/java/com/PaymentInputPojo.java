package com;

public class PaymentInputPojo {
	private String name;
	private String card;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public PaymentInputPojo(String name, String card) {
		super();
		this.name = name;
		this.card = card;
	}
	public PaymentInputPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
