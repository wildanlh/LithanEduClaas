<%@ include file="jsp-tags.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Know Your Neighborhood</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      label,
      input {
        display: block;
      }
      .error {
        color: red;
      }
    </style>
  </head>
  <body>
    <section class="h-100 mt-3">
        <div class="container h-100">
            <div class="row justify-content-sm-center h-100">
                <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                    <div class="card m-3 shadow">
                        <div class="card-body p-5">
                            <h1 class="fs-4 card-title fw-bold mb-4">Login</h1>
                            <form:form action="loginUser" modelAttribute="user">
                                <div class="form-floating mb-3">
                                    <form:input type="text" path="username" class="form-control" placeholder="username"/>
                                        <label for="username">Username</label>
                                </div>

                                <div class="form-floating mb-3">
                                    <form:input type="password" path="password" class="form-control"
                                        id="floatingPassword loginPassword" placeholder="Password"/>
                                        <label for="floatingPassword">Password</label>
                                </div>
                                
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                
                                <c:if test="${param.error != null}">
                                    <p class="error">Invalid username or password</p>
                                </c:if>

                                <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
