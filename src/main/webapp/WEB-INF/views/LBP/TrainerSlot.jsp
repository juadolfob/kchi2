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
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book.</p>
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
							<li><b class="block">Id:</b> <label class="block">${requirement.getRequirementID()}</label>
							</li>
							<li><b class="block">User vertical:</b> <label class="block">${requirement.getRequirementUser()}</label></li>
							<li><b class="block">User training area:</b><label
								class="block">${requirement.getTrainingArea()}</label></li>
							<li><b class="block">User training start date:</b> <label
								class="block">${requirement.getTrainingArea()}</label></li>
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
				<h4>Create New Slot</h4>

				<form action="registerSlot">
					<input type="hidden" value="${requirement.getRequirementID()}" name="requirementId"/>
					<div class="form-group">
						<label for="slot_date" class="form-label">Proposed Date</label>
						<div class="icon-input">
							<input name="slot_date" type="date" required
								placeholder="Enter date" id="slot_date"
								class="form-control padding-inputs redondeo" />
						</div>
					</div>
					<div class="form-group">
						<label for="slot_time" class="form-label">Proposed Time</label> <select
							class="form-select" name="slot_time">
							<option value="07:00 AM">07:00 AM</option>
							<option value="08:00 AM">08:00 AM</option>
							<option value="09:00 AM">09:00 AM</option>
							<option value="10:00 AM">10:00 AM</option>
							<option value="11:00 AM">11:00 AM</option>
							<option value="12:00 PM">12:00 PM</option>
							<option value="01:00 PM">01:00 PM</option>
							<option value="02:00 PM">02:00 PM</option>
							<option value="03:00 PM">03:00 PM</option>
							<option value="04:00 PM">04:00 PM</option>
							<option value="05:00 PM">05:00 PM</option>
							<option value="06:00 PM">06:00 PM</option>
							<option value="07:00 PM">07:00 PM</option>
							<option value="08:00 PM">08:00 PM</option>
						</select>
					</div>
					<div class="form-group">
						<label for="slot_duration" class="form-label">Proposed
							Duration</label>
						<div class="icon-input">
							<input name="slot_duration" type="number" required
								placeholder="Enter duration" id="slot_duration"
								class="form-control padding-inputs redondeo" />
						</div>
					</div>
					<div class="form-group comment-block">
						<label for="vertical">Comment</label>
						<textarea required placeholder="Enter comment" id="vertical"
							class="form-control b-r" rows="4"></textarea>
					</div>
					<input type="submit" class="btn btn-success btn-labeled"
						value="Submit" />
				</form>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>