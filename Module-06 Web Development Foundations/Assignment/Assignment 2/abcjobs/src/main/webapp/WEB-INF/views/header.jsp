<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top shadow-sm">
  <div class="container">
    <a class="btn fw-bold fs-4 link-primary border-0">
      ABC <span class="badge text-bg-primary bg-primary">Jobs</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse text-center" id="navbarNav">
      <ul class="navbar-nav ms-auto mx-3 fw-bold">
        <li class="nav-item">
          <a class="nav-link">Home</a>
        </li>
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/search" class="nav-link">Public</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">Jobs</a>
        </li>
      </ul>
      <div class="nav-button d-flex flex-column flex-lg-row">
        <button onclick="location.href = '<%= request.getContextPath() %>/register';" type="button" class="btn btn-outline-secondary btn-sm mx-1 fw-bold">Register</button>
        <button onclick="location.href = '<%= request.getContextPath() %>/login';" type="button" class="btn btn-primary btn-sm fw-bold">Login</button>
      </div>
    </div>
  </div>
</nav>
    