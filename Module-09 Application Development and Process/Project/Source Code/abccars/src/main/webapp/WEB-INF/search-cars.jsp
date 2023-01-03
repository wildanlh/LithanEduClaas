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
        <div class="row p-3">
            <c:if test="${empty listcars}">
                <div>
                    <h4 class="text-center">${msg_result}</h4>
                    <h4 class="text-center">Please try with another input</h4>
                    <hr>
                </div>
            </c:if>
            <c:if test="${not empty listcars}">
                <div class="col">
                    <h2 class="text-center">${msg_result}</h2>
                </div>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <c:forEach var="car" items="${listcars}">
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="car-image">
                                    <img class="rounded"
                                        src="img/ghost.png"
                                        alt="car" style="width: 400px;">
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">${car.make}</h3>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h4 class="card-title">${car.model}</h4>
                                        <h5 class="card-title">$ ${car.price}</h5>
                                    </div>
                                    <p class="card-text">Year : ${car.makeYear}</p>
                                    <button class="btn btn-dark mt-3"
                                        onclick="window.location.href='car_detail?id=${car.id}';">Check
                                        Details</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>