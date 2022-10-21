<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
</head>
<body>
    <%@ include file="admin-navbar.jsp" %>
 
    <section class="h-100 mt-3">
		<div class="container h-100">
		
		<div class="card m-3 shadow">
		<h3 class="text-center fw-bold mt-3">Manage Jobs</h3>
			<div class="m-4">
				<button type="button" onclick="location.href = '<%= request.getContextPath() %>/post-job';"
					class="btn fw-bold btn-primary">Post Job</button>
					<button type="button" onclick="location.href = '<%= request.getContextPath() %>/job-applicant';"
					class="btn fw-bold btn-primary">Manage Applicant</button>
				<table class="table mt-3">
					<tr class="text-center">
						<th>ID</th>
              <th>Job Name</th>
              <th>Job Level</th>
              <th>Job Time</th>
              <th>Job Description</th>
              <th>Company</th>
              <th>Action</th>
					</tr>
					<c:forEach items="${listJob}" var="job">
						<tr>
               <td>${job.getId_job()}</td>
              <td>${job.getJob_name()}</td>
              <td>${job.getJob_level()}</td>
              <td>${job.getJob_time()}</td>
              <td style="max-width: 500px;">${job.getJob_description()}</td>
              <td>${job.getCompany_name()}</td>
              <td>
              <a href="job-edit?id=${job.getId_job()}" class="text-decoration-none">
                  <button class="btn btn-outline-warning mb-1 mt-1 btn-sm">Edit</button>
                </a>
                <a href="job-delete?id=${job.getId_job()}" id="yesDelete" data-bs-toggle="modal" data-bs-target="#deletejobmodal" class="text-decoration-none">
                  <button class="btn btn-outline-danger mb-1 mt-1 btn-sm">Delete</button>
                </a>
              </td>
						</tr>
					</c:forEach>
				</table>
			</div>
			</div>
		</div>
	</section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>