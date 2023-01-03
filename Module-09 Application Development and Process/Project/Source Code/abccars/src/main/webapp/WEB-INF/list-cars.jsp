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
    <div class="container">
        <div class="card p-3">
            <h2 class="text-center pb-3">Car List</h2>
            <c:if test="${not empty listcars}">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">ID Car</th>
                            <th scope="col">Seller</th>
                            <th scope="col">Make</th>
                            <th scope="col">Model</th>
                            <th scope="col">Year</th>
                            <th scope="col">Price</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% int i=1; %>
                            <c:forEach var="car" items="${listcars}">
                                <tr>
                                    <th scope="row">
                                        <%=i %>
                                    </th>
                                    <td>${car.id}</td>
                                    <td>${car.user.name}</td>
                                    <td>${car.model}</td>
                                    <td>${car.make}</td>
                                    <td>${car.makeYear}</td>
                                    <td>$ ${car.price}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-three-dots-vertical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                                                </svg>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                <li><a class="dropdown-item" href="car_detail?id=${car.id}">View</a>
                                                </li>
                                                <li><a class="dropdown-item" href="edit_car?id=${car.id}">Edit</a></li>
                                                <li><a class="dropdown-item"
                                                        href="activate_car?id=${car.id}">Activate</a></li>
                                                <li><a class="dropdown-item"
                                                        href="deactivate_car?id=${car.id}">Deactivate</a>
                                                </li>
                                                <li><a class="dropdown-item" href="delete_car?id=${car.id}">Delete</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>