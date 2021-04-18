package br.com.bank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bank.model.Client;
import br.com.bank.service.ClientServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ClientServiceImpl service;

	public UserServlet() {
		this.service = new ClientServiceImpl();
	}       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("return") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else if (request.getParameter("register") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("add_client.jsp");
			rd.forward(request, response);
		}
		else if (request.getParameter("delete") != null) {
			
		}
		else if (request.getParameter("showAll") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			List<Client> clientList = this.service.getAll();
			request.setAttribute("clientList", clientList);
			rd.forward(request, response);
		}
	}

}
