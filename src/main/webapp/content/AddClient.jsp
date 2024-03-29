<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
              <h2 class="fw-bold mb-2 text-uppercase">Add Client</h2>
              <p class="text-white-50 mb-5">Enter A new Client!</p>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typeEmailX">Name</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="nameClient"/>
                
              </div>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX">Email</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="email"/>
                
              </div>
              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX">Phone</label>
                <input type="text" id="typeTextX" class="form-control form-control-lg" name="phone"/>
                
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