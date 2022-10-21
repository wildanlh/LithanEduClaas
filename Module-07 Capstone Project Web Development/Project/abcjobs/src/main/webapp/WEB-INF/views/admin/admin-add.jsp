<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../components/header.jsp" %>
     <link href="css/admin-add.css" rel="stylesheet" />
</head>

<body>
    <%@ include file="admin-navbar.jsp" %>

        <section class="h-100 mt-3">
            <div class="container h-100">
                <div class="row justify-content-sm-center h-100">
                    <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                        <div class="card m-3 shadow">
                            <div class="card-body p-5">
                                <h1 class="fs-4 card-title fw-bold mb-4">Add User</h1>
                                <form:form action="saveAdd" method="post" id="form" modelAttribute="addAdmin"
                                    onsubmit="return checkValidation()">

                                    <div class="form-floating mb-3">
                                        <form:input path="email" type="email" class="form-control"
                                            placeholder="name@example.com" name="email" id="email" />
                                        <label for="floatingInput">Email address</label>
                                        <div class="invalid-feedback error errorEmail">
                                            <div>Email is Required</div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="password" type="password" class="form-control"
                                            placeholder="Password" name="password" id="password" />
                                        <label for="floatingPassword">Password</label>
                                        <div class="invalid-feedback error errorPassword">
                                            <div>
                                                Password is Required
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="profile.first_name" type="text" class="form-control"
                                            placeholder="first_name" name="first_name" id="fname" />
                                        <label for="first_name">First Name</label>
                                        <div class="invalid-feedback error errorFname">
                                            <div>
                                                First Name is Required
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="profile.last_name" type="text" class="form-control"
                                            placeholder="last_name" name="last_name" id="lname" />
                                        <label for="last_name">Last Name</label>
                                        <div class="invalid-feedback error errorFname">
                                            <div>
                                                Last Name is Required
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="profile.city" type="text" class="form-control"
                                            placeholder="city" name="city" id="city" />
                                        <label for="city">City</label>
                                        <div class="invalid-feedback error errorCity">
                                            <div>City is Required</div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:input path="profile.country" type="text" class="form-control"
                                            placeholder="country" name="country" id="country" />
                                        <label for="country">Country</label>
                                        <div class="invalid-feedback error errorCountry">
                                            <div>
                                                Country is Required
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <form:select path="profile.job.id_job" class="form-select"
                                            id="floatingSelect job" aria-label="Floating label select example">
                                            <option value="" disabled="disabled" selected>-- Job --
                                            </option>
                                            <c:forEach items="${listJob}" var="job">
                                                <option value="${job.id_job}">${job.company_name},
                                                    ${job.job_name}</option>
                                            </c:forEach>
                                        </form:select>
                                        <label for="floatingSelect">Job</label>
                                    </div>


                                    <button class="w-100 btn btn-lg btn-primary fw-bold" type="submit">Add</button>
                                </form:form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/validator.js"></script>
</body>

</html>