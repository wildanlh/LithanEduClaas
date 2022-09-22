<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
</head>
<body>
	<%@ include file="../components/navbar-admin.jsp"%>
	
	<section class="h-100 mt-3 pb-5">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">Edit User</h1>
		            <form name="form" method="post" id="editForm form" action="../edit">
		            
		            <div class="form-floating mb-3">
		            	<input type="text" value="${user.userID}" name="dispuserID" id="dispuserID" class="form-control" placeholder="dispuserID" disabled="disabled"/>
		            	<input class="form-control" value="${user.userID}" name="userID" id="userID" hidden="hidden"/>
		                <label for="userID">User ID</label>
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
		               
		              <div class="form-floating mb-3">
		                <input value="${user.email}" name="email" id="email"  type="email" class="form-control" placeholder="name@example.com" name="email" id="email" />
		                <label for="floatingInput">Email address</label>
		                <div class="invalid-feedback error errorEmail">
		                  <div>Email is Required</div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <input value="${user.pass}" name="pass" id="pass"  type="password" class="form-control" placeholder="Password" name="password" id="password" />
		                <label for="floatingPassword">Password</label>
		                <div class="invalid-feedback error errorPassword">
		                  <div>
		                    Password is Required
		                  </div>
		                </div>
		              </div>
		            
		              <button class="w-100 btn btn-lg btn-primary" type="submit" id="edit" name="edit">Edit User</button>
		            </form>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
	</section>
</body>
</html>