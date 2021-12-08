<%@ include file="../includes/include.jsp"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="../css/training_information.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

    
		
<header>
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light opacity-90 ps-2 pe-5 py-0">
		<div class="container-fluid px-5 py-0">
			<a class="navbar-brand" href="/"> 
			<img src="../res/logotrm.png" alt="atos white logo"  width="80" style="padding: 17px 0px 10px 0px;">
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
    <main>
        <section class="container-card-information">
            <section class="Title">
            <br>
                <h1 style="color:#424949;">Business Executive Information</h1>
                <br>
            </section>
            <section class="Trainning-Card">
                        <section class="card-body">
                            <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: green;"></i>${requirement.getTrainingArea()}</h5>  
                            <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                                <li><b>Id:</b><br>${requirement.getRequirementID()}</li>
                                <li><b>User Vertical:</b><br> ${requirement.getRequirementUser()}</li>
                                <li><b>User training area:</b> <br> ${requirement.getTrainingArea()}</li>
                                <li><b>User training start date: </b> <br>${requirement.getRequestedTrainingStartDate()}</li>
                                <li><b>Total candidates:</b> <br>${requirement.getTotalCandidates()}</li>
                                <li><b>User training time zone:</b> <br>${requirement.getTrainingTimeZone()}</li>
                                <li><b>Total duration days:</b> <br>${requirement.getTotalDurationDays()}</li>
                                <li><b class="block">Training description:</b>
                                <label class="block">${requirement.getTrainingDescription()}</label>
                            </li>
                            </ul>               
                        </section>
                        <section class="Personel-Information-Container" style="margin-top: 1.5rem;">
                            <section>
                                <h5>Approved slot by business:</h5>
                                <h6>${requirementApprove.getTrainer().getMemberName()}</h6>
                                <p> ${requirementApprove.getConfirmedTime()}</p>
                            </section>
                            <section class="Personel-Information-card-container">
                            

                                <section class="card" name="PDlist">
                                <c:forEach items="${participandatalist}" var="PDL">
                                    <span></span>
                                    
                                    <h5 class="Employee-Name" value="${PDL.employeeID}"><i class="fas fa-user" style="color: green;"></i> ${PDL.employeeName}</h5>
                                    <p class="Employee-Email" value="${PDL.employeeID}">${PDL.email}</p>
                                </c:forEach>
                                </section>

                            </section>
                            
                        </section>
            </section>
        </section>
    </main>
    <br>
     <br>
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