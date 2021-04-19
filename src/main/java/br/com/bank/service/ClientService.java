package br.com.bank.service;


import java.util.List;

import br.com.bank.model.Client;

public interface ClientService {

	public Client getClient(String name);
	
	public Client getClientId(int idClient);
	
	public List<Client> getAll();
	
	public boolean checkClientPhone(String phone);
	
	public boolean checkClientEmail(String email);
	
	public void save(Client client);
	
	public void deleteById(int idClient); 
}
