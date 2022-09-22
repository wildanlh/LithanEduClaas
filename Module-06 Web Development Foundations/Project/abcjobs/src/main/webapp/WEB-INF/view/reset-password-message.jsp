<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../components/header.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">
	<%@ include file="../components/navbar.jsp"%>
	
	<section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">${title}</h1>
		            <div class="form-floating mb-3">
		            	<p>${error}</p>
		            	<p>${msg}</p>
		            	<p>Please click button below to try again</p>
		            </div> 
		              <button class="w-100 btn btn-lg btn-primary" onclick="window.location.href='forgotPassword';">Try Again</button>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
	<%@ include file="../components/footer.jsp"%>
</body>
</html>