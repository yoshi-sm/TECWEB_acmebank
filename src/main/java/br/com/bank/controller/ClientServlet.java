package br.com.bank.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bank.model.Client;
import br.com.bank.service.ClientServiceImpl;

@WebServlet("/clientServlet")
public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ClientServiceImpl service;

	public ClientServlet() {
		this.service = new ClientServiceImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Response to client").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("add") != null) {
			
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				
				Client client = new Client();
				client.setName(name);
				client.setEmail(email);
				client.setPhone(phone);
				
				if(this.service.checkClientPhone(phone)) {
					request.setAttribute("message", "Erro! Telefone já está cadastrado.");
				}
				else if(this.service.checkClientEmail(email)){
					request.setAttribute("message", "Erro! Email já está cadastrado.");
				}
				else {
				this.service.save(client);
				request.setAttribute("message", "Cadastro realizado com sucesso!");
				}
				
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				rd.forward(request, response);
				
		}
		else if (request.getParameter("return") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		}
	}

}
