<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*"%>
    <%@ page import ="entity.product"%>
    <%@ page import ="java.util.ArrayList"%>
    <%@ page import ="java.util.List"%>
    <%@ page import ="Dao.ProductDao"%>
    <%@ page import ="Dao.ProductImpl"%>
    
<% 
ProductDao dao = new ProductImpl();
List<product> products = new ArrayList();
products=dao.getProducts();%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="content/Add.jsp">Add product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="content/CmdClient.jsp">Create Cmd</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="content/AddClient.jsp">Add Client</a>
      </li>
    </ul>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </div>
</nav>     
<div class="d-flex col-md-8 m-5 justify-content-center translate-middle">
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <%-- <c:forEach  items="${request.getAttribute('products')}" var="products">${products['name']}</c:forEach>--%>
  <%for(product p:products){ %>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><% out.print(p.getName()); %></td>
      <td><% out.print(p.getPrice()); %></td>
      <td><% out.print(p.getQuantity()) ; %></td>
    </tr>
    </tbody>
    <%} %>
    </table>
</div>
</body>
</html>