<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>ABC Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
    rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
  </head>
  <body>
  	<%@ include file="header.jsp" %>
    
  <section class="h-100 mt-3">
  <div class="container h-100">
    <div class="row justify-content-sm-center h-100">
      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
        <div class="card m-3 shadow">
          <div class="card-body p-5">
            <h1 class="fs-4 card-title fw-bold mb-4">Login</h1>
            <form name="form" action="<%= request.getContextPath() %>/profile" id="form" onsubmit="return checkValidation()">
              <div class="form-floating mb-3">
                <input type="email" class="form-control" placeholder="name@example.com" name="email" id="email" >
                <label for="floatingInput">Email address</label>
                <div class="invalid-feedback error errorEmail">
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
                </div>
              </div>

              <div class="d-flex align-items-center mb-5">
                <div class="form-check">
                  <input type="checkbox" name="remember" id="remember" class="form-check-input">
                  <label for="remember" class="form-check-label">Remember Me</label>
                </div>
                <div class="col">
                  <a href="<%= request.getContextPath() %>/forgot-password" class="float-end">
                    Forgot Password?
                  </a>
                </div>
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
            </form>
          </div>
          <div class="card-footer py-3 border-0">
            <div class="text-center">
              Don't have an account? <a href="<%= request.getContextPath() %>/register" class="text-dark">Register</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    
    <script type="text/javascript" src="resources/js/validator-login.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
