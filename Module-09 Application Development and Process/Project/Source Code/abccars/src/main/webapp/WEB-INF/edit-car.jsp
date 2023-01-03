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
                            <h1 class="fs-4 card-title fw-bold mb-4">Edit Sale Car</h1>
                            <form:form method="post" id="carform" modelAttribute="car" action="save_car">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <form:input path="id" hidden="hidden" />

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="Model" name="make"
                                        path="make" />
                                    <form:label for="make" path="make">Make</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Make is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="Model" name="first-name"
                                        path="model" />
                                    <form:label for="Model" path="model">Model</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Model is required
                                        </div>
                                    </div>
                                </div>

                                <div class="separator border-bottom border-1 mb-3">

                                </div>
                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="Year" name="year"
                                        path="makeYear" />
                                    <form:label for="year" path="makeYear">Year</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Year is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="Price" name="price"
                                        path="price" />
                                    <form:label for="price" path="price">Price</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Price is required
                                        </div>
                                    </div>
                                </div>

                                <button class="w-100 btn btn-lg btn-dark" type="submit">Edit Car</button>
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

</html>