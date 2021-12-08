<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet" href="css/style.css">
<title>Login Page</title>
</head>

<body>
	<%@ include file="../includes/header_gen.jsp"%>
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
									<a href="signUp">Sign Up</a>
								</div>
							</div>
							<br />
							<div class="col text-center">
								<a type="button" href="requirement-trainer" class="btn btn-primary btn-labeled redondeo">
									Sign up</a>
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
			</form>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>
