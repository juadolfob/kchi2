<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/register.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<title>Sign Up</title>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-light opacity-90 ps-2 pe-5 py-0">
			<div class="container-fluid px-5 py-0">
				<a class="navbar-brand" href="#"> <img
					src="res/atos-blue-logo.jfif" alt="atos white logo" height="35">
				</a>
			</div>
		</nav>
	</header>

	<main class="container main">
		<div class="row justify-content-around">
			<div class="col-7 title-form text-secondary">
				<!-- <img src="res/user-solid.svg" width="30" height="30" class="opacity-50" alt="user icon"/>-->
				<h1>Sign Up</h1>
			</div>
			<div class="col-1"></div>
		</div>

		<form action="registerMember">
			<div class="row justify-content-around">
				<div class="col-4">

					<div class="form-group">
						<label for="user_name" class="form-label">User name</label>
						<div class="icon-input">
							<input name="user_name" type="text" required
								placeholder="Enter name" id="user_name"
								class="form-control padding-inputs redondeo" /> <i
								class="fas fa-user"></i>
						</div>
					</div>

					<div class="form-group">
						<label for="user_email" class="form-label">User email</label>
						<div class="icon-input">
							<input name="user_email" type="email" required
								placeholder="Enter email" id="user_email"
								class="form-control padding-inputs redondeo" /> <i
								class="fas fa-envelope"></i>
						</div>
					</div>

					<div class="form-group">
						<label for="user_contact" class="form-label">User Contact</label>
						<div class="icon-input">
							<input name="user_contact" type="number" required
								placeholder="Enter contact" id="user_contact"
								class="form-control padding-inputs redondeo" /> <i
								class="fas fa-phone"></i>
						</div>
					</div>

					<!--<div class="form-group">
                <label for="user_password" class="form-label">User password</label>
                <div class="icon-input">
                  <input type="password" required placeholder="Enter password" id="user_password" class="form-control padding-inputs redondeo"/>
                  <i class="fas fa-lock"></i>
                </div>
              </div>-->

				</div>
				<div class="col-4">
					<div class="form-group">
						<label for="user_city" class="form-label">User city</label>
						<div class="icon-input">
							<input name="user_city" type="text" required
								placeholder="Enter city" id="user_city"
								class="form-control padding-inputs redondeo" /> <i
								class="far fa-building"></i>
						</div>
					</div>

					<div class="form-group">
						<label for="user_role" class="form-label">User role</label>
						<!--<div class="icon-input">
                      <input type="text" required placeholder="Enter role" id="user_role" class="form-control padding-inputs redondeo"/>
                      <i class="fas fa-tag"></i>
                    </div>-->

						<select name="ldrole">
							<c:forEach items="${ldroles}" var="role">
								<option value="${role.ldRoleID}">${role.ldRoleName}</option>
							</c:forEach>
						</select>

					</div>
					<br />
					<div>
						<div class="d-inline p-2">Do you have an account?</div>
						<div class="d-inline p-2 text-primary">
							<a href="signIn">Sign in</a>
						</div>
					</div>
					<br />
					<div class="col text-center">
						<input type="submit" class="btn btn-primary btn-labeled redondeo"
							value="Sign Up" />
					</div>
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
						<div class="mt-5">2021 ATOS, All rights reserved</div>
					</div>
				</div>
				<div class="col">
					<ul class="list-unstyled">
						<li class="fw-bold mb-2"><a href="#"
							class="text-decoration-none text-muted">Community</a></li>
						<li class="mb-2"><a href="#"
							class="text-decoration-none text-muted">Home</a></li>
						<li><a href="#" class="text-decoration-none text-muted">Terms
								of service</a></li>
					</ul>
				</div>
				<div class="col">
					<ul class="list-unstyled">
						<li class="fw-bold mb-2"><a href="#"
							class="text-decoration-none text-muted">Resources</a></li>
						<li class="mb-2"><a href="#"
							class="text-decoration-none text-muted">About</a></li>
						<li><a href="#" class="text-decoration-none text-muted">Privacy
								policy</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>