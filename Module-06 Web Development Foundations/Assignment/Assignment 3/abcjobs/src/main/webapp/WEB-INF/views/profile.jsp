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
      <%@ include file="../components/navbar.jsp" %>

      <section class="profile">
		  <div class="container">
		    <div class="profile">
		      <div class="card">
		        <div class="rounded-top text-white d-flex flex-row bg-dark" style="height:200px;">
		          <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
		            <img src="images/user/default.png" alt="Generic placeholder image"
		              class="img-fluid img-thumbnail mt-4 mb-2 rounded-circle" style="width: 150px; z-index: 1">
		          </div>
		          <div class="ms-3" style="margin-top: 130px;">
		            <h4 class="fw-bold">${profile.first_name} ${profile.last_name}</h4>
		            <p>${profile.city}, ${profile.country}</p>
		          </div>
		        </div>
		        <div class="p-4 text-black" style="background-color: #f8f9fa;">
		          <div class="d-flex justify-content-end text-center py-1">
		            <div>
		              <a href="edit-profile" class="btn btn-primary h5">Edit Profile</a>
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