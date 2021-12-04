<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/content.css" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
   
  <title>Main</title>
  <c:set var="url">${pageContext.request.requestURL}</c:set>
  
  
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light opacity-90 ps-2 pe-5 py-0">
            <div class="container-fluid px-5 py-0">
              <a class="navbar-brand" href="#">
                <img src="res/atos-blue-logo.jfif" class="img-logo" alt="atos white logo" >
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-5">
                  <li class="nav-item">
                    <a class="nav-link activ ms-3 me-5" aria-current="page" href="#">Home</a>
                  </li>
                  
                 
                </ul>
                <div class="navbar-nav    p-2 ms-4 me-5">
                  <li class="nav-item">
                    <a  class="nav-link activ ms-3 me-5" aria-current="page" href="#"><strong >About us</strong></a>
                  </li>
                  <li class="nav-item">
                    <a  class="nav-link activ ms-3 me-5" aria-current="page" href="#"><strong>Help</strong> </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link activ ms-3 me-5" aria-current="page" href="signIn"><strong style="color: #2A75E6;">Sign In</strong></a>
                  </li>
                    
                </div>
              </div>
            </div>
          </nav>
    </header>

<main class="">



      <div style="margin-top: 4rem;">
   
      <div class="row justify-content-around">
        <div class="col-4">
          <div style="margin-top: 7rem;">
            <h5 class="subtitle">Start Learning</h5>
            <h1 class="title">Thinking Forward</h1>
            <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            <a type="button" href="signIn" class="btn btn-outline-primary">Get Started Delivery</a>
             <a type="button" href="signIn" class="btn btn-primary">Get Started L&D</a>
          </div>
        </div>
        <div class="col-5">
            <div style="margin-top: 5rem;">
          <figure class="figure">
            <img src="res/Recurso1.png" style="width: 30rem;" class="figure-img img-fluid rounded" alt="...">
        
          </figure>



        </div>

          </div>
        </div>
      </div>

      <div class="content-about">
      <div style="margin-top: 10rem; padding-bottom: 6rem; padding-top: 2rem;" >
        <div class="row justify-content-around">
            <div class="col-4">
              <div style="margin-top: 5rem;">
                <figure class="figure">
                     <img src="res/Recurso2.png" style="width: 20rem;"  alt="...">
                </figure>
              </div>
            </div>
          <div class="col-4">
            <div style="margin-top: 9rem;">
              <h1 class="titletwo">About this project</h1>
              <p class="paragraphtwo">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
          </div>
          </div>
      </div>

      </div>

      <div style="margin-top: 5rem; margin-bottom: 7rem;" class="content-inf">
   
        <div class="row justify-content-around">
            
            <div class="col-4">
              <div style="margin-top: 5rem; " >
                
                    <h3 class="titlethree">Schedule</h3>
                    <i class="fas fa-calendar-week fa-3x"></i>
                      
              </div>
            </div>
            <div class="col-4">
                <div style="margin-top: 5rem;" class="content-inf">
                  
                    <h3 class="titlethree">Trainings</h3>
                    <i class="fas fa-users fa-3x"></i>
                
                </div>
              </div>
          <div class="col-4">
            <div style="margin-top: 5rem;" class="content-inf">
              
                
                    <h3 class="titlethree">Easy to use</h3>
                    <i class="fas fa-hand-paper fa-3x"></i>
                 
            </div>
          </div>
          
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
