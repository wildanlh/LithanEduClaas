<nav class="py-2 bg-light border-bottom bg-dark border-dark">
    <div class="container d-flex flex-wrap" bis_skin_checked="1">
        <ul class="nav me-auto">
            <sec:authorize access="isAuthenticated()">
                <li class="nav-item"><a href="cars" class="nav-link link-light px-2">Home</a></li>
                <sec:authorize access="hasRole('Admin')">
                    <li class="nav-item"><a href="users" class="nav-link link-light px-2">Dashboard</a></li>
                </sec:authorize>
                <sec:authorize access="hasRole('Admin')">
                    <li class="nav-item"><a href="all_cars" class="nav-link link-light px-2">Cars</a></li>
                </sec:authorize>
                <li class="nav-item"><a href="profile" class="nav-link link-light px-2">Profile</a></li>
            </sec:authorize>
        </ul>
        <sec:authorize access="!isAuthenticated()">
            <ul class="nav">
                <li class="nav-item"><a href="login" class="nav-link link-light px-2">Login</a></li>
                <li class="nav-item"><a href="register" class="nav-link link-light px-2">Sign up</a></li>
            </ul>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <form action="logout" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <input type="submit" name="Logout" value="Logout" class="btn btn-danger"></input>
            </form>
        </sec:authorize>
    </div>
</nav>
<header class="bg-dark py-3 mb-4 border-bottom">
    <div class="container d-flex flex-wrap justify-content-center" bis_skin_checked="1">
        <a class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto btn fw-bold fs-4 link-light border-0"
            href="<%= request.getContextPath() %>">
            ABC <span class="badge text-dark bg-light mx-2">Cars</span>
        </a>
        <sec:authorize access="isAuthenticated()">
            <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-5" action="search_param" method="get" id="searchParam">
                <input type="search" class="form-control" placeholder="Search Car..." aria-label="Search"
                    name="keyword">
                <!-- <input type="submit" value="Search" class="btn btn-info"/> -->
            </form>
            <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto row" action="search_price" method="get"
                id="searchPrice">
                <div class="col-4 px-0 me-2">
                    <input type="search" class="form-control" placeholder="Min Price" aria-label="Search" name="min">
                </div>
                <div class="col-4 px-0 me-2">
                    <input type="search" class="form-control" placeholder="Max Price" aria-label="Search" name="max">
                </div>
                <div class="col-3 px-0">
                    <input type="submit" value="Search" class="btn btn-info" />
                </div>
            </form>
        </sec:authorize>
    </div>
</header>