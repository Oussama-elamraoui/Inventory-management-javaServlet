<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*"%>
    <%@ page import ="entity.product"%>
    <%@ page import ="entity.Client"%>
    <%@ page import ="java.util.ArrayList"%>
    <%@ page import ="java.util.List"%>
    <%@ page import ="Dao.ProductDao"%>
    <%@ page import ="Dao.ProductImpl"%>
    <%@ page import ="Dao.ClientDao"%>
    <%@ page import ="Dao.ClientImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<form action="MainServ" method="post">
<% 
ClientDao daoC = new ClientImpl() ;
List<Client> clients = new ArrayList() ;
clients = daoC.getClients() ;

ProductDao dao = new ProductImpl();
List<product> products = new ArrayList();
products=dao.getProducts();%>
<label>Choose a Client :</label>

<select name="clientcmd">
<% for(Client c : clients){ %>
<option value="<%out.print(c.getName()) ;%>" ><%out.print(c.getName()) ; %></option>
<%} %>
</select><button class="btn btn-outline-light btn-lg px-5" type="submit">Commander</button>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Quantity</th>
      <th scope="col">Cmd</th>
    </tr>
  </thead>
  <%-- <c:forEach  items="${request.getAttribute('products')}" var="products">${products['name']}</c:forEach>--%>
  <%for(product p:products){ %>
  <tbody>
    <tr>
      <td><% out.print(p.getName()); %></td>
      <td><% out.print(p.getQuantity()) ; %></td>
      <td><input type="checkbox" value="<% out.print(p.getName()); %>" name="chek" ></td>
    </tr>
    </tbody>
    <%} %>
    </table>
    </form>
</div>
</body>
</html>