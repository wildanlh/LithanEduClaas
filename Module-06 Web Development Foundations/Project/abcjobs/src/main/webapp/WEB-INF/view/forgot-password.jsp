<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/home.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column min-vh-100">
	<%@ include file="../components/navbar.jsp"%>
	<section class="h-100 mt-3 mb-5">
	  <div class="container h-100">
	    <div class="row justify-content-sm-center h-100">
	      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
	        <div class="card shadow">
	          <div class="card-body">
	            <div class="card-body">
	              <h1 class="fs-4 card-title fw-bold text-center">Forgot your password?</h1>
	              <div class="card-body">
	                <div class="text-center">
	                <img src="images/vector/forgot-password.jpg" alt="image" style="width: 200px;">
	                 </div>
	                <form method="post" id="sendMail" action="sendEmail" onsubmit="return checkValidation()">
             
		              <div class="form-floating mb-3">
		                <input type="email" class="form-control" placeholder="name@example.com" name="email" id="email" >
		                <label for="floatingInput">Email address</label>
		                <div class="invalid-feedback error errorEmail">
		                  <div>Email is Required</div>
		                </div>
		                <div class="mb-3">
							<span class="err-msg">${error}</span>
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
	              Don't have an account? <a href="<%= request.getContextPath() %>/register" class="text-dark">Register</a>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	<%@ include file="../components/footer.jsp"%>
	<script src="script/forgot-password.js"></script>
</body>
</html>