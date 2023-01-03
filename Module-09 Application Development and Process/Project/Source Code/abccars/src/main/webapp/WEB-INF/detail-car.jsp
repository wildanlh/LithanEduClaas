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
    <div class="container mb-5">
        <div class="row p-3">
            <div class="col">
                <h2 class="text-center">Car Detail</h2>
            </div>
        </div>

        <div class="card">
            <div class="row g-0">
                <div class="col-md-8">
                    <img class="rounded"
                        src="img/ghost.png"
                        alt="car" style="width: 100%;">
                </div>
                <div class="col-md-4">
                    <div class="card-body">
                        <h3 class="card-title">${car.make}</h3>
                        <div class="d-flex justify-content-between align-items-center">
                            <h4 class="card-title">${car.model}</h4>
                            <h5 class="card-title">${car.makeYear}</h5>
                        </div>
                        <!-- <p class="card-text">{{car.description}}</p> -->
                        <div class="card">
                            <h5 class="card-header bg-dark text-light">Price</h5>
                            <div class="card" style="width: 18rem;">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item fw-bold">$ ${car.price}</li>
                                </ul>
                            </div>
                        </div>

                        <hr class="my-4">

                        <h4 class="mb-3">Seller</h4>
                        <div class="form-group row mb-1">
                            <h6 class="control-label col-4">Name: </h6>
                            <div class="col-8">${user.name}</div>
                        </div>
                        <div class="form-group row mb-1">
                            <h6 class="control-label col-4">Phone Number:</h6>
                            <label class="col-8">${user.phoneNumber}</label>
                        </div>
                        <div class="form-group row mb-1">
                            <h6 class="control-label col-4">Email Address: </h6>
                            <div class="col-8">${user.email}</div>
                        </div>

                        <hr class="my-4">
                        <h4 class="mb-3">Set a bid for this car</h4>
                        <form action="car_detail?id=${car.id}" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <div class="col-12 mb-2">
                                <!-- <label for="bidderPrice" class="form-label">Bid Price</label> -->
                                <input type="text" class="form-control" id="bidderPrice" placeholder="Enter Bid Price"
                                    name="bitprice">
                            </div>
                            <div class="d-grid gap-2">
                                <button class="btn btn-dark fw-bold mt-3" type="submit">Bid Now</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
    <hr>
    </div>

    <div class="container p-3 my-4">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-dark">Bidding List</span>
            <!-- <span class="badge bg-primary rounded-pill">3</span> -->
        </h4>
        <c:if test="${empty bidinfo}">
            <p>Sorry. Looks like no one has put their bid on this car.</p>
        </c:if>
        <ul class="list-group mb-3">
            <c:forEach var="bid" items="${bidinfo}">
                <li class="list-group-item d-flex justify-content-between lh-sm rounded-2">
                    <div>
                        <h6 class="my-0">${bid.user.name}</h6>
                        <small class="text-muted">${bid.bidDate}</small>
                    </div>
                    <span class="text-muted">$ ${bid.bidderPrice}</span>
                </li>
            </c:forEach>
        </ul>
    </div>
    <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>