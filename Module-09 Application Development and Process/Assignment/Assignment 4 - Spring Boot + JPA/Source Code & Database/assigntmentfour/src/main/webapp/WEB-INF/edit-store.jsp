<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
</head>
<body>
	
	<section class="h-100 mt-3">
	  <div class="container h-100">
	    <div class="row justify-content-sm-center h-100">
	      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
	        <div class="card m-3 shadow">
	          <div class="card-body p-5">
	            <h1 class="fs-4 card-title fw-bold mb-4">Edit Store</h1>
	            <form:form modelAttribute="editStoreForm" action="/editProcess/${editStore.id}">
	              <div class="form-floating mb-3">
	                <input class="form-control" type="text" name="name" id="name" value="${editStore.name}" required />
	                <label for="name floatingInput">Store Name</label>
	              </div>
	              <div class="form-floating mb-3">
	                <input class="form-control" type="text" name="phone_number" value="${editStore.phone_number}" id="phone" required />
	                <label for="phone floatingInput">Phone Number</label>
	              </div>
	              <div class="form-floating mb-3">
	                <input class="form-control" type="text" name="locality" value="${editStore.locality}" id="locality" required />
	                <label for="locality floatingInput">Locality</label>
	              </div>
	              <button type="submit" class="btn btn-primary">Edit</button>
	            </form:form>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	
	<div class="text-center">
		<a class="btn btn-primary" href="<%= request.getContextPath() %>/view-store">View Stores</a>
	</div>	

</body>
</html>