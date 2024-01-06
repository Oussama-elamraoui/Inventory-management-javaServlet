package Dao;

import java.util.List;

import entity.Client;

public interface ClientDao {
	void addClient(Client client);
	void updateClient();
	void deleteClient();
	List<Client> getClients() ;

}
