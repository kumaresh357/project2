package com;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class atabase {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Flights fd1 = new Flights("1", "India", "USA", "AirIndia", 2000);
		Flights fd2 = new Flights("2", "India", "USA", "Indigo", 2100);
		Flights fd3 = new Flights("3", "India", "UK", "AirIndia", 1500);
		Flights fd4 = new Flights("4", "India", "UK", "Indigo", 2600);
		Flights fd5 = new Flights("5", "UK", "India", "BritishAirways", 3200);
		Flights fd6 = new Flights("6", "UK", "India", "VirginAirline", 2400);
		Flights fd7 = new Flights("7", "UK", "USA", "BritishAirways", 1400);
		Flights fd8 = new Flights("8", "UK", "USA", "VirginAirline", 1700);
		Flights fd9 = new Flights("9", "USA", "UK", "Emirates", 2500);
		Flights fd10 = new Flights("10", "USA", "UK", "AmericanAirline", 2200);
		Flights fd11 = new Flights("11", "USA", "India", "Emirates", 3500);
		Flights fd12 = new Flights("12", "USA", "India", "AmericanAirline", 3000);
		
		SessionFactory factory = HibernateUtil.buildSessionFactory();
		Session session = factory.openSession();
		Transaction tx =session.beginTransaction();
		session.save(fd1);
		session.save(fd2);
		session.save(fd3);
		session.save(fd4);
		session.save(fd5);
		session.save(fd6);
		session.save(fd7);
		session.save(fd8);
		session.save(fd9);
		session.save(fd10);
		session.save(fd11);
		session.save(fd12);
		tx.commit();
		session.close();
	}

}
