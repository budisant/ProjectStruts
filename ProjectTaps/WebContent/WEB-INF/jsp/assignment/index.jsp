<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<jsp:include page="/js/import.jsp" />

<title>Assignment</title>
</head>
<body class="metro">
	<jsp:include page="/frame/header.jsp" />

	<div class="container container-taps">
		<div class="grid">
			<div class="row row-taps shadow-taps">
				<table class="table striped bordered hovered">
					<thead>
						<tr>
							<th colspan=7 class="text-center"><h3>Employee Report</h3></th>
						</tr>
						<tr>
							<th colspan=2 class="text-center">Assignment Deadline From</th>
							<th colspan=5>
								<div class="input-control text" id="datepicker-begin">
									<input type="text" class="text-center">
									<button class="btn-date"></button>
								</div>
							</th>
						</tr>
						<tr>
							<th colspan=2 class="text-center">Assignment Deadline To</th>
							<th colspan=5>
								<div class="input-control text" id="datepicker-end">
									<input type="text" class="text-center">
									<button class="btn-date"></button>
								</div>
							</th>
						</tr>
						<tr>
							<th colspan=2 class="text-center">
								<div class="input-control select">
									<select>
										<option value="">All</option>
										<option value="taskCode">Assignment Code</option>
										<option value="taskType">Assignment Type</option>
										<option value="employee">Employee Name</option>
									</select>
								</div>
							</th>
							<th colspan=5 class="text-center">
								<div class="input-control text">
									<input type="text" placeholder="Keyword of Assignment" />
									<button class="btn-search"></button>
								</div>
							</th>
						</tr>
						<tr>
							<th class="text-center">Assignment Date</th>
							<th class="text-center">Assignment Code</th>
							<th class="text-center">Assignment Type</th>
							<th class="text-center">Employee Name</th>
							<th class="text-center">Deadline</th>
							<th class="text-center">Data Created</th>
							<th class="text-center">Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="claim_temp.jsp">Claim</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="view_temp.jsp">RFA</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="correction.jsp">Correction</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="approval_viewonly.jsp">Approved</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Self Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="new_s.jsp">Draft</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Self Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="view_stemp.jsp">RFA</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Self Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="correction.jsp">Correction</a></td>
						</tr>
						<tr>
							<td class="text-center">2013-11-14</td>
							<td class="text-center">PRJ131100002</td>
							<td class="text-center">Self Assignment</td>
							<td>Hizkia Purba</td>
							<td class="text-center">2013-11-20</td>
							<td class="text-center">2013-11-14</td>
							<td class="text-center"><a href="approval_sviewonly.jsp">Approved</a></td>
						</tr>
						<tr>
							<td colspan=5 class="text-center">
								<div class="pagination">
									<ul>
										<li class="first"><a><i class="icon-first-2"></i></a></li>
										<li class="prev"><a><i class="icon-previous"></i></a></li>
										<li><a>1</a></li>
										<li><a>2</a></li>
										<li class="active"><a>3</a></li>
										<li class="spaces"><a>...</a></li>
										<li class="disabled"><a>4</a></li>
										<li><a>500</a></li>
										<li class="next"><a><i class="icon-next"></i></a></li>
										<li class="last"><a><i class="icon-last-2"></i></a></li>
									</ul>
								</div>
							</td>
							<td colspan=2 class="text-right"><a href="new_s.jsp"
								data-hint="New Self Assignment" data-hint-position="bottom"><img
									alt="" src="<%=request.getContextPath()%>/images/ADD_ASSIGNMENTT.png"></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="/frame/footer.jsp" />
</body>
</html>
