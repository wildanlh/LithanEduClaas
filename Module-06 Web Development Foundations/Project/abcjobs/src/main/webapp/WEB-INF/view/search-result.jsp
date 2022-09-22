<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/search-user.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column min-vh-100">
	<%@ include file="../components/navbar-loggedin.jsp"%>
	
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
	
	<section class="search-list">
		  <div class="container profile-page">
		    <div class="row">
		    <p>${msgsearchResult}</p>
		    <c:forEach var="user" items="${userlist}">
		      <div class="col-xl-6 col-lg-7 col-md-12">
		        <div class="card profile-header">
		          <div class="body">
		            <div class="row">
		              <div class="col-lg-4 col-md-4 col-12">
		                <div class="profile-image float-md-right" >
		                <img src="images/user/default.png" alt="" >
		                </div>
		              </div>
		              <div class="col-lg-8 col-md-8 col-12">
		                <h4 class="m-t-0 m-b-0"><strong>${user.firstName}</strong> ${user.lastName}</h4>
		                <span class="job_post">${user.company}</span>
		                <p>${user.city}, ${user.country}</p>
		                <div>
		                  <a href="seeprofile/${user.userID}" class="btn btn-primary btn-round me-3">View Profile</a>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		      </c:forEach>
		    </div>
		  </div>
		</section>
		<%@ include file="../components/footer.jsp"%>
</body>
</html>