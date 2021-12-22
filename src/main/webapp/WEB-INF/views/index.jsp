<%@ include file="./includes/include.jsp"%>
<head>
<%@ include file="./includes/meta.jsp"%>
<link rel="stylesheet" href="css/content.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    formAction = function()
    {
    	console.log("hola")
    }
});
</script>
<title>Main</title>
</head>

<body>
	<main>
		<div style="margin-top: 14rem;">
			<div class="row justify-content-around">
				<div class="col-3">
					<form method="get">
						<h5 class="subtitle">Enter the name of your country</h5>
						<input type="text" id="country" name="country" value="${country}"><br>
						<p class="paragraph">And click the button below to get its
							data</p>
						<input class="btn btn-primary" type="submit">
					</form>
				</div>

				<div class="col-4">
					<p class="paragraph">${countryInfo}</p>
				</div>

			</div>
		</div>
	</main>
</body>
</html>
