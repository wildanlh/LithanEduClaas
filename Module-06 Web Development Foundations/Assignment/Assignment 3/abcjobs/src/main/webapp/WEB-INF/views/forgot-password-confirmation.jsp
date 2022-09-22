<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>
  
      <section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card shadow">
		          <div class="card-body">
		            <div class="card-body">
		              <h1 class="fs-4 card-title fw-bold text-center">Thank You</h1>
		              <div class="card-body text-center">
		                <img src="images/vector/forgot-password-confirm.jpg" alt="image" style=" width: 200px;">
		                <div class="card-body">
		                  <span class="card-text">Your password has been reset, please check your email to create a new
		                    password</span>
		                </div>
		                <div class="d-grid gap-2 col-6 mx-auto mt-3">
		                  <button class="btn btn-primary fw-bold" type="button" onclick="location.href = '<%= request.getContextPath() %>/login';">Continue Login</button>
		                  <a class="text-dark" href="<%= request.getContextPath() %>/">Back to Home</a>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
   	</div>
</body>
</html>