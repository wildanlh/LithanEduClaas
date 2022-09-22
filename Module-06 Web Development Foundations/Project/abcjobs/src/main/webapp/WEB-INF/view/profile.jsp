<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/profile.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar-loggedin.jsp" %>

      <section class="profile">
		  <div class="container">
		    <div class="profile">
		      <div class="card">
		        <div class="rounded-top text-white d-flex flex-row bg-dark" style="height:200px;">
		          <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
		            <img src="images/user/default.png" alt="Generic placeholder image"
		              class="img-fluid img-thumbnail mt-4 mb-2 rounded-circle" style="width: 150px; z-index: 1">
		              <p class="text-dark text-center" style="z-index: 1;"><svg xmlns="http://www.w3.org/2000/svg" width="16"
		                height="16" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
		                <path fill-rule="evenodd"
		                  d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z" />
		                <path
		                  d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z" />
		              </svg> ${user.company} </p>
		          </div>
		          <div class="ms-3" style="margin-top: 130px;">
		            <h4 class="fw-bold">${user.firstName} ${user.lastName}</h4>
		            <p>${user.city}, ${user.country}</p>
		          </div>
		        </div>
		        <div class="p-4 text-black" style="background-color: #f8f9fa;">
		          <div class="d-flex justify-content-end text-center py-1">
		            <div>
		              <a href="updateprofile/${user.userID}" class="btn btn-primary h5">Edit Profile</a>
		            </div>
		          </div>
		        </div>
		        <div class="card-body p-4 text-black">
		          <div class="accordion mb-3" id="accordionPanelsStayOpenExample">
		            <div class="accordion-item">
		              <h2 class="accordion-header" id="panelsStayOpen-headingOne">
		                <button class="accordion-button fw-bold" type="button" data-bs-toggle="collapse"
		                  data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
		                  aria-controls="panelsStayOpen-collapseOne">
		                  People Around You
		                </button>
		              </h2>
		              <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
		                aria-labelledby="panelsStayOpen-headingOne">
		                <div class="accordion-body">
		                  <div class="container profile-page">
		                    <div class="row">
		                      <div class="col-xl-6 col-lg-7 col-md-12">
		                        <div class="card profile-header">
		                          <div class="body">
		                            <div class="row">
		                              <div class="col-lg-4 col-md-4 col-12">
		                                <div class="profile-image float-md-right"> <img src="images/user/barry.jpg" alt="">
		                                </div>
		                              </div>
		                              <div class="col-lg-8 col-md-8 col-12">
		                                <h4 class="m-t-0 m-b-0"><strong>Barry </strong>Portillo</h4>
		                                <span class="job_post">Google</span>
		                                <p>Jakarta, Indonesia</p>
		                                <div>
		                                  <button class="btn btn-primary btn-round me-3" onclick="location.href = '<%= request.getContextPath() %>/view-profile';">View Profile</button>
		                                </div>
		                              </div>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		          <div class="card-body p-4">
		            <div class="mb-3 d-flex">
		              <span class="btn text-primary page-link fw-bold me-3 border-bottom">About</span>
		              <span class="btn text-dark page-link fw-bold me-3">Job</span>
		              <span class="btn text-dark page-link fw-bold me-3">Posts</span>
		              <span class="btn text-dark page-link fw-bold me-3">My Network</span>
		            </div>
		            <div class="row p-3 card">
		              Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus ipsum autem ratione tenetur neque
		              voluptas iusto eius voluptatibus vel illum minima in veniam quidem culpa, corporis fugit dolores,
		              perspiciatis quis nemo reprehenderit repellat! Excepturi ullam corrupti amet. Accusamus quas debitis
		              officiis, consectetur dolor iusto, quo unde consequuntur autem aliquid inventore error expedita dolores.
		              Incidunt, aspernatur? Dolores voluptatibus hic libero minus incidunt natus! Quas facere architecto
		              similique
		              labore, quos asperiores! Dolores nihil sequi molestias placeat nulla praesentium perferendis sint nostrum
		              accusantium enim deserunt magnam corrupti neque ducimus dicta commodi exercitationem similique, non,
		              facere
		              obcaecati illum atque dolore officia earum! Exercitationem, nemo!
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>