<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<!--  <link href="css/register.css" rel="stylesheet" /> -->
</head>
<body>
<div class="root">
      <%@ include file="../components/navbar.jsp" %>
 
      <section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
		            <form:form name="form" action="thank-you" method="post" id="form" modelAttribute="register" onsubmit="return checkValidation()">
		            
		            <div class="form-floating mb-3">
		                <form:input path="email" type="email" class="form-control" placeholder="name@example.com" name="email" id="email" />
		                <label for="floatingInput">Email address</label>
		                <div class="invalid-feedback error errorEmail">
		                  <div>Email is Required</div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="password" type="password" class="form-control" placeholder="Password" name="password" id="password" />
		                <label for="floatingPassword">Password</label>
		                <div class="invalid-feedback error errorPassword">
		                  <div>
		                    Password is Required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <form:input path="profile.first_name" type="text" class="form-control" placeholder="first_name" name="first_name" id="fname"/>
		                <label for="first_name">First Name</label>
		                <div class="invalid-feedback error errorFname">
		                  <div>
		                    First Name is Required
		                  </div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="profile.last_name" type="text" class="form-control" placeholder="last_name" name="last_name" id="lname" />
		                <label for="last_name">Last Name</label>
		                <div class="invalid-feedback error errorLname">
		                  <div>
		                    Last Name is Required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <form:input path="profile.city" type="text" class="form-control" placeholder="city" name="city" id="city" />
		                <label for="city">City</label>
		                <div class="invalid-feedback error errorCity">
		                  <div>City is Required</div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="profile.country"  type="text" class="form-control" placeholder="country" name="country" id="country" />
		                <label for="country">Country</label>
		                <div class="invalid-feedback error errorCountry">
		                  <div>
		                    Country is Required
		                  </div>
		                </div>
		              </div>
		
		              <p class="form-text text-muted mb-3">
		                By registering you agree with our terms and condition.
		              </p>
		              <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
		            </form:form>
		          </div>
		          <div class="card-footer py-3 border-0">
		            <div class="text-center">
		              Already have an account? <a href="<%= request.getContextPath() %>/login" class="text-dark">Login</a>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
	</section>
      
      <%@ include file="../components/footer.jsp" %>  
	</div>

	<script src="js/validator.js"></script>

</body>
</html>