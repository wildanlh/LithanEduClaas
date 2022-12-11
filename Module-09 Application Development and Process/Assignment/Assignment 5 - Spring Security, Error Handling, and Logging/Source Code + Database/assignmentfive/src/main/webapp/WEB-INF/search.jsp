<%@ include file="jsp-tags.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1" />
    <title>Know Your Neighborhood</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <section class="h-100 mt-3">
        <div class="container h-100">
            <div class="card m-3 shadow">
                <h3 class="text-center fw-bold mt-3">List Stores</h3>
                <p class="text-center fw-bold mt-3 text-danger">${message}</p>
                <table class="table mt-3">
                    <tr>
                        <th>Store Name</th>
                        <th>Phone Number</th>
                        <th>Locality</th>
                    </tr>
                    <c:forEach items="${stores}" var="store">
                        <tr>
                            <td>${store.name}</td>
                            <td>${store.phone_number}</td>
                            <td>${store.localities}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </section>

    <div class="text-center">
        <a class="btn btn-primary" href="<%= request.getContextPath() %>/">View Stores</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>