<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../components/header.jsp" %>
</head>

<body>
    <!-- navbar -->
    <%@ include file="admin-navbar.jsp" %>

        <section class="h-100 mt-3">
            <div class="container h-100">
                <form:form action="sendBulkEmail" method="post" modelAttribute="bulkEmail" id="form">
                    <div class="row justify-content-sm-center h-100">

                        <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                            <div class="card m-3 shadow">
                                <div class="card-body p-5">
                                    <h1 class="fs-4 card-title fw-bold mb-4">Send Bulk Email</h1>

                                    <div class="form-floating mb-3">
                                        <form:hidden path="id_bulk_email" class="form-control" />
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="subject" type="text" class="form-control"
                                            placeholder="Subject" name="subject" id="subject" />
                                        <label for="subject">Subject</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:textarea path="content" type="text" class="form-control"
                                            placeholder="Content" name="content" id="content" />
                                        <label for="content">Content</label>
                                    </div>

                                    <button class="w-100 btn btn-lg btn-primary" type="submit">Send Bulk</button>
                                </div>
                            </div>
                        </div>
                        <div class="container card m-3 shadow">
                            <table class="table mt-3">
                                <tr class="text-center">
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Send Email</th>
                                </tr>
                                <c:forEach items="${listUser}" var="user">
                                    <tr class="text-center" >
                                        <th>${user.getUser().getId_user()}</th>
                                        <th>${user.first_name} ${user.last_name}</th>
                                        <th>${user.getUser().getEmail()}</th>
                                        <th class="text-center">
                                            <form:checkbox class="text-center" path="usersId"
                                                value="${user.getUser().getId_user()}" />
                                        </th>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </form:form>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>