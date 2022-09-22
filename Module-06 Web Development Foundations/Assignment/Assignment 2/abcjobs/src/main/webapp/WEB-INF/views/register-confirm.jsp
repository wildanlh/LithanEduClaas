<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ABC Jobs</title>
	<link 
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
    rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="root">
	  <header>
	    <%@ include file="header.jsp" %>
	  </header>
	  
		<section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card shadow">
		          <div class="card-body">
		            <div class="card-body">
		              <h1 class="fs-4 card-title fw-bold mb-4 text-center">Congratulations!</h1>
		              <div class="card-body text-center">
		                <img src="resources/img/email-confirm.jpg" alt="image" style="width: 250px;">
		                <p>Your email has already been confirmed, <br> You can now login to the application.</p>
		                <div class="d-grid gap-2 col-6 mx-auto">
		                  <button onclick="location.href = '<%= request.getContextPath() %>/login';" class="btn btn-primary" type="button">Continue</button>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>