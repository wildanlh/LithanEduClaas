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
                            <h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
                            <form:form method="post" id="regisform" modelAttribute="user" action="register">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="username"
                                        name="username" path="userName" />
                                    <form:label for="username" path="userName">Username</form:label>
                                    <p class="text-danger mb-0">${msg_dupe}</p>
                                    <div class="invalid-feedback">
                                        <div>
                                            Username is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="text" class="form-control" placeholder="full-name"
                                        name="full-name" path="name" />
                                    <form:label for="full-name" path="name">Full Name</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Name is required
                                        </div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="email" class="form-control" placeholder="name@example.com"
                                        name="email" path="email" />
                                    <form:label for="floatingInput" path="email">Email address</form:label>
                                    <div class="invalid-feedback">
                                        <div>Email is required</div>
                                        <div>Email is invalid</div>
                                    </div>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="password" class="form-control" placeholder="Password" path="password"/>
                                    <form:label for="floatingPassword" type="password" path="password">Password</form:label>
                                    <div class="invalid-feedback">
                                        <div>
                                            Password is required
                                        </div>
                                        <div>
                                            Password must be at least 6 characters
                                        </div>
                                    </div>
                                </div>

                                <p class="form-text text-muted mb-3">
                                    By registering you agree with our terms and condition.
                                </p>
                                <form:button class="w-100 btn btn-lg btn-dark" type="submit" id="regis" name="regis">
                                    Register</form:button>
                            </form:form>
                        </div>
                        <div class="card-footer py-3 border-0">
                            <div class="text-center">
                                Already have an account? <a class="text-dark" href="login">Login</a>
                            </div>
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