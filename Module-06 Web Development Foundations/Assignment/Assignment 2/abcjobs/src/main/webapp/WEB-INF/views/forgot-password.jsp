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
    <link href="resources/css/forgot-password.css" rel="stylesheet">
  </head>
  <body>
  	<%@ include file="header.jsp" %>
    
    <section class="h-100 mt-3">
	  <div class="container h-100">
	    <div class="row justify-content-sm-center h-100">
	      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
	        <div class="card shadow">
	          <div class="card-body">
	            <div class="card-body">
	              <h1 class="fs-4 card-title fw-bold text-center">Forgot your password?</h1>
	              <div class="card-body">
	                <img src="resources/img/forgot-password.jpg" alt="image">
	                <form name="form" action="<%= request.getContextPath() %>/login" id="form" onsubmit="return checkValidation()">
             
		              <div class="form-floating mb-3">
		                <input type="email" class="form-control" placeholder="name@example.com" name="email" id="email" >
		                <label for="floatingInput">Email address</label>
		                <div class="invalid-feedback error errorEmail">
		                  <div>Email is required</div>
		                </div>
		              </div>
		
		              <button class="w-100 btn btn-lg btn-primary" type="submit">Reset Password</button>
		            </form>
	                <div class="d-grid gap-2 col-6 mx-auto mt-3 text-center">
	                  <a href="<%= request.getContextPath() %>/login" class="text-dark">Back</a>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="card-footer py-3 border-0">
	            <div class="text-center">
	              Don't have an account? <a href="<%= request.getContextPath() %>/login" class="text-dark">Register</a>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
    
    <%@ include file="footer.jsp" %>
    
    <script type="text/javascript" src="resources/js/validator-forgotpass.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
