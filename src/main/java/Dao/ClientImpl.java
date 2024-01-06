package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import contextDB.Connexiondb;
import entity.Client;
import entity.product;

public class ClientImpl implements ClientDao {

	@Override
	public void addClient(Client client) {
		// TODO Auto-generated method stub
		Connection conn = Connexiondb.getConnexion();
		String query="INSERT INTO client VALUES(NULL,?,?,?)";
	    PreparedStatement pr ;
	    try {
	    	pr =conn.prepareStatement(query);
	    	pr.setString(1, client.getName());
	    	pr.setString(2, client.getEmail());
	    	pr.setString(3, client.getPhone());
	    	pr.executeUpdate();
	}catch(SQLException e){ 
		e.printStackTrace();
	}
	System.out.println("added");
	}

	@Override
	public void updateClient() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteClient() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Client> getClients() {
		// TODO Auto-generated method stub
		Connection conn = Connexiondb.getConnexion();
		String query="SELECT * FROM client";
		List clients = new ArrayList<Client>();
	    PreparedStatement pr ;
	    try {
	    	pr = conn.prepareStatement(query);
	    	ResultSet rs= pr.executeQuery() ;
			while(rs.next()) {
				Client client= new Client();
				client.setName(rs.getString("name"));
				client.setEmail(rs.getString("email"));
				client.setPhone(rs.getString("phone")); 
				clients.add(client);
			}
	    }catch(SQLException e) {
	    	e.printStackTrace();
	    }
	    return clients ;
	}

}
