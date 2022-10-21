<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %> 
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
                    <h3 class="text-center fw-bold mt-3">Admin Dashboard</h3>
                    <div class="m-4">
                        <button type="button" onclick="location.href = '<%= request.getContextPath() %>/admin-add';"
                            class="btn fw-bold btn-primary">Add User</button>
                        <button type="button"
                            onclick="location.href = '<%= request.getContextPath() %>/send-bulk-email';"
                            class="btn fw-bold btn-primary">Send Bulk Email</button>
                        <table class="table mt-3">
                            <tr class="text-center">
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Country</th>
                                <th>City</th>
                                <th>Company</th>
                                <th>Job</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach items="${listUser}" var="user">
                                <tr>
                                    <td>${user.getUser().getId_user()}</td>
                                    <td>${user.first_name}</td>
                                    <td>${user.last_name}</td>
                                    <td>${user.getUser().getEmail()}</td>
                                    <td>${user.country}</td>
                                    <td>${user.city}</td>
                                    <td>${user.getJob().getCompany_name()}</td>
                                    <td>${user.getJob().getJob_name()}</td>
                                    <td>
                                        <a href="admin-edit?id=${user.id_profile}" class="text-decoration-none">
                                            <button class="btn btn-outline-warning mb-1 mt-1 btn-sm">Edit</button>
                                        </a>
                                        <a href="admin-delete?id=${user.getUser().getId_user()}"
                                            class="text-decoration-none">
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