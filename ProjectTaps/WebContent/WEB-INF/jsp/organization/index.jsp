<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/tld/struts-nested.tld" prefix="bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<jsp:include page="/js/import.jsp" />

<title>Organization</title>
</head>

<body class="metro">
	<jsp:include page="/frame/header.jsp" />

	<div class="container container-taps">
		<div class="grid">
			<div class="row row-taps shadow-taps">
				<html:form action="/organization" method="post">
					<html:hidden property="task" styleId="task" name="organizationForm" />
					<table class="table striped bordered hovered">
						<thead>
							<tr>
								<th colspan=6 class="text-center">Organization</th>
							</tr>
							<tr>
								<th class="text-center" colspan=1>
									<div class="input-control select">
										<select>
											<option value="">All</option>
											<option value="organizationCode">Organization Code</option>
											<option value="organizationName">Organization Name</option>
											<option value="headName">Head Name</option>
										</select>
									</div>
								</th>
								<th class="text-center" colspan=5>
									<div class="input-control text">
										<input type="text" placeholder="Keyword of Organization" />
										<button class="btn-search"></button>
									</div>
								</th>
							</tr>
							<tr>
								<th class="text-center">Organization Code</th>
								<th class="text-center">Organization Name</th>
								<th class="text-center">Head Name</th>
								<th class="text-center">Member</th>
								<th class="text-center">Edit</th>
								<th class="text-center">Delete</th>
							</tr>
						</thead>
						<tbody>
							<logic:notEmpty name="organizationForm"
								property="listOrganizations">
								<logic:iterate id="organization" name="organizationForm"
									property="listOrganizations">
									<tr>
										<td><bean:write name="organization"
												property="organizationCode" /></td>
										<td><bean:write name="organization"
												property="organizationName" /></td>
										<td><bean:write name="organization" property="headName" /></td>
										<td class="text-center"><a href="structure.jsp"
											data-hint="Member Organization" data-hint-position="bottom"><img
												alt="" src="<%=request.getContextPath()%>/images/MEMBER.png"></a></td>
										<td class="text-center"><a href="new.jsp"
											data-hint="Edit Organization" data-hint-position="bottom"><img
												alt="" src="<%=request.getContextPath()%>/images/EDIT.png"></a></td>
										<td class="text-center"><a href="javascript:confDel()"
											data-hint="Delete Organization" data-hint-position="bottom"><img
												alt="" src="<%=request.getContextPath()%>/images/DELETE.png"></a></td>
									</tr>
								</logic:iterate>
							</logic:notEmpty>
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
											<li class="disabled"><a>Page <bean:write
														name="organizationForm" property="page" /> of <bean:write
														name="organizationForm" property="maxpage" /></a></li>
											<li class="disabled"><a>Total Record <bean:write
														name="organizationForm" property="countRecord" /></a></li>
										</ul>
									</div>
								</td>
								<td class="text-center"><a href="new.jsp"
									data-hint="Add Organization" data-hint-position="bottom"><img
										alt=""
										src="<%=request.getContextPath()%>/images/ADD_ORGANIZATIONS.png"></a></td>
							</tr>
						</tbody>
					</table>
				</html:form>
			</div>
		</div>
	</div>
	<jsp:include page="/frame/footer.jsp" />
</html>