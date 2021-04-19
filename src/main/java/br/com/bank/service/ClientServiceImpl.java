/**
 * 
 */
package br.com.bank.service;

import java.util.List;

import br.com.bank.dao.ClientDaoImpl;
import br.com.bank.model.Client;

/**
 * @author cbgomes
 *
 */
public class ClientServiceImpl implements ClientService {

	private ClientDaoImpl dao;
	
	public ClientServiceImpl() {
		this.dao = new ClientDaoImpl();
	}
	
	@Override
	public Client getClient(String name) {
		
		return this.dao.getClient(name);
	}

	@Override 
	public List<Client> getAll() {
		return this.dao.getAll();
	}

	@Override
	public void save(Client client) {
		this.dao.save(client);
	}

	@Override
	public void deleteById(int idClient) {
		this.dao.deleteById(idClient);
		
	}
	
	public boolean checkClientPhone(String phone) {
		return this.dao.checkClientPhone(phone);
	}
	
	public boolean checkClientEmail(String email) {
		return this.dao.checkClientEmail(email);
	}
	
	public Client getClientId(int idClient) {
		return this.dao.getClientId(idClient);
	}

	
}
