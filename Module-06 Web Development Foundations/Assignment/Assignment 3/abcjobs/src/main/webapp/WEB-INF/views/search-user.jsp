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
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

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
		                <div class="profile-image float-md-right" >
		                <img src="images/user/barry.jpg" alt="" >
		                </div>
		              </div>
		              <div class="col-lg-8 col-md-8 col-12">
		                <h4 class="m-t-0 m-b-0"><strong>Barry</strong> Portillo</h4>
		                <span class="job_post">Google}</span>
		                <p>Jakarta, Indonesia</p>
		                <div>
		                  <button onclick="location.href = '<%= request.getContextPath() %>/view-profile';" class="btn btn-primary btn-round me-3">View Profile</button>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		      <div class="col-xl-6 col-lg-7 col-md-12">
		        <div class="card profile-header">
		          <div class="body">
		            <div class="row">
		              <div class="col-lg-4 col-md-4 col-12">
		                <div class="profile-image float-md-right"> 
		                <img src="images/user/jannat.jpg" alt=""> 
		                </div>
		              </div>
		              <div class="col-lg-8 col-md-8 col-12">
		                <h4 class="m-t-0 m-b-0"><strong>Jannat</strong> Hamilton</h4>
		                <span class="job_post">Google</span>
		                <p>Tokyo, Japan</p>
		                <div>
		                  <button class="btn btn-primary btn-round me-3">View Profile</button>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		      <div class="col-xl-6 col-lg-7 col-md-12">
		        <div class="card profile-header">
		          <div class="body">
		            <div class="row">
		              <div class="col-lg-4 col-md-4 col-12">
		                <div class="profile-image float-md-right"> 
		                <img src="images/user/aniyah.jpg" alt=""> 
		                </div>
		              </div>
		              <div class="col-lg-8 col-md-8 col-12">
		                <h4 class="m-t-0 m-b-0"><strong>Aniyah</strong> Hayden</h4>
		                <span class="job_post">Samsung</span>
		                <p>Bandung, Indonesia</p>
		                <div>
		                  <button class="btn btn-primary btn-round me-3">View Profile</button>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		      <div class="col-xl-6 col-lg-7 col-md-12">
		        <div class="card profile-header">
		          <div class="body">
		            <div class="row">
		              <div class="col-lg-4 col-md-4 col-12">
		                <div class="profile-image float-md-right"> 
		                <img src="images/user/elliot.jpg" alt=""> 
		                </div>
		              </div>
		              <div class="col-lg-8 col-md-8 col-12">
		                <h4 class="m-t-0 m-b-0"><strong>Elliot</strong> Hogan</h4>
		                <span class="job_post">Amazon</span>
		                <p>New York, USA</p>
		                <div>
		                  <button class="btn btn-primary btn-round me-3">View Profile</button>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>