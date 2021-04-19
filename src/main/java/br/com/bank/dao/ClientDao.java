package br.com.bank.dao;

import java.util.List;

import br.com.bank.model.Client;

public interface ClientDao {
	
	public Client getClient(String name);
	
	public Client getClientId(int idClient);
	
	public boolean checkClientPhone(String phone);
	
	public boolean checkClientEmail(String email);
	
	public List<Client> getAll();
	
	public void save(Client client);
	
	public void deleteById(int idClient); 
}
