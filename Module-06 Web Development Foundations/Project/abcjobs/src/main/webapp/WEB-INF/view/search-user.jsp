<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/search-user.css" rel="stylesheet" />
<link>
</head>
<body class="d-flex flex-column min-vh-100">
	<div class="root">
      <%@ include file="../components/navbar-loggedin.jsp" %>

      <form class="search" action="search" method="get">
		  <div class="container my-5">
		    <div class="container-fluid">
		      <div class="d-flex">
				<input type="text" class="form-control me-2" placeholder="Search..."
					aria-label="Search" name="searchValue" id="searchValue">
				<button class="btn btn-outline-dark h-6" type="submit">Search</button>
		      </div>
		    </div>
		  </div>
	  </form>
   	</div>
   	<%@ include file="../components/footer.jsp"%>
</body>
</html>