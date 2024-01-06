package test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Dao.ClientImpl;
import Dao.ProductDao;
import Dao.ProductImpl;
import contextDB.Connexiondb;
import entity.Client;
import entity.product;

/**
 * Servlet implementation class MainServ
 */
public class MainServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int i;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

	}
    protected void addproduct(String name,int price, int quantity) {
    	 ProductImpl dao = new ProductImpl();
         product p = new product() ;
         p.setName(name) ;
         p.setPrice(price) ;
         p.setQuantity(quantity) ;
         dao.addProduct(p);
    }
    protected void addClient(String name , String email , String phone) {
    	ClientImpl dao = new ClientImpl() ;
    	Client cl = new Client();
    	cl.setName(name);
    	cl.setEmail(email);
    	cl.setPhone(phone);
    	dao.addClient(cl);
    }
    protected void lignecommande(String nomProduit,String client) {
		Connection con = Connexiondb.getConnexion();
		String query="INSERT INTO lignecommande VALUES(?,?)";
		PreparedStatement pr ;
		try {
			pr =con.prepareStatement(query);
	    	pr.setString(1,nomProduit );
	    	pr.setString(2,client );
	    	pr.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map params = request.getParameterMap();
        // client
        //String nameClient = request.getParameter("nameClient") ;
		//String email= request.getParameter("email") ;
		//String phone= request.getParameter("phone") ;
		//addClient(nameClient , email , phone) ;
		 i=1;
		params.keySet().stream().forEach(key -> {
		   String[] productChecked = (String[]) params.get("chek");
		   String[] clientCmd = (String[]) params.get("clientcmd");
		  
		if(i==1) {
			request.setAttribute("prCheck", productChecked) ;
			request.setAttribute("client",clientCmd[0] ) ;
			
		   i++;
		   
		   }
		try {
			request.getRequestDispatcher("addQCmd.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		        });

		
        request.getRequestDispatcher("All.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
