<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="../css/request_second.css">
<link rel="stylesheet" href="../css/style.css">
<title>Training Request Options</title>
</head>
<body>
	<header>
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-primary opacity-90 ps-2 pe-5 py-0">
		<div class="container-fluid px-5 py-0">
			<a class="navbar-brand" href="/"> 
			<img src="../res/logotrmw.png" alt="atos white logo"  width="80" style="padding: 17px 0px 10px 0px;">
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
							<li><a class="dropdown-item" href="#">View All Trainings</a></li>
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
					<h2>Learning Bussiness Partner</h2>
					<br>
				</div>
			</div>
		</div>
		<div class="row request-content">
			<div class="col">
				<div class="card border-success mb-3 b-r">
					<div class="card-body">
						<h5 class="card-title card-h">
							<i class="fas fa-users"></i> Java full-stack Training
						</h5>
						<ul class="info-list">
							<li><b class="block">Id:</b> <label class="block">${requirement.getRequirementID()}</label>
							</li>
							<li><b class="block">User vertical:</b> <label class="block">${requirement.getRequirementUser()}</label></li>
							<li><b class="block">User training area:</b><label
								class="block">${requirement.getTrainingArea()}</label></li>
							<li><b class="block">User training start date:</b> <label
								class="block">${requirement.getTrainingArea()}</label></li>
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
				<h4>Create New Slot</h4>

				<form action="../registerSlot">
					<input type="hidden" value="${requirement.getRequirementID()}" name="requirementId"/>
					<div class="form-group">
						<label for="slot_date" class="form-label">Proposed Date</label>
						<div class="icon-input">
							<input name="slot_date" type="date" required
								placeholder="Enter date" id="slot_date"
								class="form-control padding-inputs redondeo" />
						</div>
					</div>
					<div class="form-group">
						<label for="slot_time" class="form-label">Proposed Time</label> <select
							class="form-select" name="slot_time">
							<option value="07:00 AM">07:00 AM</option>
							<option value="08:00 AM">08:00 AM</option>
							<option value="09:00 AM">09:00 AM</option>
							<option value="10:00 AM">10:00 AM</option>
							<option value="11:00 AM">11:00 AM</option>
							<option value="12:00 PM">12:00 PM</option>
							<option value="01:00 PM">01:00 PM</option>
							<option value="02:00 PM">02:00 PM</option>
							<option value="03:00 PM">03:00 PM</option>
							<option value="04:00 PM">04:00 PM</option>
							<option value="05:00 PM">05:00 PM</option>
							<option value="06:00 PM">06:00 PM</option>
							<option value="07:00 PM">07:00 PM</option>
							<option value="08:00 PM">08:00 PM</option>
						</select>
					</div>
					<div class="form-group">
						<label for="slot_duration" class="form-label">Proposed
							Duration</label>
						<div class="icon-input">
							<input name="slot_duration" type="number" required
								placeholder="Enter duration" id="slot_duration"
								class="form-control padding-inputs redondeo" />
						</div>
					</div>
					<div class="form-group comment-block">
						<label for="vertical">Comment</label>
						<textarea required placeholder="Enter comment" id="vertical"
							class="form-control b-r" rows="4"></textarea>
					</div>
					<input type="submit" class="btn btn-success btn-labeled"
						value="Submit" />
				</form>
				<form action="../resultMembers">
				<input type="submit" class="btn btn-success btn-labeled"
				value="Decline Training" />
				</form>
			</div>
		</div>
	</main>
	
<footer class="bg-light w-100 mt-auto mx-0">
	<div class="container">
		<div class="row my-5">
			<div class="col-5">
				<div class="d-flex flex-column">
					<div class="mb-5">
						<img src="../res/logotrm.png" alt="atos logo" width="100">
					</div>
					<div class="mt-2" >2021 ATOS, All rights reserved</div>
					
				</div>
			</div>

		</div>
	</div>
</footer>
</body>
</html>