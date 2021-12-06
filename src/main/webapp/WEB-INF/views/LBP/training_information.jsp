<%@ include file="../includes/include.jsp"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="./css/training_information.css">

</head>
<body>

    
	<%@ include file="../includes/header_private.jsp"%>
    <main>
        <section class="container-card-information">
            <section class="Title">
            <br>
                <h1>Business Executive Information</h1>
                <br>
            </section>
            <section class="Trainning-Card">
                        <section class="card-body">
                            <h5 class="card-title" style="margin-top: 1.5rem;"><i class="fas fa-users" style="color: green;"></i> Java full-stack Training</h5>  
                            <ul style="list-style: none; padding: 0; line-height: 2.5rem;">
                                <li><b>Id:</b><br>${requirement.getRequirementID()}</li>
                                <li><b>User Vertical:</b><br> ${requirement.getRequirementUser()}</li>
                                <li><b>User training area:</b> <br> ${requirement.getTrainingArea()}</li>
                                <li><b>User training start date: </b> <br>${requirement.getTrainingArea()}</li>
                                <li><b>Total candidates:</b> <br>${requirement.getTotalCandidates()}</li>
                                <li><b>User training time zone:</b> <br>${requirement.getTrainingTimeZone()}</li>
                                <li><b>Total duration days:</b> <br>${requirement.getTotalDurationDays()}</li>
                            </ul>               
                        </section>
                        <section class="Personel-Information-Container" style="margin-top: 1.5rem;">
                            <section>
                                <h5>Approved slot by business:</h5>
                                <h6>${requirementApprove.getTrainerID()}</h6>
                                <p> ${requirementApprove.getConfirmedTime()}</p>
                            </section>
                            <section class="Personel-Information-card-container">
                            

                                <section class="card" name="PDlist">
                                <c:forEach items="${participandatalist}" var="PDL">
                                    <span></span>
                                    <h3 class="Employee-Name" value="${PDL.employeeID}"> <i class="fas fa-user" style="color: green;"></i>${PDL.employeeName} </h3>
                                    <p class="Employee-Email" value="${PDL.employeeID}">${PDL.email}</p>
                                </c:forEach>
                                </section>

                            </section>
                            
                        </section>
            </section>
        </section>
    </main>
   <%@ include file="../includes/footer.jsp"%>

</body>
</html>