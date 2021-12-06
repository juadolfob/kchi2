<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/register.css">
<title>Sign Up</title>
</head>
<body>
	<%@ include file="../includes/header_public.jsp"%>

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
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>