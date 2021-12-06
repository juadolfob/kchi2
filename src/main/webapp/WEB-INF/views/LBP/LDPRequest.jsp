<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous" type="text/javascript"></script>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/request_first.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<title>Training Request Options</title>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-primary opacity-90 ps-2 pe-5 py-0">
			<div class="container-fluid px-5 py-0">
				<a class="navbar-brand" href="#"> <img
					src="../res/atos-white-logo.png" alt="atos white logo" height="65">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-5">
						<li class="nav-item"><a class="nav-link activ ms-3 me-5"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Menu </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">New Training
										Request</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Training Request
										Status</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">View All
										Trainings</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Trainings Status</a></li>
							</ul></li>
					</ul>
					<div class="dropdown bg-white rounded-circle p-2 ms-4 me-5">
						<a class="dropdown-toggle dropdown-noicon" href="#"
							id="userDropdown" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <img src="../res/user-solid.svg"
							class="opacity-50" alt="user solid icon" width="27" height="27">
						</a>
						<ul class="dropdown-menu" aria-labelledby="userDropdown">
							<li><a class="dropdown-item" href="#">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<main class="container">
		<div class=" header">
			<div class="row">
				<div class="col-10">
					<br>
					<h2>LDP Request</h2>
					<br>

				</div>
			</div>
		</div>
		<div class="row request-content">
			<div class="col">
				<div class="card border-primary mb-3 b-r">
					<div class="card-body">
						<h5 class="card-title card-h">
							<i class="fas fa-users"></i> Java full-stack Training
						</h5>
						<ul class="info-list">
							<li><b class="block">Id:</b> <label class="block">${requirement.getRequirementID()}</label>
							</li>
							<li><b class="block">User vertical:</b> <label class="block">${requirement.getRequirementUser()}</label>
							</li>
							<li><b class="block">User training area:</b> <label
								class="block">${requirement.getTrainingArea()}</label></li>
							<li><b class="block">User training start date:</b> <label
								class="block">${requirement.getRequestedTrainingStartDate()}</label>
							</li>
							<li><b class="block">Total candidates:</b> <label
								class="block">${requirement.getTotalCandidates()}</label></li>
							<li><b class="block">User training time zone:</b> <label
								class="block">${requirement.getTrainingTimeZone()}</label></li>
							<li><b class="block">Total duration dates:</b> <label
								class="block">${requirement.getTotalDurationDays()}</label></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col">
				<h4>Choose LDP slots</h4>
				<div id="trainer-list">
					<div class="check-block">
						<div class="in-line check-d">
							<input type="checkbox" class="form-check-input" />
						</div>
						<div class="in-line trainer-data">
							<div>
								<label>Name:</label> <label>Juan Carlos Romos Mario</label>
							</div>
							<div>
								<label>Time:</label> <label>10:00 am - 02:00 pm</label>
							</div>
							<div>
								<label>Duration</label> <label>Two months</label>
							</div>
							<div>
								<label>Date:</label> <label>12/04/21</label>
							</div>
						</div>
					</div>
					<div class="check-block">
						<div class="in-line check-d">
							<input type="checkbox" class="form-check-input" />
						</div>
						<div class="in-line trainer-data">
							<div>
								<label>Name:</label> <label>Perez Arriaga</label>
							</div>
							<div>
								<label>Time:</label> <label>10:00 am - 02:00 pm</label>
							</div>
							<div>
								<label>Duration:</label> <label>Two months</label>
							</div>
							<div>
								<label>Date:</label> <label>12/04/21</label>
							</div>
						</div>
					</div>
					<div class="check-block">
						<div class="in-line check-d">
							<input type="checkbox" class="form-check-input" />
						</div>
						<div class="in-line trainer-data">
							<div>
								<label>Name:</label> <label>Mariana Garcia</label>
							</div>
							<div>
								<label>Time:</label> <label>10:00 am - 02:00 pm</label>
							</div>
							<div>
								<label>Duration:</label> <label>Two months</label>
							</div>
							<div>
								<label>Date:</label> <label>12/04/21</label>
							</div>
						</div>
					</div>
					<div class="check-block">
						<div class="in-line check-d">
							<input type="checkbox" class="form-check-input" />
						</div>
						<div class="in-line trainer-data">
							<div>
								<label>Name:</label> <label>Daniel Lopez</label>
							</div>
							<div>
								<label>Time:</label> <label>10:00 am - 02:00 pm</label>
							</div>
							<div>
								<label>Duration:</label> <label>Two months</label>
							</div>
							<div>
								<label>Date:</label> <label>12/04/21</label>
							</div>
						</div>
					</div>
				</div>
				<br> <a class="btn btn-primary btn-labeled b-r"> Submit <span
					class="btn-label"><i class="fas fa-arrow-right"></i></span>
				</a>
			</div>
		</div>
	</main>
	<footer class="bg-light w-100 mt-auto mx-0">
		<div class="container">
			<div class="row my-5">
				<div class="col-5">
					<div class="d-flex flex-column">
						<div class="mb-5">
							<img src="../res/atos-blue-logo.jfif" alt="atos logo" width="100">
						</div>
						<div class="mt-5">2021 ATOS, All rights reserved</div>
					</div>
				</div>

			</div>
		</div>
	</footer>
</body>
</html>