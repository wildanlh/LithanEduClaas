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
    </style>
</head>

<body>
    <section class="h-100 mt-3">
        <div class="container h-100">
            <div class="row justify-content-sm-center h-100">
                <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                    <div class="card m-3 shadow">
                        <div class="card-body p-5">
                            <h1 class="fs-4 card-title fw-bold mb-4">Add Store</h1>
                            <form:form modelAttribute="store" action="addStore/save" method="POST">
                                <div class="form-floating mb-3">
                                    <form:input class="form-control" type="text" path="name" name="name" id="name"  />
                                    <label for="name floatingInput">Store Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <form:input class="form-control" type="text" path="phone_number" name="phone_number" id="phone"  />
                                    <label for="phone floatingInput">Phone Number</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <form:input class="form-control" type="text" path="localities" name="localities" id="localities"  />
                                    <label for="localities floatingInput">Locality</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="text-center">
        <a class="btn btn-primary" href="<%= request.getContextPath() %>/">View Stores</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
