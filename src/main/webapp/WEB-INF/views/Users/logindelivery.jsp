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
	crossorigin="anonymous"></script>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<title>Login Page</title>
</head>

<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-light opacity-90 ps-2 pe-5 py-0">
			<div class="container-fluid px-5 py-0">
				<a class="navbar-brand" href="#"> <img
					src="res/atos-blue-logo.jfif" alt="atos white logo" height="30">
				</a>
			</div>
		</nav>
	</header>

	<main class="container main">
		<div style="margin-top: 7rem;">
			<form>
				<div class="row justify-content-around">
					<div class="col-4">
						<div style="margin-top: 7rem;">
							<div class="col-7 title-form text-secondary">
								<img src="res/user-solid.svg" width="30" height="30"
									class="opacity-50" alt="user icon" />
								<h1>Sign In Delivery</h1>
							</div>



							<div class="form-group">
								<label for="user_email" class="form-label">User email</label>
								<div class="icon-input">
									<input type="email" required placeholder="Enter email"
										id="user_email" class="form-control padding-inputs redondeo" />
									<i class="fas fa-envelope"></i>
								</div>
							</div>


							<div class="form-group">
								<label for="user_password" class="form-label">User
									password</label>
								<div class="icon-input">
									<input type="password" required placeholder="Enter password"
										id="user_password"
										class="form-control padding-inputs redondeo" /> <i
										class="fas fa-lock"></i>
								</div>
							</div>


							<div class="form-group">
								<label for="user_role" class="form-label">User Vertical</label>
								<br>
								<!--<div class="icon-input">
              <input type="text" required placeholder="Enter role" id="user_role" class="form-control padding-inputs redondeo"/>
              <i class="fas fa-tag"></i>
            </div>-->
								<div class="icon-input">
									<select class="form-control padding-inputs redondeo"
										name="ldrole">
										<c:forEach items="${ldroles}" var="role">
											<option value="${role.ldRoleID}">${role.ldRoleName}</option>
										</c:forEach>
									</select> <i class="fas fa-user-friends"></i>
								</div>
							</div>






							<br />
							<div style="text-align: center;">
								<div class="d-inline p-2">Don't have an acount?</div>
								<div class="d-inline p-2 text-primary">
									<a href="">Sign in</a>
								</div>
							</div>
							<br />
							<div class="col text-center">
								<button class="btn btn-primary btn-labeled redondeo">
									Sign up</button>
							</div>
						</div>
					</div>
					<div class="col-4">

						<figure class="figure">
							<img src="res/imgsignin.png" style="width: 90rem;"
								class="figure-img img-fluid rounded" alt="...">

						</figure>





					</div>
				</div>
		</div>
		</form>
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
						<div class="mt-5">2021 ATOS, All rights reserved</div>
					</div>
				</div>

			</div>
		</div>
	</footer>

</body>
</html>
