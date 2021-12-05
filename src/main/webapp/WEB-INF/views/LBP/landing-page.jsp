<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <c:set var="url">${pageContext.request.requestURL}</c:set>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    
    <script src="https://kit.fontawesome.com/e969e51776.js" crossorigin="anonymous"></script>
    <title>Header&Footer</title>
</head>
<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary opacity-90 ps-2 pe-5 py-0">
            <div class="container-fluid px-5 py-0">
                <a class="navbar-brand" href="#">
                    <img src="res/atos-white-logo.png" alt="atos white logo" height="65">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Menu
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">New Training Request</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Training Request Status</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">View All Trainings</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Trainings Status</a></li>
                            </ul>
                        </li>
                    </ul>
                  
                    <div class="dropdown bg-white rounded-circle p-2 ms-4 me-5">
                        <a class="dropdown-toggle dropdown-noicon" href="#" id="userDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="res/user-solid.svg" class="opacity-50" alt="user solid icon" width="27" height="27">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="#">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    
    <div class="container" style="margin-top: 3rem;">
        
          <div class="row" style="margin-top: 1.5rem;">
            <div class="col-12">
                <a type="button" href="#" class="btn"><h5> <i class="fas fa-plus"></i>
                    New Request</h5></a>
            </div>
        </div>
        <div class="row" style="margin-top: 2rem;">
        
        <c:forEach var="requirement" items="${requirements}">
            <div class="col-4">
                <div class="card border-primary mb-3" style="border-radius: 15px;">
                    <div class="card-body">
                        <span class="badge bg-primary"> ● Pending</span>
                        <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: #0d6efd;"></i> ${requirement.getTrainingArea()} Training</h5>  
                        <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                            <li><b>Id:</b> ${requirement.getRequirementID()}</li>
                            <li><b>Name:</b> ${requirement.getRequirementUser()}</li>
                            <li><b>Date:</b> ${requirement.getRequestedTrainingStartDate()}</li>
                        </ul>               
                       
                    	<a href="requeriment/${requirement.getRequirementID()}" class="btn btn-outline-primary" style="float: right;">View <i class="far fa-eye"></i></a>
                    </div>
                </div>
            </div>
            </c:forEach>

            <%-- <div class="col-4">
                <div class="card border-success mb-3" style="border-radius: 15px;">
                    <div class="card-body">
                        <span class="badge bg-success"> ● Complete</span>
                        <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: #198754;"></i> Java full-stack Training</h5>  
                        <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                            <li><b>Id:</b> 2324234</li>
                            <li><b>Name:</b> Paola Pérez Valencia</li>
                            <li><b>Date:</b> 22 / 11 / 2021</li>
                        </ul>               
                        <button class="btn btn-outline-success" style="float: right;">View <i class="far fa-eye"></i></button>
                    </div>
                </div>
            </div>--%>

          <%--  <div class="col-4">
                <div class="card border-danger mb-3" style="border-radius: 15px;">
                    <div class="card-body">
                        <span class="badge bg-danger"> ● Complete</span>
                        <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: #dc3545;"></i> Java full-stack Training</h5>  
                        <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                            <li><b>Id:</b> 2324234</li>
                            <li><b>Name:</b> Paola Pérez Valencia</li>
                            <li><b>Date:</b> 22 / 11 / 2021</li>
                        </ul>               
                        <button class="btn btn-outline-danger" style="float: right;">View <i class="far fa-eye"></i></button>
                    </div>
                </div>
            </div>--%>
            
        </div>
    </div>

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