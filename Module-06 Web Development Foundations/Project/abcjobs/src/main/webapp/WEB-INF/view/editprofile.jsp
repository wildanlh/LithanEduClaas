<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/home.css" rel="stylesheet" />
</head>
<body>
	 <%@ include file="../components/navbar-loggedin.jsp" %>
	
	<section class="h-100 mt-3 pb-5">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">Edit Profile</h1>
		            <form name="form" method="post" id="editProfile" action="../update">
		            
		            <div class="form-floating mb-3">
		            	<input class="form-control" value="${user.userID}" name="userID" id="userID" hidden="hidden"/>
		              </div>
		               
		              <div class="form-floating mb-3">
		                <input value="${user.firstName}" name="firstName" id="firstName" type="text" class="form-control" placeholder="first_name" name="first_name" id="fname"/>
		                <label for="first_name">First Name</label>
		                <div class="invalid-feedback error errorFname">
		                  <div>
		                    First Name is Required
		                  </div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <input name="lastName" id="lastName" value="${user.lastName}" type="text" class="form-control" placeholder="last_name" name="last_name" id="lname" />
		                <label for="last_name">Last Name</label>
		                <div class="invalid-feedback error errorLname">
		                  <div>
		                    Last Name is Required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <input name="city" value="${user.city}" type="text" class="form-control" placeholder="city" name="city" id="city" />
		                <label for="city">City</label>
		                <div class="invalid-feedback error errorCity">
		                  <div>City is Required</div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <input name="country" value="${user.country}"  type="text" class="form-control" placeholder="country" name="country" id="country" />
		                <label for="country">Country</label>
		                <div class="invalid-feedback error errorCountry">
		                  <div>
		                    Country is Required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <input name="company"  value="${user.company}"  type="text" class="form-control" placeholder="company" name="company" id="company" />
		                <label for="company">Company</label>
		                <div class="invalid-feedback error errorCompany">
		                  <div>
		                    Company is Required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <input name="phone"  value="${user.phone}"  type="text" class="form-control" placeholder="phone" name="phone" id="phone" />
		                <label for="phone">Phone</label>
		                <div class="invalid-feedback error errorPhone">
		                  <div>
		                    Phone is Required
		                  </div>
		                </div>
		              </div>
		            
		              <button class="w-100 btn btn-lg btn-primary" type="submit"id="update" name="update">Edit</button>
		            </form>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
	</section>
	
	 <%@ include file="../components/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>