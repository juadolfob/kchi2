<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="../css/request_first.css">
<title>Training Request Options</title>
</head>
<body>
   <%@ include file="../includes/header_private.jsp"%>
    <main class="container">
        <div class=" header">
            <div class="row">
                <div class="col-10">
                <br>
                    <h2>Learning Bussiness Partner</h2>
                    <br>
                  
                </div>
            </div>
        </div>
        <div class="row request-content">
            <div class="col">
                <div class="card border-primary mb-3 b-r">
                    <div class="card-body">
                        <h5 class="card-title card-h"><i class="fas fa-users"></i> Java full-stack Training</h5>  
                        <ul class="info-list">
                            <li><b class="block">Id:</b>
                                <label class="block">${requirement.getRequirementID()}</label>
                            </li>
                            <li><b class="block">User vertical:</b>
                                <label class="block">${requirement.getRequirementUser()}</label>
                            </li>
                            <li><b class="block">User training area:</b>
                                <label class="block">${requirement.getTrainingArea()}</label>
                            </li>
                            <li><b class="block">User training start date:</b>
                                <label class="block">${requirement.getTrainingArea()}</label>
                            </li>
                            <li><b class="block">Total candidates:</b>
                                <label class="block">${requirement.getTotalCandidates()}</label>
                            </li>
                            <li><b class="block">User training time zone:</b>
                                <label class="block">${requirement.getTrainingTimeZone()}</label>
                            </li>
                            <li><b class="block">Total duration dates:</b>
                                <label class="block">${requirement.getTotalDurationDays()}</label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col">
                <h4>Choose trainer slots</h4>
                <div id="trainer-list">
                    <div class="check-block">
                        <div class="in-line check-d">
                            <input type="checkbox" class="form-check-input"/>
                        </div>
                        <div class="in-line trainer-data">
                            <div>
                                <label>Name:</label>
                                <label>Juan Carlos Romos Mario</label>
                            </div>
                            <div>
                                <label>Time:</label>
                                <label>10:00 am - 02:00 pm</label>
                            </div>
                        </div>
                    </div>
                    <div class="check-block">
                        <div class="in-line check-d">
                            <input type="checkbox" class="form-check-input"/>
                        </div>
                        <div class="in-line trainer-data">
                            <div>
                                <label>Name:</label>
                                <label>Perez Arriaga</label>
                            </div>
                            <div>
                                <label>Time:</label>
                                <label>10:00 am - 02:00 pm</label>
                            </div>
                        </div>
                    </div>
                    <div class="check-block">
                        <div class="in-line check-d">
                            <input type="checkbox" class="form-check-input"/>
                        </div>
                        <div class="in-line trainer-data">
                            <div>
                                <label>Name:</label>
                                <label>Mariana Garcia</label>
                            </div>
                            <div>
                                <label>Time:</label>
                                <label>10:00 am - 02:00 pm</label>
                            </div>
                        </div>
                    </div>
                    <div class="check-block">
                        <div class="in-line check-d">
                            <input type="checkbox" class="form-check-input"/>
                        </div>
                        <div class="in-line trainer-data">
                            <div>
                                <label>Name:</label>
                                <label>Daniel Lopez</label>
                            </div>
                            <div>
                                <label>Time:</label>
                                <label>10:00 am - 02:00 pm</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group comment-block">
                    <label for="vertical">Comment</label>
                    <textarea required placeholder="Enter comment" id="vertical" class="form-control b-r" rows="4"></textarea>
                </div>
                <button class="btn btn-primary btn-labeled b-r">
                    Submit
                    <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
                </button>
            </div>
        </div>
    </main>
 <%@ include file="../includes/footer.jsp"%>
</body>
</html>