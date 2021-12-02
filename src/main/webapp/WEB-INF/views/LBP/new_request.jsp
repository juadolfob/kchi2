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
    <link rel="stylesheet" href="css/new_request.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <title>New Training Request</title>
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
    <main class="container main">
      <div class="row justify-content-around">
        <div class="col-7 form-h">
          <img src="res/user-solid.svg" width="30" height="30" class="opacity-50 form-h-e" alt="user icon"/>
          <h1 class="form-h-e">New Training Request</h1>
        </div>
        <div class="col-1"></div>
      </div>
      <form action="createRequest" method="post">
        <div class="row justify-content-around">
          <div class="col-4">
            <div class="form-group">
              <label for="vertical">User vertical</label>
<!--               <div class="icon-input"> -->
<!--                 <input type="text" required placeholder="Enter vertical data" id="vertical" class="form-control rc p-l"/> -->
<!--                 <i class="fas fa-tag"></i> -->
<!--               </div> -->
				<select class="form-select" aria-label="Default select example" id="vertical" name="verticalMaster">
                   	<option>Select vertical</option>
                    <c:forEach var="vertical" items="${verticals}">
                    	<option value="${vertical.vid}">${vertical.verticalName}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
              <label for="training-area">User training area</label>
              <div class="icon-input">
                <input type="text" required placeholder="Enter training area" id="training_area" class="form-control rc p-l" name="trainingArea"/>
                <i class="fas fa-dumbbell"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="start_date">User training start date</label>
              <input type="date" required placeholder="Enter training start date" id="start_date" class="form-control rc" name="startDate"/>
            </div>
            <div class="form-group">
              <label for="candidates">Total candidates</label>
              <div class="icon-input">
                <input type="number" required placeholder="Enter candidates" id="candidates" class="form-control rc p-l" name="candidates"/>
                <i class="fas fa-tag"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="time_zone">User training time zone</label>
              <div class="icon-input">
                <input type="text" required placeholder="Enter traiing time zone" id="time_zone" class="form-control rc p-l" name="timeZone"/>
                <i class="far fa-building"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="duration">Total duration days</label>
              <div class="icon-input">
                <input type="number" required placeholder="Enter duration days" id="duration" class="form-control rc p-l" name="days"/>
                <i class="fas fa-tag"></i>
              </div>
            </div>
          </div>
          <div class="col-4">
            <div class="form-group">
              <label for="vertical">User training description</label>
              <textarea required placeholder="Enter training description" id="vertical" class="form-control rc" rows="8" name="description"></textarea>
            </div>
            <br/>
            <button class="btn btn-primary btn-labeled rc">
              Submit
              <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
            </button>
          </div>
        </div>
      </form>
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
                <div class="col">
                    <ul class="list-unstyled">
                        <li class="fw-bold mb-2"><a href="#" class="text-decoration-none text-muted">Community</a></li>
                        <li class="mb-2"><a href="#" class="text-decoration-none text-muted">Home</a></li>
                        <li><a href="#" class="text-decoration-none text-muted">Terms of service</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="list-unstyled">
                        <li class="fw-bold mb-2"><a href="#" class="text-decoration-none text-muted">Resources</a></li>
                        <li class="mb-2"><a href="#" class="text-decoration-none text-muted">About</a></li>
                        <li><a href="#" class="text-decoration-none text-muted">Privacy policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>