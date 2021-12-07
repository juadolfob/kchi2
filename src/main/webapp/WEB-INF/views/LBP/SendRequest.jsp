<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/request_first.css">
<title>Training Request Options</title>
</head>
<body>
	<%@ include file="../includes/header_private.jsp"%>
	<main class="container">
		<div class=" header">
			<div class="row">
				<div class="col-10">
					<h2>Request</h2>

				</div>
			</div>
		</div>
		<div class="row request-content">
			<div class="col">
				<div class="card border-primary mb-3 b-r">
					<div class="card-body">
						<h5 class="card-title card-h">
							<i class="fas fa-users"></i> Java full-stack Training
						</h5>
						<ul class="info-list">
							<li><b class="block">Id:</b> <label class="block">${requirement.getRequirementID()}</label>
							</li>
							<li><b class="block">User vertical:</b> <label class="block">${requirement.getRequirementUser()}</label>
							</li>
							<li><b class="block">User training area:</b> <label
								class="block">${requirement.getTrainingArea()}</label></li>
							<li><b class="block">User training start date:</b> <label
								class="block">${requirement.getRequestedTrainingStartDate()}</label>
							</li>
							<li><b class="block">Total candidates:</b> <label
								class="block">${requirement.getTotalCandidates()}</label></li>
							<li><b class="block">User training time zone:</b> <label
								class="block">${requirement.getTrainingTimeZone()}</label></li>
							<li><b class="block">Total duration dates:</b> <label
								class="block">${requirement.getTotalDurationDays()}</label></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="col">
					<h4>Forward to trainers</h4>
					<c:if test="${!requestSent}">
						<a href="sendRequirementService/${requirement.getRequirementID()}" class="btn btn-primary btn-labeled b-r"> Send information <span
							class="btn-label"><i class="fas fa-arrow-right"></i></span>
						</a>
					</c:if>
					<c:if test="${requestSent}">
						<a href="" class="btn btn-success btn-labeled b-r disabled"> Send information <span
							class="btn-label"><i class="fas fa-arrow-right"></i></span>
						</a>
					</c:if>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>