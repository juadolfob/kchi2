<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/content.css" />

 
<title>Main</title>
<!-- <c:set var="url">${pageContext.request.requestURL}</c:set> -->
</head>

<body>
<%@ include file="../includes/header_public.jsp"%>


	<main class="">



		<div style="margin-top: 4rem;"  >

			<div class="row justify-content-around">
				<div class="col-4">
					<div style="margin-top: 7rem;">
						<h5 class="subtitle"> Training for All</h5>
						<h1 class="title">Get Started</h1>
						<p class="paragraph">TMS exists to help the
 L&D team to communicate better with the business requirements. A proper and 
effective communication channel is the main solution TMS offers</p>
					<a type="button" href="signInDelivery" class="btn btn-outline-primary">Get Started Delivery</a> 
						<a type="button" href="signInLD" class="btn btn-primary">Get Started L&D</a>
					</div>
				</div>
				<div class="col-5">
					<div style="margin-top: 5rem;">
						<figure class="figure">
							<img src="res/Recurso1.png" style="width: 30rem;"
								class="figure-img img-fluid rounded" alt="...">

						</figure>



					</div>

				</div>
			</div>
		</div>

		<div class="content-about">
			<div
				style="margin-top: 10rem; padding-bottom: 6rem; padding-top: 2rem;">
				<div class="row justify-content-around">
					<div class="col-4">
						<div style="margin-top: 5rem;">
							<figure class="figure">
								<img src="res/Recurso2.png" style="width: 20rem;" alt="...">
							</figure>
						</div>
					</div>
					<div class="col-4">
						<div style="margin-top: 9rem;"  >
							<h1 class="titletwo">About this project</h1>
							<p class="paragraphtwo">TMS helps the delivery manager in creating and tracking training 
requirements. TMS allows the LBP to see and process all requests.
</p>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div style="margin-top: 5rem; margin-bottom: 7rem;"
			class="content-inf">

			<div class="row justify-content-around">

				<div class="col-4">
					<div style="margin-top: 5rem;">

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

	<%@ include file="../includes/footer.jsp"%>

</body>
</html>
