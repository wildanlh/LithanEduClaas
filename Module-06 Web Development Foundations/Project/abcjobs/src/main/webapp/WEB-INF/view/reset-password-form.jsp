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
	
	<section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">Reset Password</h1>
		            <form method="post" id="resetPass" action="savePassword">
		            <div class="form-floating mb-3">
		            	<span class="err-msg">${error}</span>
		            </div>
		            <div class="form-floating mb-3">
		            	<span >${msg}</span>
		            </div>
		            <div class="form-floating mb-3">
		            	<p>Please Enter New Password</p>
		            </div>
		            <div class="form-floating mb-3">
		            	<input type="hidden" class="form-control" name="token" id="token" value="${token}"/>
		            </div>
		            
		            <div class="form-floating mb-3">
		                <input type="password" class="form-control" placeholder="Password" name="pass1" id="pass1" >
		                <label for="floatingPassword">Password</label>
		                <div class="invalid-feedback error errorPassword">
		                  <div>
		                    Password is Required
		                  </div>
		                </div>
		              </div>
		            
		              <div class="form-floating mb-3">
		                <input type="password" class="form-control" placeholder="Password" name="pass2" id="pass2" >
		                <label for="floatingPassword">Confirm Password</label>
		                <div class="invalid-feedback error errorPassword">
		                  <div>
		                    Password is Required
		                  </div>
		                </div>
		              </div>
		            
		              <button class="w-100 btn btn-lg btn-primary" type="submit" id="save" name="save">Change Password</button>
		            </form>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
	<%@ include file="../components/footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="script/resetpw.js"></script>
</body>
</html>