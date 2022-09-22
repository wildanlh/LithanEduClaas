<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>ABC Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
    rel="stylesheet">
    <link href="resources/css/search.css" rel="stylesheet">
  </head>
  <body>
  	<%@ include file="header.jsp" %>
    
  <section class="search">
	  <div class="container my-5">
	    <div class="container-fluid">
	      <div class="d-flex">
	        <input class="form-control me-2" type="text" placeholder="Search">
	      </div>
	    </div>
	  </div>
	</section>
	
	<section class="search-list">
	  <div class="container profile-page">
	    <div class="row">
	      <div class="col-xl-6 col-lg-7 col-md-12">
	        <div class="card profile-header">
	          <div class="body">
	            <div class="row">
	              <div class="col-lg-4 col-md-4 col-12">
	                <div class="profile-image float-md-right"> <img src="resources/img/default.png" alt="image"> </div>
	              </div>
	              <div class="col-lg-8 col-md-8 col-12">
	                <h4 class="m-t-0 m-b-0"><strong>Wildan</strong> Luqmanul Hakim</h4>
	                <span class="job_post">Google</span>
	                <p>Sumedang, Indonesia</p>
	                <div>
	                   <button onclick="location.href = '<%= request.getContextPath() %>/profile-user';" class="btn btn-primary btn-round me-3">View Profile</button> 
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        
	        <div class="card profile-header">
	          <div class="body">
	            <div class="row">
	              <div class="col-lg-4 col-md-4 col-12">
	                <div class="profile-image float-md-right"> <img src="resources/img/default.png" alt="image"> </div>
	              </div>
	              <div class="col-lg-8 col-md-8 col-12">
	                <h4 class="m-t-0 m-b-0"><strong>Wildan</strong> Luqmanul Hakim</h4>
	                <span class="job_post">Google</span>
	                <p>Sumedang, Indonesia</p>
	                <div>
	                   <button onclick="location.href = '<%= request.getContextPath() %>/profile-user';" class="btn btn-primary btn-round me-3">View Profile</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        
	        <div class="card profile-header">
	          <div class="body">
	            <div class="row">
	              <div class="col-lg-4 col-md-4 col-12">
	                <div class="profile-image float-md-right"> <img src="resources/img/default.png" alt="image"> </div>
	              </div>
	              <div class="col-lg-8 col-md-8 col-12">
	                <h4 class="m-t-0 m-b-0"><strong>Wildan</strong> Luqmanul Hakim</h4>
	                <span class="job_post">Google</span>
	                <p>Sumedang, Indonesia</p>
	                <div>
	                  <button onclick="location.href = '<%= request.getContextPath() %>/profile-user';" class="btn btn-primary btn-round me-3">View Profile</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
    
    <%@ include file="footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
