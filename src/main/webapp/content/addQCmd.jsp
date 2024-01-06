<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection"  %>
    <%@ page import="contextDB.Connexiondb"  %>
    <%@ page import="java.sql.PreparedStatement"  %>
    <%@ page import="java.sql.SQLException"%>
    <%@ page import="java.sql.ResultSet"%>
    <%@ page import="java.lang.Iterable"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import ="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
      
      <th scope="col">product</th>
      <th scope="col">Quantity</th>
      <th scope="col">client</th>
    </tr>
  </thead>
 
  <c:forEach var="user" items="${request.getAttribute("prCheck")}"  >
  
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td> <c:out value="${user[0]}" /></td>
      <td> <c:out value="" /></td>
      <td><c:out value="${user}" /></td>
      <td></td>
    </tr>
    </tbody>
    
    </c:forEach>
    </table>
</div>

</body>
</html>