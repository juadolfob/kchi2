<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
</head>
<body>
<%@ include file="../includes/header_private.jsp"%>
	<div class="container" style="margin-top: 3rem;">
		<c:if test="${user == 'DEL'}">
			<div class="row" style="margin-top: 1.5rem;">
				<div class="col-12">
					<a type="button" href="newRequest" class="btn"><h5>
							<i class="fas fa-plus"></i> New Request
						</h5></a>
				</div>
			</div>
		</c:if>
		<div class="row" style="margin-top: 2rem;">
			<c:forEach var="requirement" items="${requirements}">
			
			<c:if test="${requirement.getRequirementState() == 1}">
			 	<c:set var = "color" scope = "session" value = "primary"/>
			 	<c:set var = "status" scope = "session" value = "New"/>
			</c:if>
			<c:if test="${requirement.getRequirementState() == 2}">
			 	<c:set var = "color" scope = "session" value = "danger"/>
			 	<c:set var = "status" scope = "session" value = "Pending"/>
			</c:if>
			<c:if test="${requirement.getRequirementState() == 3}">
			 	<c:set var = "color" scope = "session" value = "secondary"/>
			 	<c:set var = "status" scope = "session" value = "In Process"/>
			</c:if>
			<c:if test="${requirement.getRequirementState() == 4}">
			 	<c:set var = "color" scope = "session" value = "success"/>
			 	<c:set var = "status" scope = "session" value = "Completed"/>
			</c:if>
				<div class="col-4">
					<div class="card border-${color} mb-3" style="border-radius: 15px;">  
						<div class="card-body"> 
							<span class="badge bg-${color}"> ${status}</span>
							<h5 class="card-title" style="margin-top: 1.5rem; color: #424949;">
								<i class="fas fa-users" style="color: #424949;"></i>
								${requirement.getTrainingArea()} Training
							</h5>
							
							<ul style="list-style: none; padding: 0; line-height: 2.5rem;">
								<li><b style="color: #515A5A;">Id:</b> ${requirement.getRequirementID()}</li>
								
							
								<li><b style="color: #515A5A;">Name:</b> ${requirement.getRequirementUser()}</li>
								
							
								<li><b style="color: #515A5A;">Date:</b>
									${requirement.getRequestedTrainingStartDate()}</li>
							</ul>

							<c:if test="${user == 'LBP' || user == 'DEL'}">
								<c:if test="${requirement.getRequirementState() == 1}">
									<a href="sendRequest/${requirement.getRequirementID()}"
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
								<c:if test="${requirement.getRequirementState() == 2}">
									<a href="firstRequest/${requirement.getRequirementID()}"
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
								<c:if test="${requirement.getRequirementState() == 3}">
									<a href="firstRequestSendSecond/${requirement.getRequirementID()}"
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
								<c:if test="${requirement.getRequirementState() == 4}">
									<a href="requeriment/${requirement.getRequirementID()}"
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
							</c:if>
							<c:if test="${user == 'TRAINER'}">
								<c:if test="${requirement.getRequirementState() == 2}">
									<a href="newSlot/${requirement.getRequirementID()}"
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
								<c:if test="${requirement.getRequirementState() != 2}">
									<a href=""
										class="btn btn-outline-${color}" style="float: right;">View <i
										class="far fa-eye"></i></a>
								</c:if>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>

			<%-- <div class="col-4">
                <div class="card border-success mb-3" style="border-radius: 15px;">
                    <div class="card-body">
                        <span class="badge bg-success"> ● Complete</span>
                        <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: #198754;"></i> Java full-stack Training</h5>  
                        <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                            <li><b>Id:</b> 2324234</li>
                            <li><b>Name:</b> Paola Pérez Valencia</li>
                            <li><b>Date:</b> 22 / 11 / 2021</li>
                        </ul>               
                        <button class="btn btn-outline-success" style="float: right;">View <i class="far fa-eye"></i></button>
                    </div>
                </div>
            </div>--%>

			<%--  <div class="col-4">
                <div class="card border-danger mb-3" style="border-radius: 15px;">
                    <div class="card-body">
                        <span class="badge bg-danger"> ● Complete</span>
                        <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: #dc3545;"></i> Java full-stack Training</h5>  
                        <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                            <li><b>Id:</b> 2324234</li>
                            <li><b>Name:</b> Paola Pérez Valencia</li>
                            <li><b>Date:</b> 22 / 11 / 2021</li>
                        </ul>               
                        <button class="btn btn-outline-danger" style="float: right;">View <i class="far fa-eye"></i></button>
                    </div>
                </div>
            </div>--%>

		</div>
	</div>

	<%@ include file="../includes/footer.jsp"%>
</body>

</html>