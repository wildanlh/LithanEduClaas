<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>ABC Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
    rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
  	<%@ include file="header.jsp" %>
    
  <section class="h-100 mt-3">
  <div class="container h-100">
    <div class="row justify-content-sm-center h-100">
      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
        <div class="card m-3 shadow">
          <div class="card-body p-5">
            <h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
            <form name="form" action="<%= request.getContextPath() %>/register" method="post" id="form" onsubmit="return checkValidation()">

              <div class="form-floating mb-3">
                <input type="text" class="form-control" placeholder="first-name" name="first_name" id="fname" >
                <label for="first_name">First Name</label>
                <div class="invalid-feedback error errorFname">
                  <div>
                    First Name is required
                  </div>
                </div>
              </div>

              <div class="form-floating mb-3">
                <input type="text" class="form-control" placeholder="last-name" name="last_name" id="lname" >
                <label for="last_name">Last Name</label>
                <div class="invalid-feedback error errorLname">
                  <div>
                    Last Name is required
                  </div>
                </div>
              </div>
              
              <div class="form-floating mb-3">
                <input type="text" class="form-control" placeholder="city" name="city" id="city" >
                <label for="city">City</label>
                <div class="invalid-feedback error errorCity">
                  <div>City is required</div>
                </div>
              </div>

              <div class="form-floating mb-3">
                <input type="text" class="form-control" placeholder="country" name="country" id="country" >
                <label for="country">Country</label>
                <div class="invalid-feedback error errorCountry">
                  <div>
                    Country is required
                  </div>
                </div>
              </div>

              <div class="form-floating mb-3">
                <input type="email" class="form-control" placeholder="name@example.com" name="email" id="email" >
                <label for="floatingInput">Email address</label>
                <div class="invalid-feedback error errorEmail">
                  <!-- <div>Email is required</div> -->
                  <div>Email is required</div>
                </div>
              </div>

              <div class="form-floating mb-3">
                <input type="password" class="form-control" placeholder="Password" name="password" id="password" >
                <label for="floatingPassword">Password</label>
                <div class="invalid-feedback error errorPassword">
                  <div>
                    Password is required
                  </div>
                  <div>
                    Password must be at least 6 characters
                  </div>
                </div>
              </div>

              <p class="form-text text-muted mb-3">
                By registering you agree with our terms and condition.
              </p>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
            </form>
          </div>
          <div class="card-footer py-3 border-0">
            <div class="text-center">
              Already have an account? <a class="text-dark">Login</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    
    <%@ include file="footer.jsp" %>
    
    <script type="text/javascript" src="js/validator.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
