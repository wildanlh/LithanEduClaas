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
          <a href="" class="nav-link">Public</a>
        </li>
        <li class="nav-item">
          <a href="" class="nav-link">Jobs</a>
        </li>
        
        <c:if test="${profile != null}">
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/profile" class="nav-link">
            Account</a>
        </li>
        </c:if>
      </ul>
      
      <c:if test="${profile == null}">
      <div class="nav-button d-flex flex-column flex-lg-row">
        <button onclick="location.href = '<%= request.getContextPath() %>/register';" type="button" class="btn btn-outline-secondary btn-sm mx-1 fw-bold">Register</button>
        <button onclick="location.href = '<%= request.getContextPath() %>/login';" type="button" class="btn btn-primary btn-sm fw-bold">Login</button>
      </div>
      </c:if>
      
      <c:if test="${profile != null}">
      <div class="nav-button d-flex flex-column flex-lg-row">
        <button onclick="location.href = '<%= request.getContextPath() %>/logout';" type="button" class="btn btn-outline-danger btn-sm mx-1 fw-bold">Logout</button>
      </div>
      </c:if>
      
    </div>
  </div>
</nav>