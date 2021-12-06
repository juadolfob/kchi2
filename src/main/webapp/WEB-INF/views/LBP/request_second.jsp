<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/request_second.css">
<title>Training Request Options</title>
</head>
<body>
	<%@ include file="../includes/header_private.jsp"%>
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
						<h5 class="card-title card-h">
							<i class="fas fa-users"></i> Java full-stack Training
						</h5>
						<ul class="info-list">
							<li><b class="block">Id:</b> <label class="block">26105671</label>
							</li>
							<li><b class="block">User vertical:</b> <label class="block">Mahesh
									Rajput</label></li>
							<li><b class="block">User training area:</b> <label
								class="block">Java Full-Stack</label></li>
							<li><b class="block">User training start date:</b> <label
								class="block">22 / 11 / 2021</label></li>
							<li><b class="block">Total candidates:</b> <label
								class="block">30</label></li>
							<li><b class="block">User training time zone:</b> <label
								class="block">(GMT + 5:30)</label></li>
							<li><b class="block">Total duration dates:</b> <label
								class="block">60 days</label></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col">
				<h4>Choose trainer slots</h4>
				<div id="trainer-list">
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1">
							<div>
								<label>Name:</label> <label> Juan Carlos Romos Mario</label>
							</div>
							<div>
								<label>Time:</label> <label> 10:00 am - 02:00 pm</label>
							</div>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2" checked> <label
							class="form-check-label" for="flexRadioDefault2">
							<div>
								<label>Name:</label> <label> Perez Arriaga</label>
							</div>
							<div>
								<label>Time:</label> <label> 10:00 am - 02:00 pm</label>
							</div>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1">
							<div>
								<label>Name:</label> <label> Mariana Garcia</label>
							</div>
							<div>
								<label>Time:</label> <label> 10:00 am - 02:00 pm</label>
							</div>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2" checked> <label
							class="form-check-label" for="flexRadioDefault2">
							<div>
								<label>Name:</label> <label> Daniel Lopez</label>
							</div>
							<div>
								<label>Time:</label> <label> 10:00 am - 02:00 pm</label>
							</div>
						</label>
					</div>
				</div>
				<br>
				<button class="btn btn-success btn-labeled b-r">
					Submit <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
				</button>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>