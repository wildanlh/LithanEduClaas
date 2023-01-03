<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="d-flex flex-column min-vh-100">
<%@ include file="navbar.jsp"%>
    <section class="h-100 mt-3">
        <div class="container h-100">
            <div class="row justify-content-sm-center h-100">
                <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                    <div class="card m-3 shadow">
                        <div class="card-body p-5">
                            <h1 class="fs-4 card-title fw-bold mb-4">Edit Profile</h1>
                            <form:form method="post" id="editProfile" action="update_profile" modelAttribute="user">
                                <form:input class="form-control" path="id" name="id" id="id" hidden="hidden" />

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="full-name"
                                        name="full-name" path="name"  />
                                    <form:label for="full-name" path="name">Full Name</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Name is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" for="phoneNumber" path="phoneNumber"
                                         />
                                    <form:label for="phoneNumber" path="phoneNumber">Phone Number</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Phone Number is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" for="address" path="address"
                                         />
                                    <form:label for="address" path="address">Address</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Address is required
                                        </div>
                                    </div>
                                </div>


                                <form:button class="w-100 btn btn-lg btn-dark" type="submit" id="update" name="update">
                                    Edit</form:button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

