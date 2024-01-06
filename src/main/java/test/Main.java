package test;

import java.util.ArrayList;
import java.util.List;

import Dao.ProductDao;
import Dao.ProductImpl;
import entity.product;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        ProductDao dao = new ProductImpl();
        //product p = new product("renomicine",4,4);
        //dao.addProduct(p);
        List<product> products = new ArrayList() ;
        products=dao.getProducts();
        for (product p : products ) {
        	System.out.println(p.toString());
        }
	}

}
