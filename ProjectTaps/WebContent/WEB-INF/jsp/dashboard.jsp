<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/metro-bootstrap.css">
<link rel="stylesheet" href="css/metro-bootstrap-responsive.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery/jquery.min.js"></script>
<script src="js/jquery/jquery.widget.min.js"></script>
<script src="js/metro/metro.min.js"></script>
<title>Taps</title>
</head>
<body class="metro">
	<jsp:include page="frame/header.jsp" />
	<div class="grid">
		<div class="row">
			<div class="span4" id="menu">
				<jsp:include page="frame/menu.jsp" />
			</div>


			<div class="span13">
				<div class="content-taps">
					<div class="span6">
						<h2 class="fg-white">To-do List</h2>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Approval Assignment" data-hint-position="left"><img
									alt="" src="images/APPROVAL_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Approval Self Assignment" data-hint-position="left"><img
									alt="" src="images/APPROVAL_NEW_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Claim Assignment" data-hint-position="left"><img
									alt="" src="images/CLAIM_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Claim Self Assignment" data-hint-position="left"><img
									alt="" src="images/CLAIM_NEW_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Correction Assignment" data-hint-position="left"><img
									alt="" src="images/CORRECTION_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
						<div class="tile bg-cyan">
							<div class="tile-content icon">
								<a href="#" data-hint="Correction Self Assignment" data-hint-position="left"><img
									alt="" src="images/CORRECTION_NEW_ASSIGNMENT.png"></a>
							</div>
							<div class="brand">
								<div class="badge bg-red">10</div>
							</div>
						</div>
					</div>

					<div class="span6">
						<h2 class="fg-white">Employee Ranking</h2>
						<table class="table striped bordered hovered">
							<thead>
								<tr>
									<td>#</td>
									<td>Initial</td>
									<td>Name</td>
									<td>Star</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>2</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>3</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>4</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>5</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>6</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>7</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>8</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
								<tr>
									<td>9</td>
									<td>DRS</td>
									<td>Kamashwanee</td>
									<td>77</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- end div content -->
			</div>
		</div>
	</div>
	<jsp:include page="frame/footer.jsp" />
</body>
</html>