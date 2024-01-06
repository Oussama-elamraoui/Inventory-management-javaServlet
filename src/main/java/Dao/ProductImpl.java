package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import contextDB.Connexiondb;
import entity.product;

public class ProductImpl implements ProductDao {

	@Override
	public void addProduct(product p) {
		Connection conn = Connexiondb.getConnexion();
		String query="INSERT INTO product VALUES(NULL,?,?,?)";
	    PreparedStatement pr ;
	    try {
	    	pr =conn.prepareStatement(query);
	    	pr.setString(1, p.getName());
	    	pr.setInt(2, p.getPrice());
	    	pr.setInt(3, p.getQuantity());
	    	pr.executeUpdate();
	}catch(SQLException e){ 
		e.printStackTrace();
	}
	    System.out.println("added");
	}

	@Override
	public void updateProduct(product p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public product getProduct(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<product> getProducts() {
		Connection conn = Connexiondb.getConnexion();
		List<product> products = new ArrayList<product>();
		String query="SELECT * FROM product";
		PreparedStatement pr ;
		try {
			pr = conn.prepareStatement(query) ;
			ResultSet rs= pr.executeQuery() ;
			while(rs.next()) {
				product p = new product();
				p.setName(rs.getString("name"));
				p.setPrice(rs.getInt("price"));
				p.setQuantity(rs.getInt("quantity")); 
				products.add(p);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return products ; 
	}

}
