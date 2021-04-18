package br.com.bank.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bank.model.Client;
import br.com.bank.service.ClientServiceImpl;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ClientServiceImpl service;

	     
	
    public DeleteServlet() {
    		this.service = new ClientServiceImpl();
    	}       
    	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("remove") != null) {
			
				int id = Integer.parseInt(request.getParameter("id"));
				Client client = this.service.getClientId(id);
				
				if(client != null) {
					this.service.deleteById(id);
					RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
					request.setAttribute("message", "O seguinte cliente foi deletado do BD: ");
					request.setAttribute("message2", client);
					rd.forward(request, response);
				}
				else {
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				request.setAttribute("message", "Erro! Id inexistente no BD!");
				rd.forward(request, response);
				}
		}
		else if (request.getParameter("return") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		}
		
	}

}
