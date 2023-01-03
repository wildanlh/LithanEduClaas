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
    <div class="container col-xxl-8" bis_skin_checked="1">
        <div class="row flex-lg-row-reverse align-items-center g-5" bis_skin_checked="1">
            <div class="col-10 col-sm-8 col-lg-6" bis_skin_checked="1">
                <img src="img/car-cover.jpg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
            </div>
            <div class="col-lg-6" bis_skin_checked="1">
                <a class="btn fw-bold fs-4 link-light border-0 bg-dark mb-3" href="<%= request.getContextPath() %>">
                    ABC <span class="badge text-dark bg-light">Cars</span>
                </a>
                <p class="lead">Welcome to ABC Cars.</p>
                <div class="d-grid gap-2 d-md-flex justify-content-md-start" bis_skin_checked="1">
                    <button type="button" class="btn btn-outline-dark btn-lg px-4 me-md-2" onclick="window.location.href='new_car';">Sale Car</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
    <hr>
    </div>
    
    
    <div class="container">
        <div class="row p-3">
            <div class="col">
                <h2 class="text-center">Cars On Sale</h2>
            </div>
            <c:if test="${not empty listcars}">
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