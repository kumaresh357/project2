package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.SearchInputPojo;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SearchInputPojo sip = new SearchInputPojo();
		sip.setDate(request.getParameter("date"));
		sip.setSource(request.getParameter("source"));
		sip.setDestination(request.getParameter("destination"));
		sip.setPassangers(Integer.parseInt(request.getParameter("persons")));
		response.sendRedirect("search-result.jsp");
	}

}
