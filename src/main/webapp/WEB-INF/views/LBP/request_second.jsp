<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/request_second.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <title>Training Request Options</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary opacity-90 ps-2 pe-5 py-0">
            <div class="container-fluid px-5 py-0">
              <a class="navbar-brand" href="#">
                <img src="res/atos-white-logo.png" alt="atos white logo" height="65">
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-5">
                  <li class="nav-item">
                    <a class="nav-link activ ms-3 me-5" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Menu
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">New Training Request</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Training Request Status</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">View All Trainings</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Trainings Status</a></li>
                    </ul>
                  </li>
                </ul>
                <div class="dropdown bg-white rounded-circle p-2 ms-4 me-5">
                    <a class="dropdown-toggle dropdown-noicon" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="res/user-solid.svg" class="opacity-50" alt="user solid icon" width="27" height="27" >
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
                    <h2>Learning Bussiness Partner</h2>
                </div>
            </div>
        </div>
        <div class="row request-content">
            <div class="col">
                <div class="card border-success mb-3 b-r">
                    <div class="card-body">
                        <h5 class="card-title card-h"><i class="fas fa-users"></i> ${requirement.getTrainingDescription()}</h5>  
                        <ul class="info-list">
                            <li><b class="block">Id:</b>
                                <label class="block">${requirement.getRequirementID()}</label>
                            </li>
                            <li><b class="block">User vertical:</b>
                                <label class="block">${requirement.getRequirementUser().getVerticalName()}</label>
                            </li>
                            <li><b class="block">User training area:</b>
                                <label class="block">${requirement.getTrainingArea()}</label>
                            </li>
                            <li><b class="block">User training start date:</b>
                                <label class="block">${requirement.getRequestedTrainingStartDate()}</label>
                            </li>
                            <li><b class="block">Total candidates:</b>
                                <label class="block">${requirement.getTotalCandidates()}</label>
                            </li>
                            <li><b class="block">User training time zone:</b>
                                <label class="block">${requirement.getTrainingTimeZone()}</label>
                            </li>
                            <li><b class="block">Total duration dates:</b>
                                <label class="block">${requirement.getTotalDurationDays()}</label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col">
                <h4>Choose trainer slots</h4>
                <form>
                	<input type="hidden" value="${requirement.getRequirementID()}" name="requirementId"/>
                	<div id="trainer-list">
	                	<c:forEach var="proposal" items="${proposals}">
	                    	<div class="form-check">
		                        <input class="form-check-input" type="radio" name="proposalId" id="flexRadioDefault1" value="${proposal.getProposalID()}">
		                        <label class="form-check-label" for="flexRadioDefault1">
		                            <div>
		                                <label>Name:</label>
		                                <label> ${proposal.getMember().getMemberName()}</label>
		                            </div>
		                            <div>
		                                <label>Time:</label>
		                                <label> ${proposal.getPropsedTime()}</label>
		                            </div>
		                        </label>
		                    </div>
	                    </c:forEach>
	                </div>
	               <br>
	                <button class="btn btn-success btn-labeled b-r">
	                    Submit
	                    <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
	                </button>
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
                            <img src="res/atos-blue-logo.jfif" alt="atos logo" width="100">
                        </div>
                        <div class="mt-5">
                            2021 ATOS, All rights reserved
                        </div>
                    </div>
                </div>
             
            </div>
        </div>
    </footer>
</body>
</html>