
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

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
                        <h5 class="card-title card-h"><i class="fas fa-users"></i> ${requirement.getTrainingDescription()}</h5>  
                        <ul class="info-list">
                            <li><b class="block">Id:</b>
                                <label class="block">${requirement.getRequirementID()}</label>
                            </li>
                            <li><b class="block">User vertical:</b>
                                <label class="block">${requirement.getRequirementUser().getVerticalName()}</label>
                            </li>
                            <li><b class="block">User training area:</b>
                                <label class="block">${requirement.getTrainingArea()}</label>
                            </li>
                            <li><b class="block">User training start date:</b>
                                <label class="block">${requirement.getRequestedTrainingStartDate()}</label>
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
                <form>
                	<input type="hidden" value="${requirement.getRequirementID()}" name="requirementId"/>
                	<div id="trainer-list">
	                	<c:forEach var="proposal" items="${proposals}">
	                    	<div class="form-check">
		                        <input class="form-check-input" type="radio" name="proposalId" id="flexRadioDefault1" value="${proposal.getProposalID()}">
		                        <label class="form-check-label" for="flexRadioDefault1">
		                            <div>
		                                <label>Name:</label>
		                                <label> ${proposal.getMember().getMemberName()}</label>
		                            </div>
		                            <div>
		                                <label>Time:</label>
		                                <label> ${proposal.getPropsedTime()}</label>
		                            </div>
		                        </label>
		                    </div>
	                    </c:forEach>
	                </div>
	               <br>
	                <button class="btn btn-success btn-labeled b-r">
	                    Submit
	                    <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
	                </button>
                </form>
            </div>
        </div>
    </main>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>