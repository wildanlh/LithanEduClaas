<footer class="bg-dark mt-auto">
    <div class="container" bis_skin_checked="1">
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 mt-4 border-top">
            <p class="col-md-4 mb-0 text-light">© 2022 ABC Cars Pte Ltd</p>

            <a class="btn fw-bold fs-4 link-light border-0" href="<%= request.getContextPath() %>">
                ABC <span class="badge text-dark bg-light">Cars</span>
            </a>

            <ul class="nav col-md-4 justify-content-end">
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a href="cars" class="nav-link px-2 text-light">Home</a></li>
                    <sec:authorize access="hasRole('Admin')">
                        <li class="nav-item"><a href="users" class="nav-link px-2 text-light">Dashboard</a></li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('Admin')">
                        <li class="nav-item"><a href="all_cars" class="nav-link px-2 text-light">Cars</a></li>
                    </sec:authorize>
                    <li class="nav-item"><a href="profile" class="nav-link px-2 text-light">Profile</a></li>

                </sec:authorize>
            </ul>
        </footer>
    </div>
</footer>