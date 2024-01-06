<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><meta charset="ISO-8859-1">
</head>
<body>
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">
              <form action="MainServ" method="post">
              <h2 class="fw-bold mb-2 text-uppercase">Add Product</h2>
              <p class="text-white-50 mb-5">Enter A new product!</p>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typeEmailX">Name</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="name"/>
                
              </div>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX">price</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="price"/>
                
              </div>
              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX">Quantity</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="quantity"/>
                
              </div>
              

              <button class="btn btn-outline-light btn-lg px-5" type="submit">Add</button>
               </form>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>