<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "false" %>

<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top shadow-sm">
  <div class="container">
    <a class="btn fw-bold fs-4 link-primary border-0" href="<%= request.getContextPath() %>">
      ABC <span class="badge text-bg-primary bg-primary">Jobs</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse text-center" id="navbarNav">
      <ul class="navbar-nav ms-auto mx-3 fw-bold">
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/" class="nav-link">Home</a>
        </li>
        <li class="nav-item">
          <a href="search-user" class="nav-link">Public</a>
        </li>
        <li class="nav-item">
          <a href="jobs" class="nav-link">Jobs</a>
        </li>
        <li class="nav-item">
          <a href="threads" class="nav-link">Forum</a>
        </li>
         <c:if test="${admin != null}">
         <li class="nav-item">
          <a href="admin-dashboard" class="nav-link">Dashboard</a>
        </li>
        </c:if>
        </ul>
        <c:if test="${profile != null}">
          <ul class="navbar-nav fw-semibold">
             <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                 <div class="nav-account me-2">
                   <img src="${profile.picture}" alt="profile" style="width:25px; border-radius:50%;"/>
                 </div>
               </a>
               <ul class="dropdown-menu">
                 <li>
                   <a class="dropdown-item" href="user-profile"><i class="fa-solid fa-user"></i> Profile</a>
                 </li>
                 <li>
                   <a class="dropdown-item" href="change-password"><i class="fa-solid fa-briefcase"></i> Change Password</a>
                 </li>
                 <li class="dropdown-divider"></li>
                 <li>
                   <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal" href="logout">
                     <i class="fa-solid fa-briefcase"></i>Log Out
                   </a>
                 </li>
               </ul>
             </li>
           </ul>
        </c:if>
        
       
      
      <c:if test="${profile == null && admin == null}">
      <div class="nav-button d-flex flex-column flex-lg-row">
        <button onclick="location.href = '<%= request.getContextPath() %>/register';" type="button" class="btn btn-outline-secondary btn-sm mx-1 fw-bold">Register</button>
        <button onclick="location.href = '<%= request.getContextPath() %>/login';" type="button" class="btn btn-primary btn-sm fw-bold">Login</button>
      </div>
      </c:if> 
      
       <c:if test="${admin != null}">
          <div class="nav-button d-flex flex-column flex-lg-row">
              <button onclick="location.href = '<%= request.getContextPath() %>/adminLogout';" type="button" class="btn btn-outline-danger btn-sm mx-1 fw-bold">Logout</button>
          </div>
        </c:if>
    </div>
  </div>
</nav>

 

 <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Log Out</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure want to log out?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
        <button onclick="location.href = '<%= request.getContextPath() %>/logout';" type="button" class="btn btn-danger">Yes, Log Out</button>
      </div>
    </div>
  </div>
</div>