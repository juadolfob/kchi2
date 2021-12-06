<%@ include file="../includes/include.jsp"%>
<head>
<%@ include file="../includes/meta.jsp"%>
<link rel="stylesheet" href="css/new_request.css">
<title>New Training Request</title>
</head>
<body>

   <%@ include file="../includes/header_private.jsp"%>
    <main class="container main">
      <div class="row justify-content-around">
        <div class="col-7 form-h">
          <img src="res/user-solid.svg" width="30" height="30" class="opacity-50 form-h-e" alt="user icon"/>
          <h1 class="form-h-e">New Training Request</h1>
        </div>
        <div class="col-1"></div>
      </div>
      <form action="createRequest" method="post">
        <div class="row justify-content-around">
          <div class="col-4">
            <div class="form-group">
              <label for="vertical">User vertical</label>
<!--               <div class="icon-input"> -->
<!--                 <input type="text" required placeholder="Enter vertical data" id="vertical" class="form-control rc p-l"/> -->
<!--                 <i class="fas fa-tag"></i> -->
<!--               </div> -->
				<select class="form-select" aria-label="Default select example" id="vertical" name="verticalMaster">
                   	<option>Select vertical</option>
                    <c:forEach var="vertical" items="${verticals}">
                    	<option value="${vertical.vid}">${vertical.verticalName}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
              <label for="training-area">User training area</label>
              <div class="icon-input">
                <input type="text" required placeholder="Enter training area" id="training_area" class="form-control rc p-l" name="trainingArea"/>
                <i class="fas fa-dumbbell"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="start_date">User training start date</label>
              <input type="date" required placeholder="Enter training start date" id="start_date" class="form-control rc" name="startDate"/>
            </div>
            <div class="form-group">
              <label for="candidates">Total candidates</label>
              <div class="icon-input">
                <input type="number" required placeholder="Enter candidates" id="candidates" class="form-control rc p-l" name="candidates"/>
                <i class="fas fa-tag"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="time_zone">User training time zone</label>
              <div class="icon-input">
                <input type="text" required placeholder="Enter traiing time zone" id="time_zone" class="form-control rc p-l" name="timeZone"/>
                <i class="far fa-building"></i>
              </div>
            </div>
            <div class="form-group">
              <label for="duration">Total duration days</label>
              <div class="icon-input">
                <input type="number" required placeholder="Enter duration days" id="duration" class="form-control rc p-l" name="days"/>
                <i class="fas fa-tag"></i>
              </div>
            </div>
          </div>
          <div class="col-4">
            <div class="form-group">
              <label for="vertical">User training description</label>
              <textarea required placeholder="Enter training description" id="vertical" class="form-control rc" rows="8" name="description"></textarea>
            </div>
            <br/>
            <button class="btn btn-primary btn-labeled rc">
              Submit
              <span class="btn-label"><i class="fas fa-arrow-right"></i></span>
            </button>
          </div>
        </div>
      </form>
    </main>
  <%@ include file="../includes/footer.jsp"%>

</body>
</html>