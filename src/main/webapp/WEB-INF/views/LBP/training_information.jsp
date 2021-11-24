<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./Header&Footer/css/training_information.css">
    <link rel="stylesheet" href="./css/training_information.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
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
                </ul>
                <div class="dropdown bg-white rounded-circle p-2 ms-4 me-5">
                    <a class="dropdown-toggle dropdown-noicon" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
    <main>
        <section class="container-card-information">
            <section class="Title">
                <h1>Business Executive</h1>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                     when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                     It has survived not only five centuries, but also the leap into electronic typesetting, remaining 
                     essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
                     Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including 
                     versions of Lorem Ipsum.
                </p>
            </section>
            <section class="Trainning-Card">
                        <section class="card-body">
                            <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: green;"></i> Java full-stack Training</h5>  
                            <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                                <li><b>Id:</b><br> 2324234</li>
                                <li><b>User Vertical:</b><br> Brayan Segovia Carnero</li>
                                <li><b>User training area:</b> <br> Full-Stack</li>
                                <li><b>User training start date: </b> <br>22/11/21</li>
                                <li><b>Total candidates:</b> <br>30</li>
                                <li><b>User training time zone:</b> <br>(GMT+5:30)</li>
                                <li><b>Total duration days:</b> <br>60 days</li>
                            </ul>               
                        </section>
                        <section class="Personel-Information-Container" style="margin-top: 1.5rem;">
                            <section>
                                <h5>Approved slot by business:</h5>
                                <h6>Brayan Segovia</h3>
                                <p>7:00 am - 11:30 pm</p>
                            </section>
                            <section class="Personel-Information-card-container">
                                <section class="card">
                                    <span></span>
                                    <h6 class="Employee-Name"> <i class="fas fa-user" style="color: green;"></i> Carlos Ramos Mario</h3>
                                    <p class="Employee-Email">juan.carlos@atos.net</p>
                                </section>
                                <section class="card">
                                    <span></span>
                                    <h6 class="Employee-Name"> <i class="fas fa-user" style="color: green;"></i> Carlos Ramos Mario</h3>
                                    <p class="Employee-Email">juan.carlos@atos.net</p>
                                </section>
                                <section class="card">
                                    <span></span>
                                    <h6 class="Employee-Name"> <i class="fas fa-user" style="color: green;"></i> Carlos Ramos Mario</h3>
                                    <p class="Employee-Email">juan.carlos@atos.net</p>
                                </section>
                                <section class="card">
                                    <span></span>
                                    <h6 class="Employee-Name"> <i class="fas fa-user" style="color: green;"></i> Carlos Ramos Mario</h3>
                                    <p class="Employee-Email">juan.carlos@atos.net</p>
                                </section>
                            </section>
                            
                        </section>
            </section>
        </section>
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