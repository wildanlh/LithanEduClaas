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
	
	    <div class="card m-3 shadow">
	      <h3 class="text-center fw-bold mt-3">List Stores</h3>
	      <table class="table mt-3">
	        <tr>
	          <th>Store Name</th>
	          <th>Phone Number</th>
	          <th>Locality</th>
	          <th colspan="2">Action</th>
	        </tr>
	        <c:forEach items="${s}" var="s">
	          <tr>
	            <td>${s.name}</td>
	            <td>${s.phone_number}</td>
	            <td>${s.locality}</td>
	            <td><a href="<%= request.getContextPath() %>/edit/${s.id}">Edit</a></td>
				<td><a href="<%= request.getContextPath() %>/delete/${s.id}">Delete</a></td>
	          </tr>
	        </c:forEach>
	      </table>
	    </div>
	  </div>
	</section>
	
	<div class="text-center">
		<a class="btn btn-primary" href="<%= request.getContextPath() %>/store">Add Stores</a>
	</div>
</body>
</html>