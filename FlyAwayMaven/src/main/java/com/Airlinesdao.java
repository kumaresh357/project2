package com;

import java.util.List;

import com.Flights;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class Airlinesdao {
	public static List <Flights> allFlights(){
		Session session = null;
		List <Flights> flights = null;
		try {
			SessionFactory factory = HibernateUtil.buildSessionFactory();
			session = factory.openSession();
			flights = session.createQuery("FROM Flights").list();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return flights;
	}
}	
